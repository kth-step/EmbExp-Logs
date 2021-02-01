#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb

# parse arguments
parser = argparse.ArgumentParser()

parser.add_argument("dbfile", help="name of new db file (is created under 'data/export/')")
parser.add_argument("listname", help="name of experiment list to export")

parser.add_argument("-t", "--testing", help="uses testing database (i.e. for testing only)", action="store_true")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

listname = args.listname
is_testing = args.testing
dbfilename = os.path.join("data/export", args.dbfile)

def create_exportdb(dbfilename):
	db_export = ldb.LogsDB(dbfilename)
	db_export_file = os.path.abspath(db_export.database_file)
	logging.info("using db file: " + db_export_file)
	# make sure export db is new
	if os.path.exists(db_export_file):
		raise Exception("export db must be new. exists already: " + db_export_file)
	# return db (is intended to be used in a "with" statement)
	return db_export


# create db access object
alt_db_file = None if not is_testing else "data/testing.db"
with ldb.LogsDB(alt_db_file) as db:
	# find and collect list, experiments and their metadata
	# 1. list
	list_recs_ = db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_exps_lists"))
	list_recs = list(filter(lambda x: x.name == listname, list_recs_))
	assert(len(list_recs) < 2)
	if len(list_recs) != 1:
		raise Exception(f"could not find experiment list '{listname}'")
	list_rec = list_recs[0]
	print("found the list")

	# 2. list entries
	list_entr_recs = db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_exps_lists_entries")._replace(exp_exps_lists_id=list_rec.id))
	print(f"found {len(list_entr_recs)} list entries")

	# 3. exps
	expr_ref  = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=0, field="id"), arg2=ldb.QE_Ref(index=1, field="exp_exps_id"))
	expr_id   = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=1, field="exp_exps_lists_id"), arg2=ldb.QE_Const(value=list_rec.id))
	expr      = ldb.QE_Bin(op=ldb.QE_Bop.AND, arg1=expr_ref, arg2=expr_id)
	exps_recs = db.get_tablerecords("exp_exps", [("exp_exps_lists_entries", 0)], expr)
	print(f"found {len(exps_recs)} experiments")

	# 4. progs
	expr_ref1 = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=0, field="id"), arg2=ldb.QE_Ref(index=1, field="exp_progs_id"))
	expr_ref2 = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=1, field="id"), arg2=ldb.QE_Ref(index=2, field="exp_exps_id"))
	expr_id   = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=2, field="exp_exps_lists_id"), arg2=ldb.QE_Const(value=list_rec.id))
	expr      = ldb.QE_Bin(op=ldb.QE_Bop.AND, arg1=ldb.QE_Bin(op=ldb.QE_Bop.AND, arg1=expr_ref1, arg2=expr_ref2), arg2=expr_id)
	progs_recs = db.get_tablerecords("exp_progs", [("exp_exps", 0), ("exp_exps_lists_entries", 1)], expr)
	print(f"found {len(progs_recs)} programs")

	# 5. exps metadata
	expr_ref1 = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=0, field="exp_exps_id"), arg2=ldb.QE_Ref(index=1, field="id"))
	expr_ref2 = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=1, field="id"), arg2=ldb.QE_Ref(index=2, field="exp_exps_id"))
	expr_id   = ldb.QE_Bin(op=ldb.QE_Bop.EQ, arg1=ldb.QE_Ref(index=2, field="exp_exps_lists_id"), arg2=ldb.QE_Const(value=list_rec.id))
	expr      = ldb.QE_Bin(op=ldb.QE_Bop.AND, arg1=ldb.QE_Bin(op=ldb.QE_Bop.AND, arg1=expr_ref1, arg2=expr_ref2), arg2=expr_id)
	meta_recs = db.get_tablerecords("exp_exps_meta", [("exp_exps", 0), ("exp_exps_lists_entries", 1)], expr)
	print(f"found {len(meta_recs)} items of experiment metadata")

	num_dot = 100
	print()
	print(f"opening the database for exporting ({num_dot} rows are one dot)")
	with create_exportdb(dbfilename) as db_export:
		# store all successively and keep ids exactly
		def add_rec_list(n, recs):
			print(f'exporting {n}: ', end='', flush=True)
			i = 0
			for rec in recs:
				i = (i + 1) % num_dot
				if i == 0:
					print('.', end='', flush=True)
				db_export.add_tablerecord(rec, allow_id = True)
			print()

		# 1. list
		add_rec_list("list", [list_rec])

		# 2. progs
		add_rec_list("programs", progs_recs)

		# 3. exps
		add_rec_list("experiments", exps_recs)

		# 4. list entries
		add_rec_list("list entries", list_entr_recs)

		# 5. exps metadata
		add_rec_list("experiment metadata", meta_recs)


print()
print(f"Export of experiment list '{listname}' into database at '{dbfilename}' finished.")

