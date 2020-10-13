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

parser.add_argument("name", help="name for listfiles")
parser.add_argument("num_lists", help="number of lists to produce", type=int)

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)


exp_class = args.exp_class
name      = args.name
num_lists = args.num_lists

assert(num_lists > 0)

print(f"Name of lists:   {name}")
print(f"Number of lists: {num_lists}")
print()

exps_dir = get_logs_path(exp_class)
if not os.path.isdir(exps_dir):
	raise Exception(f"not a directory in logs: {exp_class}")
directory_content = next(os.walk(exps_dir))
exp_hashes = directory_content[1] + directory_content[2]

lists_dir = get_logs_path("lists")
if not os.path.isdir(lists_dir):
	os.makedirs(lists_dir)

# prepare containers
containers = list([] for _ in range(0, num_lists))

i = 0
for exp_hash in exp_hashes:
	exp_id = exp_class + "/" + exp_hash
	exp_path = exps_dir + "/" + exp_hash

	if not os.path.isdir(exp_path):
		print("WARN: not a directory: " + exp_hash)
		continue

	if len(next(os.walk(exp_path))[2]) == 0:
		print("WARN: empty directory (no files): " + exp_hash)
		continue

	# add exp_id to container i
	container = containers[i]
	container.append(exp_id)

	i = (i + 1) % num_lists

for i in range(0, num_lists):
	container = containers[i]
	print(f"container {i} has length {len(container)}")

	filename = lists_dir + f"/exps_{name}_{i}.txt"
	if os.path.exists(filename):
		raise Exception("file exists already")

	print(f"- writing '{filename}'")
	with open(filename, "w+") as f:
		for exp_id in container:
			f.write(exp_id + "\n")
	
	print()

