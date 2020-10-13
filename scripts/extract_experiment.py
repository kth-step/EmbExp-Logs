#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging
import shutil

import experiment
import exp_runner

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("board_type",            help="platfrom to execute experiments: rpi3 or rpi4", choices=['rpi3', 'rpi4'])
parser.add_argument("branchname",            help="platfrom to execute experiments: rpi3 or rpi4", choices=['scamv', 'scamv-rpi4', 'scamv_rpi3'])
parser.add_argument("exp_id",                help="id of experiment: arm8/exps2/exp_cache_multiw/{EXPERIMENT_HASH}")
parser.add_argument("input_index",           help="input index to choose from exp_id", type=int,   choices=range(1, 3))
parser.add_argument("exp_new_name",          help="id of experiment: arm8/exps2/exp_cache_multiw/{EXPERIMENT_HASH}")

parser.add_argument("-exec", "--execute",    help="run the experiment afterwards", action="store_true")
parser.add_argument("-ra", "--remove_after", help="remove experiment afterwards",  action="store_true")
parser.add_argument("-v", "--verbose",       help="increase output verbosity",     action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

board  = args.board_type
branch = args.branchname
exp_id = args.exp_id
exp    = experiment.Experiment(exp_id)
input_index  = args.input_index
exp_new_name = args.exp_new_name
execute = args.execute
remove_after = args.remove_after

if remove_after and not execute:
	raise Exception("inconsistent parameters selected: won't remove without execute")

# can only handle exps2
exp_type = exp.get_exp_type()
assert exp_type == "exps2"

exp_new_id = f"{exp.get_exp_arch()}/exps1/{exp.get_exp_params_id()}/{exp_new_name}"

files = []
with open(exp.get_path("code.hash", True), "rb") as f:
	files.append(("code.hash", f.read()))
with open(exp.get_path(f"input{input_index}.json", True), "rb") as f:
	files.append(("input1.json", f.read()))
	
# reading the input for mistraining the branch predictor
input_index_dual = (input_index % 2) + 1
with open(exp.get_path(f"train.json", True), "rb") as f:
	files.append(("train.json", f.read()))
	
exp_new = experiment.Experiment.create(exp_new_id, files)

if not remove_after:
	print(f"exp_new_id = {exp_new_id}")

if execute:
	try:
		exp_runner.run_experiment(exp_new_id, board_type=board, branchname=branch, printeval=True, write_results=False)
	finally:
		if remove_after:
			exp_new_path = os.path.abspath(exp_new.get_path("."))
			shutil.rmtree(exp_new_path)
			print(f"successfully removed experiment directory {exp_new_path}")

