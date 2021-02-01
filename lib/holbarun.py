
import logging

import logsdb as ldb
import logslist

class HolbaRun:
	def __init__(self, db, holbarun):
		self.db = db

		if type(holbarun) == int:
			holbaruns = db.get_tablerecord_matches(ldb.get_empty_TableRecord("holba_runs")._replace(id=holbarun))
			assert(len(holbaruns) == 1)
			self.holbarun = holbaruns[0]
		else:
			self.holbarun = holbarun

	def get_holbarun_id(self):
		return self.holbarun.id

	def get_name(self):
		return self.holbarun.name

	def get_prog_list_id(self):
		return self.holbarun.exp_progs_lists_id

	def get_exp_list_id(self):
		return self.holbarun.exp_exps_lists_id

	# link to lists
	# =========================================
	def get_prog_list(self):
		return logslist.LogsList(self.db, "prog", self.get_prog_list_id())

	def get_exp_list(self):
		return logslist.LogsList(self.db, "exp", self.get_exp_list_id())

	# find holba runs
	# =========================================
	def _get_all(db):
		records = db.get_tablerecord_matches(ldb.get_empty_TableRecord("holba_runs"))
		return list(map(lambda x: HolbaRun(db, x), records))

	# equality and string representation
	# =========================================
	def __eq__(self, other):
		if type(self) == type(other):
			return (self.holbarun == other.holbarun)
		else:
			return False

	def __str__(self):
		return f"<HolbaRun #{self.get_holbarun_id()}: {self.get_name()}>"

	def __repr__(self):
		return str(self)

