import sqlite3 as sl

import os

import logging
import datetime
import collections
from enum import Enum

# data types for slightly generalized query with indexed query expressions ("NOT") ("AND", "OR") (=, LIKE, IN)
# TODO: can writing of expressions be simplified a little?
class Query_Binop_op(Enum):
	EQ   = "="
	LIKE = "LIKE"
	IN   = "IN"
	AND  = "AND"
	OR   = "OR"

Query_Not = (
  collections.namedtuple("Query_Not",
  ["arg"]))

Query_Binop = (
  collections.namedtuple("Query_Binop",
  ["op", "arg1", "arg2"]))

Query_Const = (
  collections.namedtuple("Query_Const",
  ["value"]))

Query_Ref = (
  collections.namedtuple("Query_Ref",
  ["index", "field"]))

# data types for representation of records in tables of database
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

tables_all    = TableRecord_by_table.keys()

def row_factory_simple(mfun):
	return (lambda _,b: mfun(b))

def get_empty_TableRecord(t):
	if type(t) == str:
		t = TableRecord_by_table[t]
	return t._make([None] * len(t._fields))

# represent table links
TableLinks = {
  ("holba_runs"             , "exp_progs_lists"): ("exp_progs_lists_id", "id"),
  ("holba_runs"             , "exp_exps_lists"):  ("exp_exps_lists_id" , "id"),
  ("holba_runs"             , "holba_runs_meta"): ("id"                , "holba_runs_id"),

  ("exp_progs_lists_entries", "exp_progs_lists"): ("exp_progs_lists_id", "id"),
  ("exp_progs_lists_entries", "exp_progs"):       ("exp_progs_id"      , "id"),
  ("exp_progs"              , "exp_progs_meta"):  ("id"                , "exp_progs_id"),

  ("exp_exps_lists_entries" , "exp_exps_lists"):  ("exp_exps_lists_id" , "id"),
  ("exp_exps_lists_entries" , "exp_exps"):        ("exp_exps_id"       , "id"),
  ("exp_exps"               , "exp_exps_meta"):   ("id"                , "exp_exps_id"),
  ("exp_exps"               , "exp_progs"):       ("exp_progs_id"      , "id")
}

