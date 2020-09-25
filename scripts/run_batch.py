#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import progplatform
import exp_runner
import exp_finder

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-ec", "--exp_class", help="class of experiment: arm8/exps2/exp_cache_multiw, takes from stdin if this is not provided")
parser.add_argument("-br", "--branchname", help="branch of ProgPlatform, default is master", choices=['scamv', 'scamv-rpi4'])
parser.add_argument("-bt", "--board_type", help="broad_type", choices=['rpi3', 'rpi4'])

parser.add_argument("-am", "--auto_mode", help="automatic mode: all, fix (default). run for all present experiments or just fix the unfinished ones that run with the current master branch of ProgPlatform (no result file)")

parser.add_argument("-ep", "--embexp_path",   help="see run_experiment.py.")

parser.add_argument("-cm", "--conn_mode",     help="see run_experiment.py.")
parser.add_argument("-fr", "--force_results", help="see run_experiment.py.", action="store_true")

parser.add_argument("-v", "--verbose",        help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

exp_class = args.exp_class
do_auto = exp_class != None
if do_auto:
	assert len(exp_class.split('/')) == 3

# create prog platform object
progplat = progplatform.get_embexp_ProgPlatform(args.embexp_path)

board_type = args.board_type
branchname = args.branchname
auto_mode = "fix" if args.auto_mode == None else args.auto_mode

# select experiments (could be made as iterator to simplify the code and not require processing to complete in the beginning, i guess)
# ======================================
logging.info(f"selecting experiments")

if not do_auto:
	exp_iter = exp_finder.get_exps_from_stdin()
else:
	assert board_type == "rpi3" or board_type == "rpi4"

	branchname = progplatform.get_default_branch()
	progplat_hash = progplat.get_branch_commit_hash(branchname)

	if auto_mode == "fix":
		exp_iter = exp_finder.ExpsIter(exp_class, auto_mode, progplat_hash, board_type)
	else:
		exp_iter = exp_finder.get_exps(exp_class, auto_mode, progplat_hash, board_type)

# launch the runner script for each experiment in the list
# ======================================
logging.info(f"running all selected experiments")
successful = True
someSuccessful = False
idx = 0
for exp_id in exp_iter:
	exp_iter.iteration =  exp_iter.iteration + 1
	print(f"===>>> {exp_id} progess {round(exp_iter.iteration/exp_iter._exp_size * 100)}% total #{exp_iter._exp_size}")
	try:
		result_val = exp_runner.run_experiment(exp_id, progplat, board_type, branchname, conn_mode=args.conn_mode, force_results=args.force_results)
		someSuccessful = True
		if result_val != True:
			print(f"         - Interesting result: {result_val}")
	except KeyboardInterrupt:
		raise
	except:
		successful = False
		logging.warning("- unsuccessful")

print()
print("="*40)
print("="*40)
if (someSuccessful):
	print(f"run_id = {progplat.get_configured_run_id()}")
print("="*40)
if successful:
	print("ALL EXPERIMENTS COMPLETED")
else:
	print("SOME EXPERIMENTS DID NOT COMPLETE")

sys.exit(0 if successful else 1)

