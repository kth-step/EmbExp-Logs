#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb
import progplatform
import exprun
import experiment
from helpers import *
from exp_runner import *

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("logs_root",       help="root directory of old Embexp-Logs")
parser.add_argument("--arch_id",       help="architecture id, default: arm8")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

arch_id   = args.arch_id
logs_root = args.logs_root
# defaults
if arch_id == None:
	arch_id = "arm8"

time_str_for_db = exprun._gen_dotfree_time_str()

def read_file(b, fn):
	with open(os.path.join(b, fn), "r") as f:
		return f.read()

def collect_structure(startpath):
	struct = {"dirs": {}, "files": []}

	for root, dirs, files in os.walk(startpath):
		relpath = root.replace(startpath, '').split(os.sep)
		assert relpath[0] == ""
		relpath = relpath[1:]
		# find the right place
		relstruct = struct
		for d in relpath:
			relstruct = relstruct["dirs"][d]
		# place all dirs and files there
		relstruct["files"].extend(files)
		for d in dirs:
			relstruct["dirs"][d] = {"dirs": {}, "files": []}

	return struct

def rewrite_structure(struct):
	newstruct = {}
	for f in struct["files"]:
		newstruct[f] = None
	for dn in struct["dirs"]:
		newstruct[dn] = rewrite_structure(struct["dirs"][dn])
	return newstruct

def structure_dirs(s):
	return list(filter(lambda x: x != None, s))

def structure_files(s):
	return list(filter(lambda x: x == None, s))


print("going through files and directories")
print("=" * 60)
# collect directory and file tree
logging.info("collecting directory and file tree of arm8")
rootpath = os.path.join(logs_root, arch_id)
arch_structure = rewrite_structure(collect_structure(rootpath))
progs = structure_dirs(arch_structure["progs"])
expts = list(filter(lambda x: x != "progs", structure_dirs(arch_structure)))
exps = []
for et in expts:
	assert (et == "exps2")
	et2s = structure_dirs(arch_structure[et])
	for et2 in et2s:
		for ei in structure_dirs(arch_structure[et][et2]):
			exp_id = f"{arch_id}/{et}/{et2}/{ei}"
			exps.append(exp_id)

# collect all programs and experiments
logging.info("collecting all programs and experiments")
print("found:")
print(f"\tn_progs = {len(progs)} (this number is only based on the number of progs subdirectories)")
print(f"\tn_exps  = {len(exps)}")
print()


# open db
# ===============================================

# db connection
print("opening db...")
print()
db = ldb.LogsDB()
db.connect()


# import holba runs
# ===============================================
print()
print("holbaruns")
print("=" * 60)
holbaruns_dir = os.path.join(logs_root, "holbaruns")
holbarun_structure = rewrite_structure(collect_structure(holbaruns_dir))
holbaruns = structure_dirs(holbarun_structure)
def get_holbarun(holbarun_id):
	b = os.path.join(holbaruns_dir, holbarun_id)
	ks = ["args", "commit", "diff", "log", "randseed", "time"]
	to_filename = lambda x: f"holba.{x}"
	meta = dict(map(lambda x: (x, read_file(b, to_filename(x))), ks))

	filenames = list(map(to_filename, ks))
	for fn in structure_dirs(holbarun_structure[holbarun_id]):
		fn = str(fn)
		if not fn in filenames:
			raise Exception(fn)

	return meta

def store_holba_run(holbarun_id, meta):
	# make prog list, exp list
	progs_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs_lists")._replace(name=f"IMPORTOLD.{holbarun_id}", description="import"))
	exps_list  = db.add_tablerecord(ldb.get_empty_TableRecord("exp_exps_lists" )._replace(name=f"IMPORTOLD.{holbarun_id}", description="import"))
	# add actual holbarun
	holbarun   = db.add_tablerecord(ldb.TR_holba_runs(
		id=None,
		name=holbarun_id,
		exp_progs_lists_id = progs_list.id,
		exp_exps_lists_id = exps_list.id))
	# add the metadata
	for k in meta.keys():
		tr_meta = ldb.TR_holba_runs_meta(holba_runs_id=holbarun.id, kind=k, name="", value=meta[k])
		db.add_tablerecord(tr_meta)
	return (holbarun.id, progs_list.id, exps_list.id)

