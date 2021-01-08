#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import sqlite3 as sl
import json
import datetime

# parse arguments
parser = argparse.ArgumentParser(description='Database interface with operation as argument and json formatted input and output.',
                                 epilog="Provide json formatted arguments on stdin, receive json formatted result on stdout (in case there are no exceptions).")

parser.add_argument("operation",       help="operation to execute on database", choices=["backup", "importdb", "create", "append", "query"])

parser.add_argument("-i", "--input", help="take input as command line argument instead of stdin")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

operation = args.operation
input_data = args.input

# change to script's repository root directory
os.chdir(os.path.join(os.path.dirname(__file__), ".."))

# parse operation arguments from stdin
logging.info(f"parsing json arguments.")
if input_data != None:
	json_arguments = json.loads(input_data)
else:
	logging.info(f"from stdin...")
	json_arguments = json.load(sys.stdin)

# check if database already exists, if not create tables and version information from schema.sql
data_dir = "data"
backup_dir = os.path.join(data_dir, "backups")
database_file = os.path.join(data_dir, "logs.db")
database_exists = os.path.isfile(database_file)

if not os.path.isdir(data_dir):
	os.mkdir(data_dir)

con = sl.connect(database_file)

if not database_exists:
	logging.info(f"no database. creating tables and version information")
	# create tables and finally version information
	with open("lib/schema.sql", "r") as f:
		with con:
			con.executescript(f.read())
else:
	logging.info(f"found database. checking version information")
	# check version information to ensure tables are as expected
	cur = con.execute(f"SELECT * FROM db_meta WHERE id = 0")
	versionrow = list(cur)
	assert(len(versionrow) == 1)
	assert(versionrow[0] == (0, None, "version", "1")) # assert that db version is correct

# define executions for each operation type
""" op:backup """
def op_backup(json_args):
	if not os.path.isdir(backup_dir):
		os.mkdir(backup_dir)
	datetimestr = datetime.datetime.now().strftime("%Y_%m_%d-%H_%M_%S")
	backupfile = os.path.join(backup_dir, f"backup_{datetimestr}")
	logging.info(f"backup prefix {backupfile}")

	with open(f"{backupfile}.sql", "w") as f:
		for line in con.iterdump():
			f.write("%s\n" % line)

	def progress(status, remaining, total):
		logging.info(f'Copied {total-remaining} of {total} pages...')
	bck = sl.connect(f"{backupfile}.db")
	with bck:
		con.backup(bck, pages=1, progress=progress)
	bck.close()

	return True


""" op:importdb """
def op_importdb(json_args):
	raise Exception("not implemented")


""" op:create """
def op_create(json_args):
	raise Exception("not implemented")
	# create an entry, basic definition: only essential data


""" op:append """
def op_append(json_args):
	raise Exception("not implemented")
	# append flexible data to an entry


""" op:query """
def op_query(json_args):
	raise Exception("not implemented")
	# query in some way, try to be more structured and restricted here, not bare SQL strings


opdict = {"backup"  : op_backup,
          "importdb": op_importdb,
          "create"  : op_create,
          "append"  : op_append,
          "query"   : op_query}

# execute operation accordingly
logging.info(f"executing operation {operation}")
opfun = opdict[operation]

ret_val = opfun(json_arguments)
#ret_val = json_arguments
#ret_val = {"1": "hello 123", "2": [1,2,3,4], "3": {"hello":123, "hello2":1234}}

# return value is serialized with json and printed on stdout
print(json.dumps(ret_val))


# close databse
con.close()

