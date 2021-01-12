#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import logging
import copy

import logsdb as ldb

# raise the logging level
logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)

def initial_db_tests(db):
	# helper function to check failing cases
	def ensure_failing(f, *a):
		try_fin = False
		try:
			f(*a)
			try_fin = True
		except Exception as e:
			print(e)
		assert(not try_fin)

	# general tests
	TR_db_meta_empty = ldb.TR_db_meta._make([None]*4)
	assert(TR_db_meta_empty == ldb.get_empty_TableRecord(ldb.TR_db_meta))
	assert(TR_db_meta_empty == ldb.get_empty_TableRecord("db_meta"))

	# make sure that the database is cleared
	try:
		for t in ldb.tables_all:
			n = db.get_tablerecord_matches(ldb.get_empty_TableRecord(t), True)
			if t == "db_meta":
				assert(n == 1)
			else:
				assert(n == 0)
	except:
		raise Exception("database must be cleared before testing")

	# add a bit of metadata
	_db_meta = db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta"))
	_db_meta += [db.add_tablerecord(ldb.TR_db_meta(id=None, kind=None, name='hellO', value='me123'))]
	_db_meta += [db.add_tablerecord(ldb.TR_db_meta(id=None, kind=None, name='hellO', value='me123'))]
	_db_meta += [db.add_tablerecord(ldb.TR_db_meta(id=None, kind="hello8", name='123', value='me123'))]
	_db_meta_1 = db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta"))
	#print(_db_meta)
	#print(_db_meta_1)
	assert(_db_meta == _db_meta_1)
	# check countonly option
	assert(len(db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta")))
		== db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta"), True))
	# try to break uniqueness constraint
	ensure_failing(db.add_tablerecord, ldb.TR_db_meta(id=None, kind="hello8", name='123', value='111'))

	# add two holbaruns
	def create_holbarun(i):
		progs_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs_lists")._replace(name = f"holbarun_{i}"))
		exps_list  = db.add_tablerecord(ldb.get_empty_TableRecord("exp_exps_lists")._replace(name =  f"holbarun_{i}"))
		holbarun   = db.add_tablerecord(ldb.TR_holba_runs(
			id=None,
			time=f"time {i}",
			exp_progs_lists_id = progs_list.id,
			exp_exps_lists_id = exps_list.id))
		return holbarun
	holbarun_1 = create_holbarun(1)
	holbarun_2 = create_holbarun(2)
	# try to break foreign key constraint
	ensure_failing(db.add_tablerecord, ldb.TR_holba_runs(
			id=None,
			time="some new string",
			exp_progs_lists_id = holbarun_1.exp_progs_lists_id+10000,
			exp_exps_lists_id = holbarun_1.exp_exps_lists_id+20000))

	# add two progs for each run
	def add_prog(i, holbarun):
		prog = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs")._replace(arch = "arch5000", code = f"crazy code {i}"))
		db.add_tablerecord(ldb.TR_exp_progs_lists_entries(exp_progs_lists_id=holbarun.exp_progs_lists_id, exp_progs_id=prog.id))
		return prog

	prog_11 = add_prog(11, holbarun_1)
	prog_12 = add_prog(12, holbarun_1)
	prog_21 = add_prog(21, holbarun_2)
	prog_22 = add_prog(22, holbarun_2)
	# add one program in the list of the other run, this should work
	db.add_tablerecord(ldb.TR_exp_progs_lists_entries(exp_progs_lists_id=holbarun_1.exp_progs_lists_id, exp_progs_id=prog_22.id))

	# add a few experiments, two per program
	def add_exp(i, prog, holbarun):
		exp = db.add_tablerecord(ldb.TR_exp_exps(id=None, exp_progs_id=prog.id, type="exps2", params="amazing_model", input_data=f"crazy inputs {i}"))
		db.add_tablerecord(ldb.TR_exp_exps_lists_entries(exp_exps_lists_id=holbarun.exp_exps_lists_id, exp_exps_id=exp.id))
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

	exp1         = ldb.QE_Bin(op=ldb.QE_Bop.LIKE, arg1=ldb.QE_Ref(index=0, field="code"), arg2=ldb.QE_Const(value="crazy%"))
	res1         = db.get_tablerecords("exp_progs", [], exp1, order_by = [(0, "id", False)], count_only = False)
	res1_cnt     = db.get_tablerecords("exp_progs", [], exp1, order_by = [(0, "id", False)], count_only = True, id_only = False)
	res1_cnt2    = db.get_tablerecords("exp_progs", [], exp1, order_by = [(0, "id", False)], count_only = True, id_only = True)
	res1_alt     = db.get_tablerecords("exp_progs", [], exp1, order_by = [(0, "id", False)], count_only = False, id_only = True)
	res1_expect  = [prog_22, prog_21, prog_12, prog_11]
	res1_expect_id = list(map(lambda x: ldb.TR_id_only._make([x.id]), res1_expect))
	assert(res1 == res1_expect)
	assert(res1_cnt == len(res1_expect))
	assert(res1_cnt2 == res1_cnt)
	assert(res1_alt == res1_expect_id)

	exp2         = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=0, field="code"), arg2=ldb.QE_Const(value="crazy code 11"))
	res2         = db.get_tablerecords("exp_progs", [], exp2, order_by = [(0, "id", False)], count_only = False)
	res2_expect  = [prog_11]
	assert(res2 == res2_expect)

	exp3         = ldb.QE_Bin(op=ldb.QE_Bop.IN, arg1=ldb.QE_Ref(index=0, field="code"), arg2=ldb.QE_Const(value=["crazy code 11", "crazy code 21"]))
	res3         = db.get_tablerecords("exp_progs", [], exp3, order_by = [(0, "id", True), (0, "code", True)], count_only = False)
	res3_alt     = db.get_tablerecords("exp_progs", [], exp3, order_by = [], count_only = False)
	res3_expect  = [prog_11, prog_21]
	assert(res3 == res3_expect)
	assert(res3_alt == res3_expect)

	# add tests for interesting joins and queries with AND, OR and NOT
	exp10        = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=2, field="name"), arg2=ldb.QE_Const(value="holbarun_1"))
	res10        = db.get_tablerecords("exp_progs", [("exp_progs_lists_entries", 0), ("exp_progs_lists", 1)], exp10)
	res10_expect = [prog_11, prog_12, prog_22]
	assert(res10 == res10_expect)

	exp11        = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=2, field="name"), arg2=ldb.QE_Const(value="holbarun_2"))
	res11        = db.get_tablerecords("exp_progs", [("exp_progs_lists_entries", 0), ("exp_progs_lists", 1)], exp11)
	res11_expect = [prog_21, prog_22]
	assert(res11 == res11_expect)

	exp12        = ldb.QE_Bin(op=ldb.QE_Bop.OR, arg1=exp10, arg2=exp11)
	res12        = db.get_tablerecords("exp_progs", [("exp_progs_lists_entries", 0), ("exp_progs_lists", 1)], exp12)
	res12_expect = [prog_11, prog_12, prog_22, prog_21]
	assert(res12 == res12_expect)

	exp13        = ldb.QE_Not(arg=exp10)
	res13        = db.get_tablerecords("exp_progs", [("exp_progs_lists_entries", 0), ("exp_progs_lists", 1)], exp13)
	res13_expect = res11_expect
	assert(res13 == res13_expect)

	exp14_p1     = exp10
	exp14_p2     = ldb.QE_Bin(ldb.QE_Bop.EQ, ldb.QE_Ref(4, "name"), ldb.QE_Const("holbarun_2"))
	exp14        = ldb.QE_Bin(ldb.QE_Bop.AND, exp14_p1, exp14_p2)
	res14        = db.get_tablerecords("exp_progs", [("exp_progs_lists_entries", 0), ("exp_progs_lists", 1), ("exp_progs_lists_entries", 0), ("exp_progs_lists", 3)], exp14)
	res14_expect = [prog_22]
	assert(res14 == res14_expect)

	meta0_1 = ldb.TR_holba_runs_meta(holba_runs_id=holbarun_1.id, kind="test1", name="property1", value="some initial value\n")
	meta0_2 = ldb.TR_holba_runs_meta(holba_runs_id=holbarun_1.id, kind="test1", name="property1", value="some new value\n")
	# try to append to non-existing metadata (should not work)
	ensure_failing(db.append_tablerecord_meta, meta0_2)
	# then add and append successfully
	meta1_1 = db.add_tablerecord(meta0_1)
	meta1_2 = db.append_tablerecord_meta(meta0_2)
	meta1_2 = db.append_tablerecord_meta(meta0_1)
	meta1_expect = ldb.TR_holba_runs_meta(holba_runs_id=holbarun_1.id, kind="test1", name="property1", value="some initial value\nsome new value\nsome initial value\n")
	assert(meta1_2 == meta1_expect)

	# add some metadata to a program and an experiment
	meta2 = ldb.TR_exp_progs_meta(exp_progs_id=prog_12.id, kind="test2", name="property2", value="prog_12 special data\n")
	meta2_1 = db.add_tablerecord(meta2)
	assert(meta2 == meta2_1)
	meta3 = ldb.TR_exp_exps_meta(exp_exps_id=exp_122.id, kind="test3", name="property3", value="exp_122 special data\n")
	meta3_1 = db.add_tablerecord(meta3)
	assert(meta3 == meta3_1)

	# print state of database
	print("=" * 40)
	print(db.to_string(True))


