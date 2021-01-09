import sqlite3 as sl

import os

import logging
import datetime
import collections

TableRecord_holba_runs = (
  collections.namedtuple("TableRecord_holba_runs",
  ["id", "time", "exp_progs_lists_id", "exp_exps_lists_id"]))
TableRecord_holba_runs_meta = (
  collections.namedtuple("TableRecord_holba_runs_meta",
  ["holba_runs_id", "kind", "name", "value"]))

TableRecord_exp_progs = (
  collections.namedtuple("TableRecord_exp_progs",
  ["id", "code"]))
TableRecord_exp_progs_meta = (
  collections.namedtuple("TableRecord_exp_progs_meta",
  ["exp_progs_id", "kind", "name", "value"]))

TableRecord_exp_exps = (
  collections.namedtuple("TableRecord_exp_exps",
  ["id", "exp_progs_id", "input_data"]))
TableRecord_exp_exps_meta = (
  collections.namedtuple("TableRecord_exp_exps_meta",
  ["exp_exps_id", "kind", "name", "value"]))

TableRecord_exp_progs_lists = (
  collections.namedtuple("TableRecord_exp_progs_lists",
  ["id", "name", "description"]))
TableRecord_exp_progs_lists_entries = (
  collections.namedtuple("TableRecord_exp_progs_lists_entries",
  ["exp_progs_lists_id", "exp_progs_id"]))

TableRecord_exp_exps_lists = (
  collections.namedtuple("TableRecord_exp_exps_lists",
  ["id", "name", "description"]))
TableRecord_exp_exps_lists_entries = (
  collections.namedtuple("TableRecord_exp_exps_lists_entries",
  ["exp_exps_lists_id", "exp_exps_id"]))

TableRecord_db_meta = (
  collections.namedtuple("TableRecord_db_meta",
  ["id", "kind", "name", "value"]))

TableRecord_by_table = {
  "holba_runs" :
    TableRecord_holba_runs,
  "holba_runs_meta" :
    TableRecord_holba_runs_meta,
  "exp_progs" :
    TableRecord_exp_progs,
  "exp_progs_meta" :
    TableRecord_exp_progs_meta,
  "exp_exps" :
    TableRecord_exp_exps,
  "exp_exps_meta" :
    TableRecord_exp_exps_meta,
  "exp_progs_lists" :
    TableRecord_exp_progs_lists,
  "exp_progs_lists_entries" :
    TableRecord_exp_progs_lists_entries,
  "exp_exps_lists" :
    TableRecord_exp_exps_lists,
  "exp_exps_lists_entries" :
    TableRecord_exp_exps_lists_entries,
  "db_meta" :
    TableRecord_db_meta
  }

def row_factory_simple(mfun):
	return (lambda _,b: mfun(b))

# TODO: change this to identify this table type by fields (if "id" is a field)
_tables_simple = ["holba_runs", "exp_progs", "exp_exps", "exp_progs_lists", "exp_exps_lists", "db_meta"]
_tables_meta   = ["holba_runs_meta", "exp_progs_meta", "exp_exps_meta", "exp_progs_lists_entries", "exp_exps_lists_entries"]
_tables_all    = _tables_simple + _tables_meta
assert(set(_tables_all) == set(TableRecord_by_table.keys()))

# TODO: represent graph of table links

# TODO: generally, add some simple test infrastructure

