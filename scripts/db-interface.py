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

parser.add_argument("-cio", "--cont_in_out", help="continuously take input from stdin and send outputs to stdout")

parser.add_argument("operation",       help="operation to execute on database (is used as termination_line when --cont_in_out option is used)", choices=["create", "append", "query"])

parser.add_argument("-i", "--input", help="take input as command line argument instead of stdin")

parser.add_argument("-t", "--testing", help="uses testing database (i.e. for testing only)", action="store_true")
parser.add_argument("-ro", "--read_only", help="opens database in read-only mode", action="store_true")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

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
		# input check
		if not type(q) is dict:
			raise Exception("wrong input, must be a dictionary")
		if any(map(lambda x: not x in ["table", "joins", "query_exp", "order_by", "id_only"], q.keys())):
			raise Exception("unknown parameter in input ('query')")
		# fetching arguments
		table = q["table"]
		joins = q["joins"]
		query_exp = q["query_exp"]
		order_by = []
		try:
			order_by = q["order_by"]
		except KeyError:
			pass
		id_only = False
		try:
			id_only = q["id_only"]
		except KeyError:
			pass

		if not type(values) is dict:
			raise Exception("wrong input, 'values' of 'query' must be a dictionary")
		# processing of arguments
		raise Exception("not implemented")
		# execute query and return results
		raise Exception("not implemented")

	# c) raw sql query
	elif q_type == "sql":
		# input check
		if not type(q) is dict:
			raise Exception("wrong input, must be a dictionary")
		if any(map(lambda x: not x in ["sql"], q.keys())):
			raise Exception("unknown parameter in input ('query')")
		# fetching arguments
		sql = q["sql"]
		# execute sql query and return results
		(fields, rows) = db.get_tablerecords_sql(sql)
		return {"fields": fields, "rows": rows}

	# d) unknown query type
	else:
		raise Exception("unknown query type: " + q_type)


opdict = {"create"  : op_create,
          "append"  : op_append,
          "query"   : op_query}

def run_one_interaction(operation, json_arguments, is_read_only, is_testing = False):
	# select operation accordingly
	logging.info(f"executing operation {operation}")
	opfun = opdict[operation]

	# create db access object
	alt_db_file = None if not is_testing else "data/testing.db"
	with ldb.LogsDB(alt_db_file, read_only=is_read_only) as db:
		# execute operation
		ret_val = opfun(db, json_arguments)
	return ret_val

def send_terminated_string(f, termination_line, s):
	print(s, file=f)
	print(termination_line, file=f)
	# flush stdout buffer
	f.flush()

def receive_terminated_string(f, termination_line):
	lines = []
	while True:
		line = f.readline()
		if line == termination_line:
			break
		lines += line
	return "".join(lines)

# parse operation arguments from stdin
logging.info(f"parsing json arguments.")

operation = args.operation
input_data = args.input
is_testing = args.testing
is_read_only = True if args.read_only else False

if args.cont_in_out:
	# start i/o loop
	logging.info(f"starting i/o loop")
	while True: # check if this needs to be done differently
		magic_termination_line = operation
		# receive query
		json_query_raw = receive_terminated_string(sys.stdin, magic_termination_line)
		json_query = json.loads(json_query_raw)
		operation = json_query["op"] #string
		json_arguments = json_query["args"] #structured data (also json)
		is_testing = json_query["is_testing"] #boolean
		is_read_only = json_query["is_read_only"] #boolean
		# process
		ret_val = run_one_interaction(operation, json_arguments, is_read_only, is_testing)
		# send response
		send_terminated_string(sys.stdout, magic_termination_line, json.dumps(ret_val))
		break
else:
	# traditional mode, one db-interface command transaction per run of the process
	if input_data != None:
		json_arguments = json.loads(input_data)
	else:
		logging.info(f"from stdin...")
		json_arguments = json.load(sys.stdin)

	ret_val = run_one_interaction(operation, json_arguments, is_read_only, is_testing)

	# return value is serialized with json and printed on stdout
	print(json.dumps(ret_val))

