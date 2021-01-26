#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb
import logslist

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("listname", help="name of program list to filter")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)

listname = args.listname


# filter function
def filter_fun(code):
	lines = list(map(lambda x: x.strip(), code.splitlines()))
	#print(lines)

	# find cmp and b lines
	line_idx = next(i for i, x in enumerate(lines) if x.startswith("cmp"))
	assert (lines[line_idx+1].startswith("b"))
	lines = lines[line_idx+2:]
	#print(lines)

	# drop b and nop at the end
	line_idx = len(lines)-2
	assert (lines[line_idx].startswith("b"))
	assert (lines[line_idx+1].startswith("nop"))
	lines = lines[:line_idx]
	#print(lines)

	# map to register pair list (parse registers of loads)
	def parse_src_regs(indir):
		assert(indir[0] == "[")
		assert(indir[len(indir)-1] == "]")
		indir = indir[1:-1]
		ops = list(map(lambda x: x.strip(), indir.split(",")))
		assert(len(ops) == 1 or (len(ops) == 2 and ops[1].startswith("#")))
		assert(ops[0].startswith("x"))
		return [ops[0]]
		
	def parse_ldr_line(line):
		opcode = "ldr" + " "
		assert(line.startswith(opcode))
		line = line[len(opcode):]
		parts = line.split(",")
		reg_dst = parts[0].strip()
		src = ",".join(parts[1:]).strip()
		src_regs = parse_src_regs(src)
		return (reg_dst, src_regs)
	loads_regs = list(map(parse_ldr_line, lines))
	#print(loads_regs)

	# loop through and collect updated regs and see if backwards references exist
	written_regs = set()
	for (reg_dst, src_regs) in loads_regs:
		if (any(map(lambda x: x in written_regs, src_regs))):
			return False
		written_regs.add(reg_dst)

	return True

print("opening db...")
print()
db = ldb.LogsDB()
db.connect()


# collect progs
progs = logslist.LogsList._get_by_name(db, "prog", listname).get_entries()
print(f"found {len(progs)} progs")
print()

# create proglist for filtered progs
new_listname = f"FILTER.{listname}"
new_list = db.add_tablerecord(ldb.get_empty_TableRecord("exp_progs_lists")._replace(name=new_listname,description="filter_proglist_proto"))
print(f"created new list - '{new_listname}'")
print()

# iterate progs
n_progs = 0
for (lidx, prog) in progs:
	keep = filter_fun(prog.get_code())
	print_them = False
	if not keep:
		if print_them:
			print(f"prog_id = {prog.get_prog_id()}")
			print(f"list_id = {lidx}")
			print(prog.get_code())
			print()
		continue
	n_progs += 1
	db.add_tablerecord(ldb.TR_exp_progs_lists_entries(exp_progs_lists_id=new_list.id, exp_progs_id=prog.get_prog_id(), list_index=lidx))

print(f"added {n_progs} progs to new list")
