#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging
import math

import logsdb as ldb
import logslist

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("listname", help="name of prog list (cannot handle experiment lists currently)")
parser.add_argument("num_lists", help="number of lists to produce", type=int)

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

listname = args.listname
num_lists = args.num_lists

assert(num_lists > 0)

print(f"Name of prog list: {listname}")
print(f"Number of lists:   {num_lists}")
print()

print("opening db...")
print()
db = ldb.LogsDB()
db.connect()


# collect progs of original list
progs = logslist.LogsList._get_by_name(db, "prog", listname).get_entries()
print(f"found {len(progs)} progs")
print()


# prepare container sizes (stupid but correct implementation)
chunk_szs = list(0 for _ in range(0, num_lists))
i = 0
for _ in progs:
	chunk_szs[i] += 1
	i = (i + 1) % num_lists
assert(sum(chunk_szs) == len(progs))
# convert to start and end index pair
chunk_idxs = []
for c_sz in chunk_szs:
	start_idx = 0 if len(chunk_idxs) == 0 else chunk_idxs[len(chunk_idxs)-1][1]
	chunk_idxs.append((start_idx, start_idx + c_sz))
#print(chunk_idxs)

# prepare containers as chunks (all the efforts to keep the order)
containers = [progs[s_idx:e_idx] for (s_idx, e_idx) in chunk_idxs]
#print(containers[0])
container_szs = list(map(len, containers))
print(container_szs)
assert(container_szs == chunk_szs)

print()
for i in range(len(containers)):
	new_listname = f"SPLIT.{listname}.{i}"
	new_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs_lists")._replace(name=new_listname,description="split_list"))
	print(f"created new list - '{new_listname}'")

	container = containers[i]
	print(f"container {i} has length {len(container)}")

	for (lidx, prog) in container:
		db.add_tablerecord(ldb.TR_exp_progs_lists_entries(exp_progs_lists_id=new_list.id, exp_progs_id=prog.get_prog_id(), list_index=lidx))
		pass

	print()