# clear testing database
db_file = "data/testing.db"
if os.path.isfile(db_file):
	os.remove(db_file)

# run initial tests on logsdb library (initializes db into defined state)
with ldb.LogsDB(db_file) as db:
	initial_db_tests(db)

# helper to check calls to db-interface.py
def run_db_interface_py(c,i,str_in_output=None):
	from subprocess import Popen, PIPE, STDOUT
	import json
	p = Popen(["./scripts/db-interface.py", "-t", c], stdout=PIPE, stdin=PIPE, stderr=STDOUT)
	data_out, data_err = p.communicate(input=json.dumps(i).encode("utf-8"))
	assert(data_err == None)
	data = data_out.decode("utf-8")
	try:
		p.wait(timeout=5)
	except:
		p.kill()
	assert(p.returncode != None)

	success = p.returncode == 0
	res     = None

	if str_in_output != None:
		if not str_in_output in data:
			raise Exception("expected output not found: " + str_in_output)

	if success:
		#print(i)
		#print(data)
		res = json.loads(data)
	else:
		print(data)
	return (success, res)

ret_failure = (False, None)


# create a few entries
print(("-" * 20) + "> input1")
input1        = {"table": "exp_progs_lists",
                 "values": {"name": "holbarun_3"}}
input1_2      = copy.deepcopy(input1)
input1_2["values"]["id"] = 1234
input1_ret    = run_db_interface_py("create", input1)
input1_2_ret  = run_db_interface_py("create", input1_2, "the id cannot be forced on entries")
input1_3_ret  = run_db_interface_py("create", input1, "UNIQUE constraint failed: exp_progs_lists.name")
input1_expect = (True, {"id": 3, "name": "holbarun_3", "description": None})
assert(input1_ret == input1_expect)
assert(input1_2_ret == ret_failure)
assert(input1_3_ret == ret_failure)

