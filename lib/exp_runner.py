
import logging
import json

import experiment
import progplatform
from helpers import *

def run_experiment(exp_id, progplat = None, board_type = None, branchname = None, conn_mode = None, force_cleanup = None, force_results = False, no_cleanup = False, printeval = False, ignoremismatch = False, write_results = True):
	logging.info(f"{(exp_id, progplat, board_type, branchname, conn_mode, force_cleanup, force_results, no_cleanup, printeval, ignoremismatch, write_results)}")
	if progplat == None:
		progplat = progplatform.get_embexp_ProgPlatform(None)

	exp = experiment.Experiment(exp_id)

	# TODO: change to take rpi3 or rpi4 as a parameter
	assert exp.get_exp_arch() == "arm8"

	if exp.get_exp_arch() == "arm8":
		if board_type == None:
			board_type = "rpi4"
			assert board_type == "rpi4"
		elif board_type == 'rpi3':
			board_type = "rpi3"
			assert board_type == "rpi3"
		else: 
			board_type = "rpi4"
			assert board_type == "rpi4"


	# can only handle exps1 and exps2
	exp_type = exp.get_exp_type()
	assert exp_type == "exps2" or exp_type == "exps1"

	# make sure that progplatform is clean
	# ======================================
	progplat.check_clean(force_cleanup)

	# change to corresponding branch
	# ======================================
	if branchname == None:
		branchname = progplatform.get_default_branch()
	progplat.change_branch(branchname)

	try:
		# generate the experiment code
		# ======================================
		logging.info(f"generating experiment code")
		progplat.configure_experiment(board_type, exp)
		run_id = progplat.get_configured_run_id()

		# run the experiment
		# ======================================
		logging.info(f"running experiment")
		uartlogdata_bin = progplat.run_experiment(conn_mode)
		# interpret the experiment result
		uartlogdata_lines = list(map(lambda l: l.decode(), uartlogdata_bin.split(b'\n')))
		if exp_type == "exps2":
			result_val = eval_uart_pair_cache_experiment(uartlogdata_lines)
		elif exp_type == "exps1":
			result_val = parse_uart_single_cache_experiment(uartlogdata_lines)
			# if the result is no board exception
			if not isinstance(result_val, str):
				# filter sets where at least one line is valid
				sets_valid = list(filter(lambda x: any(l_val["valid"] for l_val in x["lines"]), result_val))
				# filter valid lines
				sets_clean = list(map(lambda x: {"set": x["set"],"lines": list(filter(lambda l_val: l_val["valid"], x["lines"]))}, sets_valid))
				# remove regs field
				for s_val in sets_clean:
					for l_val in s_val["lines"]:
						for k in list(l_val.keys()):
							if not k in ["line", "valid", "tag"]:
								l_val.pop(k)
				result_val = sets_clean
		else:
			raise Exception(f"unknown experiment type: {exp_type}")
		result = json.dumps(result_val)

		# save the outputs and test metadata
		# ======================================
		nomismatches = True
		if write_results:
			logging.info(f"saving experiment data")
			# TODO: with reset the output format could be: output1/2_uart.log and result_rst.json
			outputs = []
			outputs.append(("output_uart.log", uartlogdata_bin))
			outputs.append(("result.json",     result.encode('utf-8')))
			nomismatches = exp.write_results(run_id, outputs, force_results)

	finally:
		if not no_cleanup:
			# finalize embexp-progplatform
			# ======================================
			logging.info(f"cleaning embexp-progplatform")
			# make progplatform clean to prepare the next round
			progplat.check_clean("ignored" if force_cleanup == "ignored" else "all")

	if printeval:
		# the last line is a simple result line, that can be interpreted by another program, if exps2
		# ======================================
		if exp_type == "exps2":
			print(f"result = {result}") # don't break this interface!
		elif exp_type == "exps1":
			# if the result is no board exception
			if isinstance(result_val, str):
				print(f"board_exception = {result}")
			else:
				print("=" * 40)
				for s_val in sets_clean:
					print(f"set {s_val['set']}")
					for l_val in s_val["lines"]:
						print(f"\tline {l_val['line']}, tag: {l_val['tag']}")
				print("=" * 40)
		else:
			raise Exception(f"unknown experiment type: {exp_type}")

	if not nomismatches and not force_results and not ignoremismatch:
		raise Exception("the output files differ")

	return result_val

