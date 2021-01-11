#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import logging

import logsdb as ldb

logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)

with ldb.LogsDB() as db:
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
	TR_db_meta_empty = ldb.TableRecord_db_meta._make([None]*4)
	assert(TR_db_meta_empty == ldb.get_empty_TableRecord(ldb.TableRecord_db_meta))
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
	_db_meta += [db.add_tablerecord(ldb.TableRecord_db_meta(id=None, kind=None, name='hellO', value='me123'))]
	_db_meta += [db.add_tablerecord(ldb.TableRecord_db_meta(id=None, kind=None, name='hellO', value='me123'))]
	_db_meta += [db.add_tablerecord(ldb.TableRecord_db_meta(id=None, kind="hello8", name='123', value='me123'))]
	_db_meta_1 = db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta"))
	#print(_db_meta)
	#print(_db_meta_1)
	assert(_db_meta == _db_meta_1)
	# check countonly option
	assert(len(db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta")))
		== db.get_tablerecord_matches(ldb.get_empty_TableRecord("db_meta"), True))
	# try to break uniqueness constraint
	ensure_failing(db.add_tablerecord, ldb.TableRecord_db_meta(id=None, kind="hello8", name='123', value='111'))

	# add two holbaruns
	def create_holbarun(i):
		progs_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs_lists")._replace(name = f"holbarun_{i}"))
		exps_list  = db.add_tablerecord(ldb.get_empty_TableRecord("exp_exps_lists")._replace(name =  f"holbarun_{i}"))
		holbarun   = db.add_tablerecord(ldb.TableRecord_holba_runs(
			id=None,
			time=f"time {i}",
			exp_progs_lists_id = progs_list.id,
			exp_exps_lists_id = exps_list.id))
		return holbarun
	holbarun_1 = create_holbarun(1)
	holbarun_2 = create_holbarun(2)
	# try to break foreign key constraint
	ensure_failing(db.add_tablerecord, ldb.TableRecord_holba_runs(
			id=None,
			time="some new string",
			exp_progs_lists_id = holbarun_1.exp_progs_lists_id+10000,
			exp_exps_lists_id = holbarun_1.exp_exps_lists_id+20000))

	# add two progs for each run
	def add_prog(i, holbarun):
		prog = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs")._replace(arch = "arch5000", code = f"crazy code {i}"))
		db.add_tablerecord(ldb.TableRecord_exp_progs_lists_entries(exp_progs_lists_id=holbarun.exp_progs_lists_id, exp_progs_id=prog.id))
		return prog

	prog_11 = add_prog(11, holbarun_1)
	prog_12 = add_prog(12, holbarun_1)
	prog_21 = add_prog(21, holbarun_2)
	prog_22 = add_prog(22, holbarun_2)
	# add one program in the list of the other run, this should work
	db.add_tablerecord(ldb.TableRecord_exp_progs_lists_entries(exp_progs_lists_id=holbarun_1.exp_progs_lists_id, exp_progs_id=prog_22.id))

	# add a few experiments, two per program
	def add_exp(i, prog, holbarun):
		exp = db.add_tablerecord(ldb.TableRecord_exp_exps(id=None, exp_progs_id=prog.id, type="exps2", params="amazing_model", input_data=f"crazy inputs {i}"))
		db.add_tablerecord(ldb.TableRecord_exp_exps_lists_entries(exp_exps_lists_id=holbarun.exp_exps_lists_id, exp_exps_id=exp.id))
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
	res1_expect_id = list(map(lambda x: ldb.TableRecord_id_only._make([x.id]), res1_expect))
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

	meta0_1 = ldb.TableRecord_holba_runs_meta(holba_runs_id=holbarun_1.id, kind="test1", name="property1", value="some initial value\n")
	meta0_2 = ldb.TableRecord_holba_runs_meta(holba_runs_id=holbarun_1.id, kind="test1", name="property1", value="some new value\n")
	# try to append to non-existing metadata (should not work)
	ensure_failing(db.append_tablerecord_meta, meta0_2)
	# then add and append successfully
	meta1_1 = db.add_tablerecord(meta0_1)
	meta1_2 = db.append_tablerecord_meta(meta0_2)
	meta1_2 = db.append_tablerecord_meta(meta0_1)
	meta1_expect = ldb.TableRecord_holba_runs_meta(holba_runs_id=holbarun_1.id, kind="test1", name="property1", value="some initial value\nsome new value\nsome initial value\n")
	assert(meta1_2 == meta1_expect)

	# add some metadata to a program and an experiment
	meta2 = ldb.TableRecord_exp_progs_meta(exp_progs_id=prog_12.id, kind="test2", name="property2", value="prog_12 special data\n")
	meta2_1 = db.add_tablerecord(meta2)
	assert(meta2 == meta2_1)
	meta3 = ldb.TableRecord_exp_exps_meta(exp_exps_id=exp_122.id, kind="test3", name="property3", value="exp_122 special data\n")
	meta3_1 = db.add_tablerecord(meta3)
	assert(meta3 == meta3_1)

	# print state of database
	print("=" * 40)
	print(db.to_string(True))
