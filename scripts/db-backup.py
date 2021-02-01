#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb

# parse arguments
parser = argparse.ArgumentParser()

parser.add_argument("-t", "--testing", help="uses testing database (i.e. for testing only)", action="store_true")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

is_testing = args.testing

# create db access object and run backup
alt_db_file = None if not is_testing else "data/testing.db"
with ldb.LogsDB(alt_db_file) as db:
	db.backup()


print("Backup finished.")

