
import logging

import logsdb as ldb
import program
import experiment

class LogsList:
	def __init__(self, db, listtype, logslist):
		self.db = db
		self.listtype = listtype

		assert(listtype == "prog" or listtype == "exp")
		if type(logslist) == int:
			logslists = db.get_tablerecord_matches(ldb.get_empty_TableRecord(f"exp_{listtype}s_lists")._replace(id=logslist))
			assert(len(logslists) == 1)
			self.logslist = logslists[0]
		else:
			self.logslist = logslist

		self.entry_ids = None
		self.entries = None

	def get_listtype(self):
		return self.listtype

	def get_logslist_id(self):
		return self.logslist.id

	def get_name(self):
		return self.logslist.name

	def get_description(self):
		return self.logslist.description

	# link to entries
	# =========================================
	def get_entry_ids(self):
		if self.entry_ids == None:
			tr = ldb.get_empty_TableRecord(f"exp_{self.listtype}s_lists_entries")
			tr_ = tr._replace(**{f"exp_{self.listtype}s_lists_id": self.get_logslist_id()})
			entries = self.db.get_tablerecord_matches(tr_)
			self.entry_ids = list(map(lambda x: (x.list_index, getattr(x, f"exp_{self.listtype}s_id")), entries))
		return self.entry_ids

	def get_entries(self):
		if self.entries == None:
			entry_ids = self.get_entry_ids()
			genfun = None
			if   self.listtype == "prog":
				genfun = program.Program
			elif self.listtype == "exp":
				genfun = experiment.Experiment
			else:
				assert(False)
			self.entries = list(map(lambda x: (x[0], genfun(self.db, x[1])), entry_ids))
		return self.entries

	# find logslists
	# =========================================
	def _get_all(db, listtype):
		records = db.get_tablerecord_matches(ldb.get_empty_TableRecord(f"exp_{listtype}s_lists"))
		return list(map(lambda x: LogsList(db, listtype, x), records))

	def _get_by_name(db, listtype, name):
		logslists = LogsList._get_all(db, listtype)
		logslists_ = list(filter(lambda x: x.get_name() == name, logslists))
		assert(len(logslists_) < 2)
		if len(logslists_) == 0:
			raise Exception("couldn't find logslist")
		return logslists_[0]

	# equality and string representation
	# =========================================
	def __eq__(self, other):
		if type(self) == type(other):
			return (self.listtype == other.listtype and self.logslist == other.logslist)
		else:
			return False

	def __str__(self):
		return f"<LogsList_{self.get_listtype()} #{self.get_logslist_id()}: {self.get_name()}>"

	def __repr__(self):
		return str(self)


