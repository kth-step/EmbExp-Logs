
import logging
import os
import json

import logsdb as ldb
import program

import helpers

_run_id_meta_prefix = "run."
def _mk_run_spec(progplat_hash, board_type):
	return f"{progplat_hash}.{board_type}"
def _dest_run_id(run_id):
	parts = run_id.split(".")
	assert(len(parts) == 3)
	return (".".join(parts[0:2]), parts[2])

class Experiment:
	def __init__(self, db, exp):
		self.db = db

		if type(exp) == int:
			exps = db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_exps")._replace(id=exp))
			assert(len(exps) == 1)
			self.exp = exps[0]
		else:
			self.exp = exp

		self.inputs = None
		self.prog = None
		self.metadata = None

	def get_exp_id(self):
		return self.exp.id

	def get_prog_id(self):
		return self.exp.exp_progs_id

	def get_exp_type(self):
		return self.exp.type

	def get_exp_params(self):
		return self.exp.params

	def get_inputs(self):
		if self.inputs == None:
			self.inputs = json.loads(self.exp.input_data)
		return self.inputs

	def _proc_input_state(inp, statename):
		def value_parse_rec(d, convkey = False):
			d_ = {}
			for k in d:
				v = d[k]
				if convkey and k != "default":
					k = (int(k, 16) if type(k) == str else k)
				if isinstance(v, dict):
					v_ = value_parse_rec(v, True)
				else:
					v_ = int(v, 16) if type(v) == str else v
				d_[k] = v_
			return d_

		if not statename in inp.keys():
			return None
		return value_parse_rec(inp[statename])

	def get_input_state(self, statename):
		return Experiment._proc_input_state(self.get_inputs(), statename)

	def is_valid_experiment(self):
		# data consistency check, if needed in the future
		return True

	# link to program
	# =========================================
	def get_prog(self):
		if self.prog == None:
			self.prog = program.Program(self.db, self.get_prog_id())
		return self.prog

	# get all from db
	# =========================================
	def _get_all(db):
		records = db.get_tablerecord_matches(ldb.get_empty_TableRecord(f"exp_exps"))
		return list(map(lambda x: Experiment(db, x), records))

	# experiment run management (run)
	# =========================================
	def get_metadata(self):
		if self.metadata == None:
			self.metadata = self.db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_exps_meta")._replace(exp_exps_id=self.get_exp_id()))
		return self.metadata

	def get_all_run_ids(self):
		metadata_names = map(lambda x: x.name, self.get_metadata())
		run_ids_ = set(filter(lambda x: x.startswith(_run_id_meta_prefix), metadata_names))
		run_ids  = list(set(map(lambda x: x[len(_run_id_meta_prefix):],run_ids_)))
		return run_ids

	def get_run_specs(self):
		run_ids   = self.get_all_run_ids()
		run_specs = list(set(map(lambda x: _dest_run_id(x)[0], run_ids)))
		return run_specs

	def get_run_ids(self, run_spec):
		run_ids  = self.get_all_run_ids()
		run_ids_ = list(filter(lambda x: _dest_run_id(x)[0] == run_spec, run_ids))
		return run_ids_

	# uses lexicographic order (behind run_spec part decides)
	def get_latest_run_id(self, run_spec):
		ids = self.get_run_ids(run_spec)
		if len(ids) == 0:
			return None
		ids.sort()
		return ids[len(ids)-1]

	# read previous run data
	# =========================================
	def get_run_data(self, run_id):
		run_metadata = filter(lambda x: x.name == (_run_id_meta_prefix + run_id), self.get_metadata())
		run_data = dict(map(lambda x: (x.kind, json.loads(x.value) if x.kind == "result" else x.value), run_metadata))
		if len(run_data) == 0:
			raise Exception("there is no such run")
		return run_data

	def is_complete_run(run_data):
		must_have = ["output_uart", "result"]
		r = all(map(lambda x: x in run_data.keys(), must_have))
		return r

	# recording a new run
	# =========================================
	def write_new_run(self, exprun, run_spec, run_data):
		assert(len(run_spec.split(".")) == 2)
		assert(Experiment.is_complete_run(run_data))

		run_id = run_spec + "." + exprun.get_name()
		meta_name = _run_id_meta_prefix + run_id

		last_run_id = self.get_latest_run_id(run_spec)
		nomismatches = True
		if last_run_id == None:
			last_run_exists = False
		else:
			last_run_exists = True
			last_run_data = self.get_run_data(last_run_id)
			last_is_complete = Experiment.is_complete_run(last_run_data)
			nomismatches = nomismatches and last_is_complete

		if last_run_exists:
			for k in run_data.keys():
				if k in last_run_data.keys():
					#print(f"{run_data[k]} == {last_run_data[k]}")
					nomismatches = nomismatches and run_data[k] == last_run_data[k]
				else:
					nomismatches = False

		if (not nomismatches) or (not last_run_exists):
			tr_b = ldb.get_empty_TableRecord("exp_exps_meta")._replace(exp_exps_id=self.get_exp_id(), name=meta_name)
			for k in run_data.keys():
				v = json.dumps(run_data[k], separators=(',', ':')) if k == "result" else run_data[k]
				tr = tr_b._replace(kind=k, value=v)
				self.db.add_tablerecord(tr)

		return nomismatches

	# simple printing
	# =========================================
	def print(self):
		print("runs:")
		print("-"*40)
		for g in self.get_run_specs():
			print(f"- {g}")
			for h in self.get_run_ids(g):
				is_complete = Experiment.is_complete_run(self.get_run_data(h))
				print(f"  - {h} (complete run: {is_complete})")
		print()

		print("configuration:")
		print("-"*40)
		assert self.get_exp_type() == "exps2" or self.get_exp_type() == "exps1"

		# read data
		prog_id  = self.get_prog_id()
		code_asm = self.get_prog().get_code()
		input1   = self.get_input_state("input_1")
		if self.get_exp_type() == "exps2":
			input2   = self.get_input_state("input_2")
		input_train   = self.get_input_state("input_train")

		# printout
		print(f"prog_id = {prog_id}")
		print("="*20)
		print("="*20)
		print(code_asm)
		print("="*20)
		print("="*10 + "input_1" + "="*10)
		print(helpers.gen_readable(input1))
		print("="*20)
		if self.get_exp_type() == "exps2":
			print("="*10 + "input_2" + "="*10)
			print(helpers.gen_readable(input2))
			print("="*20)
		if input_train != None:
			print("="*10 + "input_train" + "="*10)
			print(helpers.gen_readable(input_train))
			print("="*20)

	# equality and string representation
	# =========================================
	def __eq__(self, other):
		if type(self) == type(other):
			return (self.exp == other.exp)
		else:
			return False

	def __str__(self):
		return f"<Experiment #{self.get_exp_id()}>"

	def __repr__(self):
		return str(self)


