#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb
import logslist
import experiment

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-ln", "--listname", help="name of experiment list")
parser.add_argument("-eid", "--exp_id", help="experiment id")
parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

listname = args.listname
exp_id = args.exp_id

if not (listname != None or exp_id != None): 
	raise Exception("either listname or exp_id must be set")

if listname != None and exp_id != None:
	raise Exception("only one, either listname or exp_id should be set")

print("opening db...")
print()
db = ldb.LogsDB()
db.connect()

# collect exps
if listname != None:
	exps = logslist.LogsList._get_by_name(db, "exp", listname).get_entries()
else:
	exps = [(0, experiment.Experiment(db, int(exp_id)))]

# print all exps
for exp in exps:
	print("=" * 100)
	exp[1].print()

