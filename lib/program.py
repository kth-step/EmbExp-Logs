
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

	def get_prog_id(self):
		return self.prog.id

	def get_arch(self):
		return self.prog.arch

	def get_code(self):
		return self.prog.code

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

