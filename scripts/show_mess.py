#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging
import json
import subprocess

import experiment
from helpers import *

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("exp_class", help="class of experiment: arm8/exps2/exp_cache_multiw")
parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)


exp_class = args.exp_class

exps_dir = get_logs_path(exp_class)
if not os.path.isdir(exps_dir):
	raise Exception(f"not a directory in logs: {exp_class}")
directory_content = next(os.walk(exps_dir))
exp_hashes = directory_content[1] + directory_content[2]

for exp_hash in exp_hashes:
	exp_id = exp_class + "/" + exp_hash
	exp_path = exps_dir + "/" + exp_hash

	if not os.path.isdir(exp_path):
		print("not a directory: " + exp_hash)
		continue

	if len(next(os.walk(exp_path))[2]) == 0:
		print("empty directory (no files): " + exp_hash)
		continue



