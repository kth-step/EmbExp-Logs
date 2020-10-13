
import sys
import logging
import time

import experiment
from helpers import *

def get_exps_from_stdin():
	exp_list = []
	for line in sys.stdin:
		if line.startswith("#") or line.strip() == "":
			continue
		exp_list.append(line.strip())

	for exp_id in exp_list:
		exp = experiment.Experiment(exp_id)
		if not exp.is_valid_experiment():
			raise Exception(f"not a valid experiment: {exp_id}")

	return exp_list

def get_exps(exp_class, auto_mode = None, progplat_hash = None, board_type = None, exp_prefix = None, checkallvalid = False):

	exps_dir = get_logs_path(exp_class)
	if not os.path.isdir(exps_dir):
		raise Exception(f"not a directory in logs: {exp_class}")
	exp_hashes = next(os.walk(exps_dir))[1]

	exp_list = map(lambda x: exp_class + "/" + x, exp_hashes)
	exp_list1 = list(map(lambda x: experiment.Experiment(x), exp_list))

	exp_list = list(filter(lambda x: x.is_valid_experiment(), exp_list1))
	if checkallvalid:
		assert exp_list1 == exp_list

	if auto_mode == "all" or auto_mode == None:
		pass
	elif auto_mode == "fix":
		assert progplat_hash != None
		assert board_type != None
		run_id = experiment.get_run_id(progplat_hash, board_type)
		exp_list = filter(lambda x: x.is_incomplete_experiment(run_id), exp_list)
	else:
		raise Exception(f"unknown auto_mode: {auto_mode}")

	exp_list = map(lambda x: x.get_exp_id(), exp_list)

	if exp_prefix != None:
		exp_id_prefix = f"{exp_class}/{exp_prefix}"
		exp_list = filter(lambda x: x.startswith(exp_id_prefix), exp_list)

	return list(exp_list)


class ExpsIter:
	def __init__(self, exp_class, auto_mode, progplat_hash, board_type = None, poll_max_rounds = 5, poll_round_time = 60):
		assert auto_mode == "fix"
		self.exp_class = exp_class
		self.auto_mode = auto_mode
		self.progplat_hash = progplat_hash
		self.board_type = board_type

		self.poll_round_time = poll_round_time
		self.poll_max_rounds = poll_max_rounds
		if self.poll_max_rounds < 1:
			self.poll_max_rounds = 1
		self._exp_list_iter = iter([])
		self._exp_size = 0
		self.iteration = 0

	def update_exps_list(self):
		for i in range(self.poll_max_rounds):
			if i > 0:
				time.sleep(self.poll_round_time)
			logging.warning("generating new exp_list")
			exp_list = get_exps(self.exp_class, self.auto_mode, self.progplat_hash, self.board_type)
			logging.warning(f"generated {len(exp_list)}")
			if len(exp_list) > 0:
				break
		self._exp_list_iter = iter(exp_list)
		self._exp_size = len(exp_list)

	def __iter__(self):
		return self

	def __next__(self):
		try:
			next_exp = self._exp_list_iter.__next__()
		except StopIteration:
			self.iteration = 0
			self.update_exps_list()
			next_exp = self._exp_list_iter.__next__()
		return next_exp