class LogsDB:
	def __init__(self):
		self.data_dir = "data"
		self.backup_dir = os.path.join(self.data_dir, "backups")
		self.database_file = os.path.join(self.data_dir, "logs.db")

	def connect(self):
		# check if database already exists, if not create tables and version information from schema.sql
		database_exists = os.path.isfile(self.database_file)

		if not os.path.isdir(self.data_dir):
			os.mkdir(self.data_dir)

		self.con = sl.connect(self.database_file)
		self.con.row_factory = sl.Row

		if not database_exists:
			logging.info(f"no database. creating tables and version information")
			# create tables and finally version information
			with open("lib/schema.sql", "r") as f:
				with self.con:
					self.con.executescript(f.read())
		else:
			logging.info(f"found database. checking version information")
			# check version information to ensure tables are as expected
			cur = self.con.cursor()
			cur.execute(f"SELECT * FROM db_meta WHERE id = 0")
			#logging.debug(cur.fetchone().keys()) # gives keys for sqlite query with row factory sl.Row
			# assert that db version is correct
			cur.row_factory = row_factory_simple(TableRecord_by_table["db_meta"]._make)
			versionrows = cur.fetchall()
			try:
				assert(len(versionrows) == 1)
				assert(versionrows[0] == TableRecord_db_meta(id=0, kind="logsdb", name="version", value="1"))
				logging.info(versionrows[0])
			except AssertionError:
				raise Exception("db version could not be determined or is incorrect")
		# consistency check to see if the table names are as expected
		self.to_string()

		self.enable_fk_constraints()

	def enable_fk_constraints(self):
		# check foreign key support
		cur = self.con.cursor()
		cur.execute("PRAGMA foreign_keys = ON;")
		cur = self.con.cursor()
		cur.execute("PRAGMA foreign_keys;")
		enabled_int = cur.fetchone()["foreign_keys"]
		enabled = True if enabled_int == 1 else (False if enabled_int == 0 else None)
		if enabled == None:
			raise Exception("foreign key constraints are not supported")
		if not enabled:
			raise Exception("cannot enable foreign key constraints")

	def close(self):
		# close databse
		self.con.close()

	def __enter__(self):
		self.connect()
		return self

	def __exit__(self, exc_type, exc_value, traceback):
		self.close()

	def backup(self):
		# backup both as db export and sql dump
		if not os.path.isdir(self.backup_dir):
			os.mkdir(self.backup_dir)
		datetimestr = datetime.datetime.now().strftime("%Y_%m_%d-%H_%M_%S")
		backupfile = os.path.join(self.backup_dir, f"backup_{datetimestr}")
		logging.info(f"backup prefix {backupfile}")

		with open(f"{backupfile}.sql", "w") as f:
			for line in self.con.iterdump():
				f.write("%s\n" % line)

		def progress(status, remaining, total):
			logging.info(f'Copied {total-remaining} of {total} pages...')
		bck = sl.connect(f"{backupfile}.db")
		with bck:
			self.con.backup(bck, pages=1, progress=progress)
		bck.close()

	def _get_tablerecord_info(data):
		data_type = type(data)
		table = None
		for k,v in TableRecord_by_table.items():
			if v == data_type:
				assert(table == None)
				table = k
		# check whether type of data is in TableRecord_by_table
		if table == None:
			raise Exception("the data must be of a type available in TableRecord_by_table")

		return (data_type, table)

	def add_tablerecord(self, data):
		(data_type, table) = LogsDB._get_tablerecord_info(data)

		fields = None
		if   table in _tables_simple:
			if data.id != None:
				raise Exception(f"the id cannot be forced on entries for table '{table}', must be None here")
			fields = list(data._fields)
			fields.remove("id")
		elif table in _tables_meta:
			fields = list(data._fields)
		else:
			assert(False)

		sql_fields_str = f"({', '.join(fields)})"
		sql_values_str = f"({', '.join(['?'] * len(fields))})"
		sql_values     = list(map(lambda n: getattr(data, n), fields))
		sql_str = f"INSERT INTO {table} {sql_fields_str} VALUES {sql_values_str}"
		logging.info(sql_str)
		logging.info(sql_values)

		try:
			rowid = None
			with self.con:
				cur = self.con.cursor()
				cur.execute(sql_str, sql_values)
				rowid = cur.lastrowid

			with self.con:
				cur = self.con.cursor()
				cur.execute(f"SELECT * FROM {table} WHERE rowid = {rowid}")
				cur.row_factory = row_factory_simple(data_type._make)
				return cur.fetchone()
		except:
			raise Exception("insertion failed")

	def get_tablerecord_matches(self, data):
		(data_type, table) = LogsDB._get_tablerecord_info(data)
		fields = list(filter(lambda n: getattr(data, n) != None, data._fields))

		sql_cond_strs = []
		for f in fields:
			sql_cond_strs.append(f"{f} = ?")

		sql_values = list(map(lambda n: getattr(data, n), fields))
		sql_str_base = f"SELECT * FROM {table}"
		sql_str = sql_str_base + ("" if len(sql_values) == 0 else f" WHERE {' AND '.join(sql_cond_strs)}")
		logging.info(sql_str)
		logging.info(sql_values)

		try:
			with self.con:
				cur = self.con.cursor()
				if len(sql_values) == 0:
					cur.execute(sql_str)
				else:
					cur.execute(sql_str, sql_values)
				cur.row_factory = row_factory_simple(data_type._make)
				return list(cur.fetchall())
		except:
			raise Exception("matching failed")

		# TODO: generalize ("NOT",=, LIKE, IN) https://www.w3schools.com/sql/sql_where.asp

	def get_tablerecord_join_matches(self, datas):
		# fixed to inner join for now, probably don't need more
		# TODO: more advanced queries - combinations on related tables:
		#          - inner joins given as list where first one is the queried type, all are match queries
		# TODO: add countonly option
		# TODO: add "order by" option for data columns
		pass

	def to_string(self, with_entries = False):
		res = []
		res.append(f"Tables (file: {self.database_file}, changes: {self.con.total_changes}):")
		cur = self.con.cursor()
		cur.execute("SELECT name FROM sqlite_master WHERE type='table'")
		tables = list(map(lambda x: x["name"], cur.fetchall()))
		for t in tables:
			# skip sqlite internal tables
			if t in ["sqlite_sequence"]:
				continue
			res.append(f"- {t}")
			try:
				TableRecord_t = TableRecord_by_table[t]
			except KeyError:
				raise Exception("unknown table: " + t)
			cur.execute(f"SELECT * FROM {t}")
			cur.row_factory = row_factory_simple(TableRecord_t._make)
			res_ = []
			res_num = 0
			for e in cur:
				res_num += 1
				if with_entries:
					res_.append(f"  - {e}")
			res.append(f"  (entries: {res_num})")
			res += res_
		return "\n".join(res)

	def __str__(self):
		return self.to_string()
