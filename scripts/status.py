#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import progplatform
from helpers import *
from exp_runner import *

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("--arch_id",       help="architecture id, default: arm8")
parser.add_argument("-ri", "--run_id", help="id of run made up of ProgPlatform commit hash and board type, for example: 13700076ab79095f15468f0c489fa587ac225626_rpi3")

parser.add_argument("-pp", "--print_progs",           help="print the list of programs", action="store_true")

parser.add_argument("-pe", "--print_examples",        help="print the list of validation examples", action="store_true")
parser.add_argument("-pc", "--print_counterexamples", help="print the list of counterexamples", action="store_true")
parser.add_argument("-pi", "--print_inconclusive",    help="print the list of inconclusive examples", action="store_true")
parser.add_argument("-po", "--print_others",          help="print the list of unclear examples", action="store_true")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

arch_id = args.arch_id
if arch_id == None:
	arch_id = "arm8"

# obtain run_id
run_id = args.run_id
if run_id == None:
	branchname = "master"
	board_type = "rpi3"
	assert arch_id == "arm8"
	progplat_hash = progplatform.get_embexp_ProgPlatform(None).get_branch_commit_hash(branchname)
	run_id = f"{progplat_hash}_{board_type}"

def collect_structure(startpath):
	struct = {"dirs": {}, "files": []}

	for root, dirs, files in os.walk(startpath):
		relpath = root.replace(startpath, '').split(os.sep)
		assert relpath[0] == ""
		relpath = relpath[1:]
		# find the right place
		relstruct = struct
		for d in relpath:
			relstruct = relstruct["dirs"][d]
		# place all dirs and files there
		relstruct["files"].extend(files)
		for d in dirs:
			relstruct["dirs"][d] = {"dirs": {}, "files": []}

	return struct

def rewrite_structure(struct):
	newstruct = {}
	for f in struct["files"]:
		newstruct[f] = None
	for dn in struct["dirs"]:
		newstruct[dn] = rewrite_structure(struct["dirs"][dn])
	return newstruct

def structure_dirs(s):
	return list(filter(lambda x: x != None, s))

def structure_files(s):
	return list(filter(lambda x: x == None, s))

# collect directory and file tree
logging.info("collecting directory and file tree of arm8")
rootpath = get_logs_path(arch_id)
arch_structure = rewrite_structure(collect_structure(rootpath))
progs = structure_dirs(arch_structure["progs"])
expts = list(filter(lambda x: x != "progs", structure_dirs(arch_structure)))
exps = []
for et in expts:
	et2s = structure_dirs(arch_structure[et])
	for et2 in et2s:
		for ei in structure_dirs(arch_structure[et][et2]):
			exps.append(f"{arch_id}/{et}/{et2}/{ei}")

# collect all programs and experiments
logging.info("collecting all programs and experiments")
print(f"n_progs = {len(progs)}")
print(f"n_exps  = {len(exps)}")
print()
print()

# collect statistics
e_notrun = []
e_incomplete = []
e_examples = []
e_cexamples = []
e_inconclusive = []
e_others = []
for exp_id in exps:
	parts = exp_id.split("/")
	assert len(parts) == 4
	assert parts[0] == arch_id
	s = arch_structure[parts[1]][parts[2]][parts[3]]
	# did it run?
	if not run_id in s:
		e_notrun.append(exp_id)
		continue
	r = s[run_id]
	# is it complete?
	resultfile = "result.json"
	if not resultfile in r:
		e_incomplete.append(exp_id)
		continue
	# what's the result?
	with open(get_logs_path(exp_id) + f"/{run_id}/{resultfile}", "r") as f:
		result = f.read()
	if result == "true":
		e_examples.append(exp_id)
	elif result == "false":
		e_cexamples.append(exp_id)
	elif result.startswith("\"special :::: INCONCLUSIVE: "):
		e_inconclusive.append(exp_id)
	else:
		e_others.append(exp_id)

print(f"n_notrun     = {len(e_notrun)}")
print(f"n_incomplete = {len(e_incomplete)}")
print()

print(f"n_others       = {len(e_others)}")
print(f"n_inconclusive = {len(e_inconclusive)}")
print(f"n_examples     = {len(e_examples)}")
print(f"n_cexamples    = {len(e_cexamples)}")
print()
print()

if args.print_progs:
	print("programs:")
	print("=" * 40)
	for p in progs:
		print(p)
	print()
	print()

if args.print_examples:
	print("validation examples:")
	print("=" * 40)
	for exp_id in e_examples:
		print(exp_id)
	print()
	print()

if args.print_counterexamples:
	print("validation counterexamples:")
	print("=" * 40)
	for exp_id in e_cexamples:
		print(exp_id)
	print()
	print()

if args.print_inconclusive:
	print("inconclusive examples:")
	print("=" * 40)
	for exp_id in e_inconclusive:
		print(exp_id)
	print()
	print()

if args.print_others:
	print("unclear result:")
	print("=" * 40)
	for exp_id in e_others:
		print(exp_id)
	print()
	print()


