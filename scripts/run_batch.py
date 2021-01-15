#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb
import experiment
import logslist
import exp_finder
import progplatform
import exp_runner

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("listname",   help="listname")
parser.add_argument("-bt", "--board_type", help="broad_type", choices=["rpi3", "rpi4"], default="rpi3")

parser.add_argument("-fa", "--fix_all",    help="only fix experiments that don't have a complete run yet, repeatedly with polling", action="store_true")

parser.add_argument("-ep", "--embexp_path", help="see run_experiment.py.")
parser.add_argument("-cm", "--conn_mode",   help="see run_experiment.py.", choices=["try", "run", "reset"])

parser.add_argument("-v",  "--verbose",     help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

listname   = args.listname
board_type = args.board_type
fix_all   = args.fix_all

# create prog platform object
progplat = progplatform.get_embexp_ProgPlatform(args.embexp_path)

# db connection
print("opening db...")
print()
db = ldb.LogsDB()
db.connect()

# define experiment finding
progplat_hash = progplat.get_branch_commit_hash(progplatform.get_default_branch(board_type))
run_spec = experiment._mk_run_spec(progplat_hash, board_type)

def is_latest_exp_run_not_complete(exp):
	run_id = exp.get_latest_run_id(run_spec)
	if run_id == None:
		return True # no run
	run_data = exp.get_run_data(run_id)
	return not experiment.Experiment.is_complete_run(run_data)

def genfun():
	exps = logslist.LogsList._get_by_name(db, "exp", listname).get_entries()
	exps = map(lambda x: x[1], exps)
	ffun = is_latest_exp_run_not_complete
	# if not fix_all, we want to run once for each experiment
	if not fix_all:
		ffun = lambda x: True
	return list(filter(ffun, exps))

genargs = {}

# select iterator
if fix_all:
	exp_iter = exp_finder.PollingIterator(genfun, genargs)
else:
	exp_iter = exp_finder.NonPollingListIterator(genfun(**genargs))

# launch the runner script for each experiment in the list
# ======================================
logging.info(f"running all selected experiments")
successful = True
someSuccessful = False
try:
	for exp in exp_iter:
		# reload experiment for latest values
		exp = experiment.Experiment(db, exp.get_exp_id())

		(iter_round, iter_idx, iter_size) = exp_iter.get_iterinfo()
		print(f"===>>> [r:{iter_round}, {(iter_idx/iter_size * 100):.2f}% of {iter_size}] {exp}")
		try:
			result_val = exp_runner.run_experiment(exp, progplat, board_type, conn_mode=args.conn_mode)
			someSuccessful = True
			if result_val != True:
				print(f"         - Interesting result: {result_val}")
		except KeyboardInterrupt:
			raise
		except:
			successful = False
			logging.warning("- unsuccessful")
except KeyboardInterrupt:
	successful = False

print()
print("="*40)
print("="*40)
if (someSuccessful):
	print(f"run_spec = {run_spec}")
print("="*40)
if successful:
	print("ALL EXPERIMENTS COMPLETED")
else:
	print("SOME EXPERIMENTS DID NOT COMPLETE")

sys.exit(0 if successful else 1)

