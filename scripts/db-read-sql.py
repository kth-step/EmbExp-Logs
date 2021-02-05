#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb

# parse arguments
parser = argparse.ArgumentParser()

parser.add_argument("-i", "--input", help="take input as command line argument instead of stdin")

parser.add_argument("-t", "--testing", help="uses testing database (i.e. for testing only)", action="store_true")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

input_data = args.input
is_testing = args.testing

# retrieve query string from stdin
logging.info(f"loading query string.")
if input_data != None:
	sql_str = input_data
else:
	logging.info(f"from stdin...")
	sql_str = sys.stdin.read()

# create db access object
alt_db_file = None if not is_testing else "data/testing.db"
with ldb.LogsDB(alt_db_file, read_only=True) as db:
	# execute query
	(fields, rows) = db.get_tablerecords_sql(sql_str)

def simple_print(fields, rows):
	print(fields)
	print("=" * 40)
	print()
	for row in rows:
		print(row)

def print_with_pandas(fields, rows):
	import pandas as pd

	df = pd.DataFrame (rows, columns=fields)

	print(df)

# print result
print_with_pandas(fields, rows)

