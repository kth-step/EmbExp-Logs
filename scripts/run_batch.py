#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging
import time
import threading
import multiprocessing.pool

import logsdb as ldb
import exprun
import experiment
import logslist
import exp_finder
import progplatform
import exp_runner

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-ln", "--listname",    help="name of experiment list")
parser.add_argument("-bt", "--board_type",  help="broad_type", choices=["rpi3", "rpi4"], default="rpi3")

parser.add_argument(       "--run_once",    help="collect experiments in the beginning and run each experiment just once", action="store_true")

parser.add_argument("-ep", "--embexp_path", help="see run_experiment.py.")
parser.add_argument("-cm", "--conn_mode",   help="see run_experiment.py.", choices=["try", "run", "reset"])

parser.add_argument("-idxs", "--indexes",   help="comma separated list of embexp remote indexes (no spaces).")

parser.add_argument("-v",  "--verbose",     help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

listname   = args.listname
board_type = args.board_type
run_once   = args.run_once

indexes = args.indexes
if indexes != None:
	indexes = list(map(int, indexes.split(",")))
else:
	indexes = [None]

# create prog platform object
progplat = progplatform.get_embexp_ProgPlatform(args.embexp_path)

# db connection
print("opening db...")
print()
db = ldb.LogsDB()
db.connect()

# define experiment finding
branchname = None
branchname = progplatform.decide_branchname(branchname, board_type)
progplat_hash = progplat.get_branch_commit_hash(branchname)
run_spec = experiment._mk_run_spec(progplat_hash, board_type)

def is_latest_exp_run_not_complete(exp):
	run_id = exp.get_latest_run_id(run_spec)
	if run_id == None:
		return True # no run
	run_data = exp.get_run_data(run_id)
	return not experiment.Experiment.is_complete_run(run_data)

def is_all_true(x):
	return True

def genfun_fromexplist(filterfun, listname):
	exps = logslist.LogsList._get_by_name(db, "exp", listname).get_entries()
	exps = map(lambda x: x[1], exps)
	return list(filter(filterfun, exps))

def genfun_allexps(filterfun):
	exps = experiment.Experiment._get_all(db)
	return list(filter(filterfun, exps))

# select input experiment source
if listname == None:
	genfun  = genfun_allexps
	genargs = {}
else:
	genfun  = genfun_fromexplist
	genargs = {"listname": listname}

# filter for incomplete experiments by default
genargs["filterfun"] = is_latest_exp_run_not_complete

# poll by default
do_poll = True

# if "run_once", we take each experiment from the source into account (exactly once, no polling)
if run_once:
	genargs["filterfun"] = is_all_true
	do_poll = False

# create iterator
if do_poll:
	exp_iter = exp_finder.PollingIterator(genfun, genargs)
else:
	exp_iter = exp_finder.NonPollingListIterator(genfun(**genargs))

# create exp run in db
exprun = exprun.ExpRun._create(db)

# launch the runner script for each experiment in the list
# ======================================
logging.info(f"running all selected experiments")
statistics = {
  "n_exp_runs" : 0,
  "n_exp_runs_success" : 0,
  "time_of_first_false_result" : None
}
all_start_time = time.time()

indexes_lock = threading.Lock()
def check_idx():
	with indexes_lock:
		return len(indexes) != 0
def acquire_idx():
	with indexes_lock:
		idx = indexes.pop(0)
	return idx
def release_idx(idx):
	with indexes_lock:
		indexes.append(idx)

def exec_exp(exp, idx):
	success = False
	result_val = None
	#idx = acquire_idx()
	try:
		start_time = time.time()
		connidxstr = "" if idx == None else f"(conn idx={idx})"
		def print_runtime():
			print(f"         - took {time.time()-start_time:.2f}s {connidxstr}")
		# reload experiment for latest values
		exp = experiment.Experiment(db, exp.get_exp_id())

		(iter_round, iter_idx, iter_size) = exp_iter.get_iterinfo()
		print(f"===>>> [r:{iter_round}, {(iter_idx/iter_size * 100):.2f}% of {iter_size}] {exp} {connidxstr}")
		try:
			conn_mode = args.conn_mode
			copy_to_temp = False
			if idx != None:
				conn_mode = "run"
				copy_to_temp = True
			result_val = exp_runner.run_experiment(exp, progplat, board_type, conn_mode=conn_mode, exprun=exprun, branchname=branchname, embexp_inst_idx = idx, copy_to_temp = copy_to_temp)
			print_runtime()
			success = True
			if result_val != True:
				print(f"         - Interesting result: {result_val} {connidxstr}")
		except KeyboardInterrupt:
			print("keyboard interrupt raised during execution {connidxstr}")
			raise
		except Exception as ex:
			#import traceback
			#print(traceback.format_exc())
			#print(ex)
			print_runtime()
			logging.warning(f"- unsuccessful {connidxstr}")
			#time.sleep(5000)
	finally:
		release_idx(idx)
	return (idx, success, result_val)

def eval_result(res, statistics):
	(idx, success, result_val) = res
	connidxstr = "" if idx == None else f"(conn idx={idx})"
	statistics["n_exp_runs"] += 1
	if success:
		statistics["n_exp_runs_success"] += 1
	if result_val == False:
		if statistics["time_of_first_false_result"] == None:
			statistics["time_of_first_false_result"] = time.time()
			print(f"         - first false result {connidxstr}")
	#print(f"ok - conn index: {idx}")

try:
	numtasks = len(indexes)
	if numtasks == 1:
		idx = indexes[0]
		for exp in exp_iter:
			res_ = exec_exp(exp, idx)
			eval_result(res_, statistics)
	else:
		with multiprocessing.pool.ThreadPool(processes=numtasks) as pool:
			#for  in pool.imap_unordered(exec_exp, ):
			while True:
				result_list = []
				for exp in exp_iter:
					if not check_idx():
						break
					idx = acquire_idx()
					res = pool.apply_async(exec_exp, (exp, idx))
					result_list.append(res)
					if not check_idx():
						break
				if result_list == []:
					break

				while result_list != []:
					res_ = result_list.pop(0).get()
					eval_result(res_, statistics)

except KeyboardInterrupt:
	print("-> script was cancelled by keyboard interrupt")

n_exp_runs = statistics["n_exp_runs"]
n_exp_runs_success = statistics["n_exp_runs_success"]

print()
print("="*40)
print("="*40)
all_time = time.time()-all_start_time
print(f"ran for {all_time:.2f}s")
if statistics["time_of_first_false_result"] != None:
	time_of_first_false = statistics["time_of_first_false_result"]-all_start_time
	print(f"time until first counterexample (false result) is {time_of_first_false:.2f}s")
print(f"{n_exp_runs_success} of {n_exp_runs} attempted experiment runs gave a result")
if (n_exp_runs > 0):
	print(f"average execution time {all_time/n_exp_runs:.2f}s (this computation is not taking parallelization into account)")
if (n_exp_runs_success > 0):
	print(f"run_spec = {run_spec}")
print("="*40)
assert(n_exp_runs_success <= n_exp_runs)
successful = n_exp_runs_success == n_exp_runs
if successful:
	print("ALL STARTED EXPERIMENT RUNS COMPLETED")
else:
	print("SOME EXPERIMENT RUNS DID NOT COMPLETE (MAY HAVE BEEN REPEATED)")


sys.exit(0 if successful else 1)