holbarun_ids_map = {}
holbarun_l_idx_map = {}
num_dot = 100
i = 0
for holbarun_id in holbaruns:
	i = (i + 1) % num_dot
	if i == 0:
		print('.', end='', flush=True)
	meta = get_holbarun(holbarun_id)
	db_ids = store_holba_run(holbarun_id, meta)
	holbarun_ids_map[holbarun_id] = db_ids
	holbarun_l_idx_map[holbarun_id] = {"prog_l": 1, "exp_l": 1}


# import progs
# ===============================================
print()
print("progs")
print("=" * 60)
progsdir = os.path.join(rootpath, "progs")

def get_prog(prog_id):
	b = os.path.join(progsdir, prog_id)
	prog_dir_structure = arch_structure["progs"][prog_id]
	files_in_dir = structure_dirs(prog_dir_structure)
	dirs_in_dir = list(filter(lambda x: os.path.isdir(os.path.join(b, (x))), map(str, files_in_dir)))
	assert(dirs_in_dir == [])

	if (files_in_dir == []):
		return None

	code_filename = "code.asm"
	assert(code_filename in files_in_dir)
	files_in_dir.remove(code_filename)
	code = read_file(b, code_filename)

	meta = list(map(lambda x: ("log", x, read_file(b, x)), files_in_dir))

	return (code,meta)

# create list for adding progs to be imported
progs_all_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs_lists")._replace(name=f"IMPORTOLD.{time_str_for_db}", description="collection for import from old files"))
progs_all_list_idx = [1]
def store_prog(prog_id, code, meta):
	assert(arch_id == "arm8")
	# add program and also add it to common import list
	prog_db = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs")._replace(arch=arch_id, code=code), match_existing=True)
	db.add_tablerecord(ldb.TR_exp_progs_lists_entries(exp_progs_lists_id=progs_all_list.id, exp_progs_id=prog_db.id, list_index=progs_all_list_idx[0]))
	progs_all_list_idx[0] += 1
	# add metadata
	for (k,n,v) in meta:
		tr_meta = ldb.TR_exp_progs_meta(exp_progs_id=prog_db.id, kind=k, name=n, value=v)
		db.add_tablerecord(tr_meta)
		# try to match holba runs
		if n.startswith("gen."):
			horun_id = n.split(".")[1]
			if horun_id in holbarun_ids_map.keys():
				prog_l_id = holbarun_ids_map[horun_id][1]
				prog_l_list_idx = holbarun_l_idx_map[holbarun_id]["prog_l"]
				db.add_tablerecord(ldb.TR_exp_progs_lists_entries(exp_progs_lists_id=prog_l_id, exp_progs_id=prog_db.id, list_index=prog_l_list_idx))
				holbarun_l_idx_map[holbarun_id]["prog_l"] = prog_l_list_idx + 1
	return prog_db.id

prog_ids_map = {}
i = 0
for prog_id in progs:
	i = (i + 1) % num_dot
	if i == 0:
		print('.', end='', flush=True)
	res = get_prog(prog_id)
	if res == None:
		logging.warning("skipping prog: " ^ prog_id)
		continue
	code,meta = res
	db_id = store_prog(prog_id, code, meta)
	prog_ids_map[prog_id] = db_id


# import exps
# ===============================================
print()
print("exps")
print("=" * 60)

