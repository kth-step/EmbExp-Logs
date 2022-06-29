
import logging

import logsdb as ldb

class Program:
	def __init__(self, db, prog):
		self.db = db

		if type(prog) == int:
			progs = db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_progs")._replace(id=prog))
			assert(len(progs) == 1)
			self.prog = progs[0]
		else:
			self.prog = prog

		self.metadata = None

	def get_prog_id(self):
		return self.prog.id

	def get_arch(self):
		return self.prog.arch

	def get_binary(self):
		return self.prog.binary

	def get_metadata(self):
		if self.metadata == None:
			self.metadata = self.db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_progs_meta")._replace(exp_progs_id=self.get_prog_id()))
		return self.metadata

	def get_code(self):
		code_metadata = filter(lambda x: x.kind == "code", self.get_metadata())
		code_asm = list(map(lambda x: (x.value), code_metadata))
		if code_asm == []:
			code_asm = "code not available!"
		else:
			assert len(code_asm) == 1
			code_asm = code_asm[0]
		return code_asm

	# equality and string representation
	# =========================================
	def __eq__(self, other):
		if type(self) == type(other):
			return (self.prog == other.prog)
		else:
			return False

	def __str__(self):
		return f"<Program #{self.get_prog_id()}>"

	def __repr__(self):
		return str(self)

