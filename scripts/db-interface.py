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

parser.add_argument("-t", "--testing", help="uses testing database (i.e. for testing only)", action="store_true")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

operation = args.operation
input_data = args.input
is_testing = args.testing

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
	# input check
	if not type(json_args) is dict:
		raise Exception("wrong input, must be a dictionary")
	if any(map(lambda x: not x in ["table", "values", "match_existing"], json_args.keys())):
		raise Exception("unknown parameter in input")
	# fetching and processing of arguments
	table = json_args["table"]
	values = json_args["values"]
	match_existing = False
	try:
		match_existing = json_args["match_existing"]
	except KeyError:
		pass
	if not type(match_existing) is bool:
		raise Exception("wrong input, 'match_existing' must be a bool")
	if not type(values) is dict:
		raise Exception("wrong input, 'values' must be a dictionary")
	tr = ldb.get_empty_TableRecord(table)
	data = tr._replace(**values)
	# create an entry, basic definition: only essential data
	return db.add_tablerecord(data, match_existing=match_existing)._asdict()


""" op:append """
def op_append(db, json_args):
	# input check
	if not type(json_args) is dict:
		raise Exception("wrong input, must be a dictionary")
	if any(map(lambda x: not x in ["table", "values"], json_args.keys())):
		raise Exception("unknown parameter in input")
	# fetching and processing of arguments
	table = json_args["table"]
	values = json_args["values"]
	if not type(values) is dict:
		raise Exception("wrong input, 'values' must be a dictionary")
	tr = ldb.get_empty_TableRecord(table)
	data = tr._replace(**values)
	# append string data to an existing entry
	return db.append_tablerecord_meta(data)._asdict()


""" op:query """
def op_query(db, json_args):
	# input check
	if not type(json_args) is dict:
		raise Exception("wrong input, must be a dictionary")
	if any(map(lambda x: not x in ["type", "query"], json_args.keys())):
		raise Exception("unknown parameter in input")
	# fetching and processing of arguments
	q_type = json_args["type"]
	q = json_args["query"]

	## query in some way, try to be more structured and restricted here, not bare SQL strings

	# a) simple match
	if   q_type == "match_simple":
		# input check
		if not type(q) is dict:
			raise Exception("wrong input, must be a dictionary")
		if any(map(lambda x: not x in ["table", "values"], q.keys())):
			raise Exception("unknown parameter in input ('query')")
		# fetching and processing of arguments
		table = q["table"]
		values = q["values"]
		if not type(values) is dict:
			raise Exception("wrong input, 'values' of 'query' must be a dictionary")
		tr = ldb.get_empty_TableRecord(table)
		data = tr._replace(**values)
		# search for matches and return the results as a pair of field name list and individual lists with the same length
		fields = list(tr._fields)
		matches = db.get_tablerecord_matches(data)
		rows = list(map(lambda m: list(map(lambda x: getattr(m, x), fields)), matches))
		res = {"fields": fields, "rows": rows}
		return res
	# b) join-based query
	elif q_type == "join_based":
		raise Exception("not implemented")
	# c) unknown query type
	else:
		raise Exception("unknown query type: " + q_type)


opdict = {"backup"  : op_backup,
          "importdb": op_importdb,
          "create"  : op_create,
          "append"  : op_append,
          "query"   : op_query}

# execute operation accordingly
logging.info(f"executing operation {operation}")
opfun = opdict[operation]

# create db access object
alt_db_file = None if not is_testing else "data/testing.db"
with ldb.LogsDB(alt_db_file) as db:
	ret_val = opfun(db, json_arguments)

# return value is serialized with json and printed on stdout
print(json.dumps(ret_val))