def get_exp(exp_id):
	b = os.path.join(logs_root, exp_id)
	exp_id_p = exp_id.split("/")
	assert(len(exp_id_p) == 4)
	exp_type = exp_id_p[1]
	assert(exp_type == "exps2")
	exp_params = exp_id_p[2]
	exp_hash = exp_id_p[3]
	s = arch_structure[exp_type][exp_params][exp_hash]

	files_in_dir = structure_dirs(s)
	dirs_in_dir = list(filter(lambda x: os.path.isdir(os.path.join(b, (x))), map(str, files_in_dir)))
	files_in_dir = list(filter(lambda x: os.path.isfile(os.path.join(b, (x))), map(str, files_in_dir)))

	with_train = False
	needed_files = ["code.hash", "input1.json", "input2.json"]
	if with_train:
		needed_files = needed_files + ["train.json"]
	else:
		assert(not "train.json" in files_in_dir) # see hard coded option a few lines above

	for fn in needed_files:
		if not fn in files_in_dir:
			return None

	def load_and_remove(fn):
		assert(fn in files_in_dir)
		files_in_dir.remove(fn)
		return read_file(b, fn)

	codehash = load_and_remove("code.hash")
	input_1 = json.loads(load_and_remove("input1.json"))
	input_2 = json.loads(load_and_remove("input2.json"))

	input_data = {"input_1": input_1, "input_2": input_2}
	if with_train:
		input_train = json.loads(load_and_remove("train.json"))
		input_data["input_train"] = input_train

	meta = list(map(lambda x: ("log", x, read_file(b, x)), files_in_dir))
	meta.append(("","experiment_hash",exp_hash))

	assert(all(map(lambda x: x.startswith("run."), dirs_in_dir)))
	runs = []
	for run in dirs_in_dir:
		b = os.path.join(b, run)
		files_m = {"output_uart.log": "output_uart", "result.json": "result"}
		get_fn = lambda x: os.path.join(b, x)
		all_exist = all(map(lambda x: os.path.isfile(get_fn(x)), files_m.keys()))
		if not all_exist:
			continue
		run_data = dict(map(lambda x: (files_m[x], read_file(b, x)), files_m.keys()))
		runs.append((str(run), run_data))

	return (codehash, exp_type, exp_params, json.dumps(input_data, separators=(',', ':')), meta, runs)

# create list for adding all experiments
exps_all_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_exps_lists")._replace(name=f"IMPORTOLD.{time_str_for_db}", description="collection for import from old files"))
exps_all_list_idx = [1]
def store_exp(exp_data):
	(codehash, exp_type, exp_params, input_data, meta, runs) = exp_data
	# add exp and also add it to common import list
	exp_tr = ldb.TR_exp_exps(
			id=None,
			exp_progs_id=prog_ids_map[codehash],
			type=exp_type,
			params=exp_params,
			input_data=input_data
		)
	exp_db = db.add_tablerecord(exp_tr, match_existing=True)
	db.add_tablerecord(ldb.TR_exp_exps_lists_entries(exp_exps_lists_id=exps_all_list.id, exp_exps_id=exp_db.id, list_index=exps_all_list_idx[0]))
	exps_all_list_idx[0] += 1
	# add metadata
	for (k,n,v) in meta:
		tr_meta = ldb.TR_exp_exps_meta(exp_exps_id=exp_db.id, kind=k, name=n, value=v)
		db.add_tablerecord(tr_meta)
		# try to match holba runs
		if n.startswith("gen."):
			horun_id = n.split(".")[1]
			if horun_id in holbarun_ids_map.keys():
				exp_l_id = holbarun_ids_map[horun_id][2]
				exp_l_list_idx = holbarun_l_idx_map[holbarun_id]["exp_l"]
				db.add_tablerecord(ldb.TR_exp_exps_lists_entries(exp_exps_lists_id=exp_l_id, exp_exps_id=exp_db.id, list_index=exp_l_list_idx))
				holbarun_l_idx_map[holbarun_id]["exp_l"] = exp_l_list_idx + 1
	# add runs
	for run in runs:
		(run_name,run_data) = run
		for k in run_data.keys():
			tr_meta = ldb.TR_exp_exps_meta(exp_exps_id=exp_db.id, kind=k, name=run_name, value=run_data[k])
			db.add_tablerecord(tr_meta)

	return exp_db.id

i = 0
for exp_id in exps:
	i = (i + 1) % num_dot
	if i == 0:
		print('.', end='', flush=True)
	res = get_exp(exp_id)
	if res == None:
		logging.warning("skipping exp: " + exp_id)
		continue
	db_id = store_exp(res)

print()
print("=" * 60)
print("DONE")

