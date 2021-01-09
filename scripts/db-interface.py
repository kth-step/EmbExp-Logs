#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import json
import logsdb

# parse arguments
parser = argparse.ArgumentParser(description='Database interface with operation as argument and json formatted input and output.',
                                 epilog="Provide json formatted arguments on stdin, receive json formatted result on stdout (in case there are no exceptions).")

parser.add_argument("operation",       help="operation to execute on database", choices=["backup", "importdb", "create", "append", "query", "test"])

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
	raise Exception("not implemented")
	# create an entry, basic definition: only essential data
	return False


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


""" op:test """
def op_test(db, json_args):
	# general tests
	print(logsdb.get_empty_TableRecord("db_meta"))
	print(logsdb.get_empty_TableRecord(logsdb.TableRecord_db_meta))

	# make sure that the database is cleared
	for t in logsdb.tables_all:
		n = db.get_tablerecord_matches(logsdb.get_empty_TableRecord(t), True)
		if t == "db_meta":
			assert(n == 1)
		else:
			assert(n == 0)

	# add a bit of metadata
	_db_meta = db.get_tablerecord_matches(logsdb.get_empty_TableRecord("db_meta"))
	_db_meta += [db.add_tablerecord(logsdb.TableRecord_db_meta(id=None, kind=None, name='hellO', value='me123'))]
	_db_meta += [db.add_tablerecord(logsdb.TableRecord_db_meta(id=None, kind=None, name='hellO', value='me123'))]
	_db_meta += [db.add_tablerecord(logsdb.TableRecord_db_meta(id=None, kind="hello8", name='123', value='me123'))]
	_db_meta_1 = db.get_tablerecord_matches(logsdb.get_empty_TableRecord("db_meta"))
	#print(_db_meta)
	#print(_db_meta_1)
	assert(_db_meta == _db_meta_1)
	# try to break uniqueness constraint
	try_fin = False
	try:
		db.add_tablerecord(logsdb.TableRecord_db_meta(id=None, kind="hello8", name='123', value='111'))
		try_fin = True
	except:
		pass
	assert(not try_fin)

	# add two holbaruns
	def create_holbarun(i):
		progs_list = db.add_tablerecord(logsdb.get_empty_TableRecord("exp_progs_lists")._replace(name = f"holbarun_{i}"))
		exps_list  = db.add_tablerecord(logsdb.get_empty_TableRecord("exp_exps_lists")._replace(name =  f"holbarun_{i}"))
		holbarun   = db.add_tablerecord(logsdb.TableRecord_holba_runs(
			id=None,
			time=f"time {i}",
			exp_progs_lists_id = progs_list.id,
			exp_exps_lists_id = exps_list.id))
		return holbarun
	holbarun_1 = create_holbarun(1)
	holbarun_2 = create_holbarun(2)
	# try to break foreign key constraint
	try_fin = False
	try:
		db.add_tablerecord(logsdb.TableRecord_holba_runs(
			id=None,
			time="some new string",
			exp_progs_lists_id = holbarun_1.exp_progs_lists_id+10000,
			exp_exps_lists_id = holbarun_1.exp_exps_lists_id+20000))
		try_fin = True
	except:
		pass
	assert(not try_fin)

	# add two progs for each run
	def add_prog(i, holbarun):
		prog = db.add_tablerecord(logsdb.get_empty_TableRecord("exp_progs")._replace(code = f"crazy code {i}"))
		db.add_tablerecord(logsdb.TableRecord_exp_progs_lists_entries(exp_progs_lists_id=holbarun.exp_progs_lists_id, exp_progs_id=prog.id))
		return prog

	prog_11 = add_prog(11, holbarun_1)
	prog_12 = add_prog(12, holbarun_1)
	prog_21 = add_prog(21, holbarun_2)
	prog_22 = add_prog(22, holbarun_2)
	# add one program in the list of the other run, this should work
	db.add_tablerecord(logsdb.TableRecord_exp_progs_lists_entries(exp_progs_lists_id=holbarun_1.exp_progs_lists_id, exp_progs_id=prog_22.id))

	# add a few experiments, two per program
	def add_exp(i, prog, holbarun):
		exp = db.add_tablerecord(logsdb.TableRecord_exp_exps(id=None, exp_progs_id=prog.id, input_data=f"crazy inputs {i}"))
		return exp

	exp_111 = add_exp(111, prog_11, holbarun_1)
	exp_112 = add_exp(112, prog_11, holbarun_1)
	exp_121 = add_exp(121, prog_12, holbarun_1)
	exp_122 = add_exp(122, prog_12, holbarun_1)
	exp_211 = add_exp(211, prog_21, holbarun_2)
	exp_212 = add_exp(212, prog_21, holbarun_2)
	exp_221 = add_exp(221, prog_22, holbarun_2)
	exp_222 = add_exp(222, prog_22, holbarun_2)

	# print state of database
	print("=" * 40)
	print(db.to_string(True))
	return True


opdict = {"backup"  : op_backup,
          "importdb": op_importdb,
          "create"  : op_create,
          "append"  : op_append,
          "query"   : op_query,
          "test"   : op_test}

# execute operation accordingly
logging.info(f"executing operation {operation}")
opfun = opdict[operation]

# create db access object
with logsdb.LogsDB() as db:
	ret_val = opfun(db, json_arguments)
	#ret_val = json_arguments
	#ret_val = {"1": "hello 123", "2": [1,2,3,4], "3": {"hello":123, "hello2":1234}}

# return value is serialized with json and printed on stdout
print(json.dumps(ret_val))