def get_TableLink(a,b):
	try:
		return TableLinks[(a,b)]
	except KeyError:
		try:
			(f2,f1) = TableLinks[(b,a)]
			return (f1,f2)
		except KeyError:
			raise Exception(f"there is no link between '{a}' and '{b}'")

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

		fields = list(data._fields)
		# tables with a generic id field need special treatment
		if "id" in fields:
			if data.id != None:
				raise Exception(f"the id cannot be forced on entries for table '{table}', must be None here")
			fields.remove("id")

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

	# TODO: implement appending of metadata for metadata tables (tablename ends with meta, all except "value" must match to find it, kind must be different than none, if entry doesn't exist yet, we fail)
	# def append_tablerecord_meta(self, data):

	def get_tablerecord_matches(self, data, count_only = False):
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
				if count_only:
					n = 0
					for _ in cur:
						n += 1
					return n
				else:
					cur.row_factory = row_factory_simple(data_type._make)
					return list(cur.fetchall())
		except:
			raise Exception("retrieval failed")

	def _get_sql_from_exp(ids, tables, exp):
		if type(exp) is Query_Not:
			(arg1, vl1) = LogsDB._get_sql_from_exp(ids, tables, exp.arg1)
			return (f"NOT ({arg1})", vl1)
		elif type(exp) is Query_Binop:
			if   exp.op in [Query_Binop_op.AND, Query_Binop_op.OR, Query_Binop_op.EQ, Query_Binop_op.LIKE, Query_Binop_op.IN]:
				(arg1, vl1) = LogsDB._get_sql_from_exp(ids, tables, exp.arg1)
				(arg2, vl2) = LogsDB._get_sql_from_exp(ids, tables, exp.arg2)
				return (f"(({arg1}) {exp.op.value} ({arg2}))", vl1+vl2)
			else:
				raise Exception(f"unknown binop operator: {exp.op.name}")
		elif type(exp) is Query_Const:
			def is_allowed(v):
				return (v == None) or (type(v) is int) or (type(v) is str) or (type(v) is list)
			v = exp.value
			if isinstance(v, list):
				if not(all(map(is_allowed, v))):
					raise Exception(f"unknown constant type in list: {v}")
				return (f"{', '.join(['?'] * len(v))}", v) # notice, no parenthesis around because it causes double parenthesis
			elif not (is_allowed(v)):
				raise Exception(f"unknown constant type: {v}")
			return ("?", [v])
		elif type(exp) is Query_Ref:
			idx = exp.index
			field = exp.field
			table_id = ids[idx]
			table = tables[idx]
			if not field in TableRecord_by_table[table]._fields:
				raise Exception("field '{field}' is not in table '{table}'")
			return (f"{table_id}.{field}", [])
		else:
			raise Exception(f"unknown expression: {exp}")

	def get_tablerecords(self, table, joins, query_exp, order_by = [], count_only = False):
		# more advanced queries - combinations on related tables:
		#          - inner joins given as list where first one is the queried type, all together are used for the query
		# fixed to inner join for now, probably don't need more at first

		_tables = [table]+list(map(lambda x,_: x, joins))
		# check that tables and tables in joins are allowed
		if not all(map(lambda x: x in tables_all, _tables)):
			raise Exception("not all mentioned tables are known")

		# build map index to generated tablename
		def get_table_from_idx(idx):
			assert(idx >= 0)
			if idx > len(joins):
				raise Exception("index too high")
			return f"_tmp_{idx}"
		_tables_ids = list(map(get_table_from_idx, range(len(_tables))))

		# build from-construction with inner joins
		idx = 0
		sql_from_str = f"  {table} AS {_tables_ids[idx]}\n"
		for (t,ref_idx) in joins:
			idx += 1
			if ref_idx >= idx:
				raise Exception("forward reference not allowed")
			assert(t == _tables[idx])
			(f_t, f_r) = get_TableLink(t, _tables[ref_idx])
			_exp = Query_Binop(op=Query_Binop_op.EQ, arg1=Query_Ref(index=idx, field=f_t), arg2=Query_Ref(index=ref_idx, field=f_r))
			(sql_j_str, sql_j_vl) = LogsDB._get_sql_from_exp(_tables_ids, _tables, _exp)
			assert(len(sql_j_vl) == 0)
			sql_from_str += f"  INNER JOIN t AS {_tables_ids[idx]} ON {sql_join_on_str}\n"
		# translate query_exp to sql condition string
		(sql_w_str, sql_w_vl) = LogsDB._get_sql_from_exp(_tables_ids, _tables, query_exp)
		# build order_by list
		order_by_l = []
		for (idx,fld,asc) in order_by:
			if idx >= len(_tables):
				raise Exception("index out of range")
			t = _tables[idx]
			if not fld in TableRecord_by_table[t]._fields:
				raise Exception("field '{fld}' is not in table '{t}'")
			asc_str = "ASC" if asc else "DESC"
			order_by_l.append(f"{_tables_ids[idx]}.{fld} {asc_str}")
		sql_order_by_str = ""
		if len(order_by_l) > 0:
			sql_order_by_str = f"ORDER BY {', '.join(order_by_l)}"

		# generate query
		sql_fields = f"DISTINCT {_tables_ids[0]}.*"
		sql_str  = f"SELECT {sql_fields} FROM (\n"
		sql_str += sql_from_str
		sql_str += ")\n"
		sql_str += "WHERE (\n"
		sql_str += sql_w_str + "\n"
		sql_str += ")\n"
		sql_str += sql_order_by_str
		#print(60 * "=")
		#print(sql_str)
		#print(sql_w_vl)

		# add count_only
		count_column_id = "_COUNT"
		if count_only:
			sql_str = f"SELECT COUNT(*) AS {count_column_id} FROM ({sql_str})"

		data_type = TableRecord_by_table[table]
		try:
			with self.con:
				cur = self.con.cursor()
				if len(sql_w_vl) == 0:
					cur.execute(sql_str)
				else:
					cur.execute(sql_str, sql_w_vl)
				if not count_only:
					cur.row_factory = row_factory_simple(data_type._make)
					return list(cur.fetchall())
				else:
					c_l = list(cur.fetchall())
					assert(len(c_l) == 1)
					return c_l[0][count_column_id]
		except:
			raise Exception("retrieval failed")
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

