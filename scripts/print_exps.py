#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb
import logslist

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("listname", help="name of experiment list")
parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)


print("opening db...")
print()
db = ldb.LogsDB()
db.connect()

# collect exps
listname = args.listname
exps = logslist.LogsList._get_by_name(db, "exp", listname).get_entries()

# print all exps
for exp in exps:
	print("=" * 100)
	exp.print()

