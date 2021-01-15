
import logging
import datetime

import logsdb as ldb

def _gen_dotfree_time_str():
	now = datetime.datetime.now()
	return now.strftime("%Y-%m-%d_%H-%M-%S_%f")[:-3]

class ExpRun:
	def __init__(self, db, exprun):
		self.db = db

		if type(exprun) == int:
			expruns = db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_runs")._replace(id=exprun))
			assert(len(expruns) == 1)
			self.exprun = expruns[0]
		else:
			self.exprun = exprun

	def get_exprun_id(self):
		return self.exprun.id

	def get_name(self):
		return self.exprun.name

	# create exp runs
	# =========================================
	def _create(db):
		name = _gen_dotfree_time_str()
		tr = ldb.TR_exp_runs(id=None, name=name)
		db.add_tablerecord(tr)
		return ExpRun(db, tr)

	# find exp runs
	# =========================================
	def _get_all(db):
		records = db.get_tablerecord_matches(ldb.get_empty_TableRecord("exp_runs"))
		return list(map(lambda x: ExpRun(db, x), records))

	# equality and string representation
	# =========================================
	def __eq__(self, other):
		if type(self) == type(other):
			return (self.exprun == other.exprun)
		else:
			return False

	def __str__(self):
		return f"<ExpRun #{self.get_exprun_id()}: {self.get_name()}>"

	def __repr__(self):
		return str(self)

