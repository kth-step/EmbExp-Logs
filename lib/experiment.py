
import logging
import os
import json

from helpers import *

class Experiment:
	def __init__(self, exp_id):
		assert len(exp_id.split('/')) == 4
		self.exp_id = exp_id
		self.exp_path = get_logs_path(exp_id)
		assert os.path.isdir(self.exp_path)

	def create(exp_id, files):
		exp_path = get_logs_path(exp_id)
		# create experiment directory, exception if it already exists
		exp_dir_path = os.path.dirname(exp_path)
		if not os.path.isdir(exp_dir_path):
			os.makedirs(exp_dir_path)
		os.mkdir(exp_path)
		# write all data, one after the other
		for (filename, bindata) in files:
			filepath = os.path.join(exp_path, filename)
			writefile_or_compare(False, filepath, bindata, "this should never happen")
		return Experiment(exp_id)

	def get_path(self, path, needfile = False):
		jpath = os.path.join(self.exp_path, path)
		if needfile and not os.path.isfile(jpath):
			raise Exception(f"file {jpath} doesn't exist")
		return jpath

	def get_exp_id(self):
		return self.exp_id

	def get_exp_arch(self):
		return os.path.basename(os.path.abspath(self.get_path("../../..")))

	def get_exp_type(self):
		return os.path.basename(os.path.abspath(self.get_path("../..")))

	def get_exp_params_id(self):
		return os.path.basename(os.path.abspath(self.get_path("..")))

	def get_prog_id(self):
		with open(self.get_path(f"code.hash", True), "r") as f:
			return f.read().strip()

	def get_code(self):
		prog_id = self.get_prog_id()
		with open(self.get_path(f"../../../progs/{prog_id}/code.asm", True), "r") as f:
			return f.read()

	def get_input_file(self, filename):
		with open(self.get_path(filename, True), "r") as f:
			return json.load(f)


	def is_valid_experiment(self):
		filespresent = True
		filenames = ["code.hash", "input1.json"] + (["input2.json"] if self.get_exp_type() == "exps2" else [])
		for filename in filenames:
			filespresent = filespresent and os.path.isfile(self.get_path(filename))
		with open(self.get_path("code.hash", True), "r") as f:
			codehash = f.read().strip()
		filespresent = filespresent and os.path.isfile(self.get_path(f"../../../progs/{codehash}/code.asm"))
		return filespresent

	def is_incomplete_experiment(self, progplat_hash, board_type):
		is_complete = True
		# TODO: these filenames are specific to a certain type of experiment
		for filename in ["output_uart.log", "result.json"]:
			is_complete = is_complete and os.path.isfile(self.get_path(f"{progplat_hash}_{board_type}/{filename}"))
		return not is_complete

	def write_results(self, run_id, outputs, force_results = False):
		exp_dir_results = self.get_path(run_id)
		# create the directory
		call_cmd(["mkdir", "-p", exp_dir_results], "could not create directory")
		nomismatches = True
		# find whether there are mismatches
		for (filename, bindata) in outputs:
			filepath = os.path.join(exp_dir_results, filename)
			nomismatches = nomismatches and comparefile(filepath, bindata)
		if not force_results and not nomismatches:
			return False
		# write all data, one after the other
		for (filename, bindata) in outputs:
			filepath = os.path.join(exp_dir_results, filename)
			writefile_or_compare(force_results, filepath, bindata, "this should never happen")
		return nomismatches

	def print(self):
		assert self.get_exp_type() == "exps2" or self.get_exp_type() == "exps1"

		# read input files
		prog_id  = self.get_prog_id()
		code_asm = self.get_code()
		input1   = self.get_input_file("input1.json")
		if self.get_exp_type() == "exps2":
			input2   = self.get_input_file("input2.json")

		# printout
		print(f"prog_id = {prog_id}")
		print("="*20)
		print("="*20)
		print(code_asm)
		print("="*20)
		print("="*20)
		print(gen_readable(input1))
		print("="*20)
		if self.get_exp_type() == "exps2":
			print(gen_readable(input2))
			print("="*20)
