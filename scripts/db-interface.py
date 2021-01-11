#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import json
import logsdb as ldb

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

# define executions for each operation type
""" op:backup """
def op_backup(db, json_args):
	db.backup()
	return True


""" op:importdb """
def op_importdb(db, json_args):
	raise Exception("not implemented")
	return False


""" op:create """
def op_create(db, json_args):
	table = json_args["datatype"]
	tr = ldb.get_empty_TableRecord(table)
	data = tr._replace(**json_args["fields"])
	if "id" in json_args["fields"].keys():
		raise Exception("setting the id field is not allowed")
	# create an entry, basic definition: only essential data
	return db.add_tablerecord(data)._asdict()


""" op:append """
def op_append(db, json_args):
	raise Exception("not implemented")
	# append flexible data to an entry
	return False


""" op:query """
def op_query(db, json_args):
	raise Exception("not implemented")
	# query in some way, try to be more structured and restricted here, not bare SQL strings
	return False


opdict = {"backup"  : op_backup,
          "importdb": op_importdb,
          "create"  : op_create,
          "append"  : op_append,
          "query"   : op_query}

# execute operation accordingly
logging.info(f"executing operation {operation}")
opfun = opdict[operation]

# create db access object
with ldb.LogsDB() as db:
	ret_val = opfun(db, json_arguments)
	#ret_val = json_arguments
	#ret_val = {"1": "hello 123", "2": [1,2,3,4], "3": {"hello":123, "hello2":1234}}

# return value is serialized with json and printed on stdout
print(json.dumps(ret_val))



