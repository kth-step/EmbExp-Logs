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

parser.add_argument("operation",       help="operation to execute on database", choices=["create", "append", "query", "hack"])

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
""" op:create """
def op_create(db, json_args):
	# input check
	if not type(json_args) is dict:
		raise Exception("wrong input, must be a dictionary")
	if any(map(lambda x: not x in ["table", "values", "id_only", "match_existing"], json_args.keys())):
		raise Exception("unknown parameter in input")
	# fetching of arguments
	table = json_args["table"]
	values = json_args["values"]
	id_only = False
	try:
		id_only = json_args["id_only"]
	except KeyError:
		pass
	match_existing = False
	try:
		match_existing = json_args["match_existing"]
	except KeyError:
		pass
	if not type(match_existing) is bool:
		raise Exception("wrong input, 'match_existing' must be a bool")
	if not type(values) is dict:
		raise Exception("wrong input, 'values' must be a dictionary")
	# processing of arguments
	tr = ldb.get_empty_TableRecord(table)
	data = tr._replace(**values)
	# create an entry, basic definition: only essential data
	return db.add_tablerecord(data, id_only=id_only, match_existing=match_existing)._asdict()


""" op:append """
def op_append(db, json_args):
	# input check
	if not type(json_args) is dict:
		raise Exception("wrong input, must be a dictionary")
	if any(map(lambda x: not x in ["table", "values"], json_args.keys())):
		raise Exception("unknown parameter in input")
	# fetching of arguments
	table = json_args["table"]
	values = json_args["values"]
	if not type(values) is dict:
		raise Exception("wrong input, 'values' must be a dictionary")
	# processing of arguments
	tr = ldb.get_empty_TableRecord(table)
	data = tr._replace(**values)
	# append string data to an existing entry
	db.append_tablerecord_meta(data)
	return True


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
		if any(map(lambda x: not x in ["table", "values", "id_only"], q.keys())):
			raise Exception("unknown parameter in input ('query')")
		# fetching arguments
		table = q["table"]
		values = q["values"]
		id_only = False
		try:
			id_only = q["id_only"]
		except KeyError:
			pass
		if not type(values) is dict:
			raise Exception("wrong input, 'values' of 'query' must be a dictionary")
		# processing of arguments
		tr = ldb.get_empty_TableRecord(table)
		data = tr._replace(**values)
		# search for matches and return the results as a pair of field name list and individual lists with the same length
		if not id_only:
			fields = list(tr._fields)
		else:
			fields = list(ldb.TR_id_only._fields)
		matches = db.get_tablerecord_matches(data, id_only=id_only)
		rows = list(map(lambda m: list(map(lambda x: getattr(m, x), fields)), matches))
		res = {"fields": fields, "rows": rows}
		return res
	# b) join-based query
	elif q_type == "join_based":
		raise Exception("not implemented")
	# c) unknown query type
	else:
		raise Exception("unknown query type: " + q_type)


""" op:hack """
def op_hack(db, json_args):
	if type(json_args) != str:
		raise Exception("unexpected input type, get listname here")
	listname = json_args

	tr = ldb.get_empty_TableRecord("exp_progs")
	expr = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=2, field="name"), arg2=ldb.QE_Const(value=listname))
	trs  = db.get_tablerecords("exp_progs", [("exp_progs_lists_entries", 0), ("exp_progs_lists", 1)], expr)

	fields = list(tr._fields)

	rows = list(map(lambda m: list(map(lambda x: getattr(m, x), fields)), trs))
	res = {"fields": fields, "rows": rows}

	return res

opdict = {"create"  : op_create,
          "append"  : op_append,
          "query"   : op_query,
          "hack"    : op_hack}

# select operation accordingly
logging.info(f"executing operation {operation}")
opfun = opdict[operation]

# create db access object
alt_db_file = None if not is_testing else "data/testing.db"
with ldb.LogsDB(alt_db_file) as db:
	# execute operation
	ret_val = opfun(db, json_arguments)

# return value is serialized with json and printed on stdout
print(json.dumps(ret_val))