print(("-" * 20) + "> input2")
input2        = {"table": "exp_exps_lists",
                 "values": {"name": "holbarun_3"}}
input2_ret    = run_db_interface_py("create", input2)
input2_expect = input1_expect
assert(input2_ret == input2_expect)

print(("-" * 20) + "> input3")
input3        = {"table": "holba_runs",
                 "values": {"time": "special holbarun_3 time", "exp_progs_lists_id": input1_expect[1]["id"], "exp_exps_lists_id": input2_expect[1]["id"]},
                 "id_only": True}
input3_ret    = run_db_interface_py("create", input3)
input3_expect = (True, {"id": 3})
assert(input3_ret == input3_expect)


# create and append metadata
print(("-" * 20) + "> meta1")
meta1         = {"table": "holba_runs_meta",
                 "values": {"holba_runs_id":input3_expect[1]["id"], "kind":"test9", "name":"property9"}}
meta1_0       = copy.deepcopy(meta1)
meta1_0["values"]["value"] = "value 0\n"
meta1_1       = copy.deepcopy(meta1)
meta1_1["values"]["value"] = "value 1\n"
run_db_interface_py("create", meta1_0)
run_db_interface_py("append", meta1_1)
meta1_ret = run_db_interface_py("append", meta1_1)
meta1_expect = (True, True)
assert(meta1_ret == meta1_expect)

print(("-" * 20) + "> meta1 match")
meta1_m       = {"type": "match_simple",
                 "query": meta1}
meta1_m_ret = run_db_interface_py("query", meta1_m)
meta1_m_expect = (True, {"fields": ["holba_runs_id", "kind", "name", "value"], "rows": [[3, "test9", "property9", "value 0\nvalue 1\nvalue 1\n"]]})
assert(meta1_m_ret == meta1_m_expect)


# simple match query
print(("-" * 20) + "> query1")
query1        = {"type": "match_simple",
                 "query": {"table": "holba_runs_meta",
                           "values": {}}}
query1_ret    = run_db_interface_py("query", query1)
query1_expect = (True, {"fields": ["holba_runs_id", "kind", "name", "value"], "rows": [[1, "test1", "property1", "some initial value\nsome new value\nsome initial value\n"], [3, "test9", "property9", "value 0\nvalue 1\nvalue 1\n"]]})
assert(query1_ret == query1_expect)

print(("-" * 20) + "> query2")
query2        = {"type": "match_simple",
                 "query": {"table": "holba_runs",
                           "values": {"time": "time 1"}}}
query2_ret    = run_db_interface_py("query", query2)
query2_expect = (True, {"fields": ['id', 'time', 'exp_progs_lists_id', 'exp_exps_lists_id'], "rows": [[1, 'time 1', 1, 1]]})
assert(query2_ret == query2_expect)

print(("-" * 20) + "> query3")
query3        = {"type": "match_simple",
                 "query": {"table": "holba_runs",
                           "values": {}}}
query3["query"]["id_only"] = True
query3_ret    = run_db_interface_py("query", query3)
query3_expect = (True, {"fields": ["id"], "rows": [[1], [2], [3]]})
print(query3_ret)
assert(query3_ret == query3_expect)


# try to create another "exp_progs_lists" with "match_existing"
print(("-" * 20) + "> input100")
input100      = copy.deepcopy(input1)
input100["match_existing"] = True
input100_ret  = run_db_interface_py("create", input100)
assert(input100_ret == input1_expect)


# the same should fail if we alter the description, but due to name uniqueness again
print(("-" * 20) + "> input101")
input101      = copy.deepcopy(input100)
input101["values"]["description"] = "some fancy description"
input101_ret  = run_db_interface_py("create", input101, "UNIQUE constraint failed: exp_progs_lists.name")
assert(input101_ret == ret_failure)


# print state of database
with ldb.LogsDB(db_file) as db:
	print("=" * 40)
	print(db.to_string(True))

# all successful
print()
print("All tests finished successfully.")