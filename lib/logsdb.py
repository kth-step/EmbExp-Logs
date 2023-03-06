import sqlite3 as sl

import os

import logging
import datetime
import collections
from enum import Enum

# data types for slightly generalized query with indexed query expressions ("NOT") ("AND", "OR") (=, LIKE, IN)
class QE_Bop(Enum):
	EQ   = "="
	LIKE = "LIKE"
	IN   = "IN"
	AND  = "AND"
	OR   = "OR"

QE_Not = (
  collections.namedtuple("QE_Not",
  ["arg"]))

QE_Bin = (
  collections.namedtuple("QE_Bin",
  ["op", "arg1", "arg2"]))

QE_Const = (
  collections.namedtuple("QE_Const",
  ["value"]))

QE_Ref = (
  collections.namedtuple("QE_Ref",
  ["index", "field"]))

# data types for representation of records in tables of database
TR_holba_runs = (
  collections.namedtuple("TR_holba_runs",
  ["id", "name", "exp_progs_lists_id", "exp_exps_lists_id"]))
TR_holba_runs_meta = (
  collections.namedtuple("TR_holba_runs_meta",
  ["holba_runs_id", "kind", "name", "value"]))

TR_exp_runs = (
  collections.namedtuple("TR_exp_runs",
  ["id", "name"]))
TR_exp_runs_meta = (
  collections.namedtuple("TR_exp_runs_meta",
  ["exp_runs_id", "kind", "name", "value"]))

TR_exp_progs = (
  collections.namedtuple("TR_exp_progs",
  ["id", "arch", "code"]))
TR_exp_progs_meta = (
  collections.namedtuple("TR_exp_progs_meta",
  ["exp_progs_id", "kind", "name", "value"]))

TR_exp_exps = (
  collections.namedtuple("TR_exp_exps",
  ["id", "exp_progs_id", "type", "params", "input_data"]))
TR_exp_exps_meta = (
  collections.namedtuple("TR_exp_exps_meta",
  ["exp_exps_id", "kind", "name", "value"]))

TR_exp_progs_lists = (
  collections.namedtuple("TR_exp_progs_lists",
  ["id", "name", "description"]))
TR_exp_progs_lists_entries = (
  collections.namedtuple("TR_exp_progs_lists_entries",
  ["exp_progs_lists_id", "exp_progs_id", "list_index"]))

TR_exp_exps_lists = (
  collections.namedtuple("TR_exp_exps_lists",
  ["id", "name", "description"]))
TR_exp_exps_lists_entries = (
  collections.namedtuple("TR_exp_exps_lists_entries",
  ["exp_exps_lists_id", "exp_exps_id", "list_index"]))

TR_db_meta = (
  collections.namedtuple("TR_db_meta",
  ["id", "kind", "name", "value"]))

TR_id_only = (
  collections.namedtuple("TR_id_only",
  ["id"]))

TR_by_table = {
  "holba_runs" :
    TR_holba_runs,
  "holba_runs_meta" :
    TR_holba_runs_meta,
  "exp_runs" :
    TR_exp_runs,
  "exp_runs_meta" :
    TR_exp_runs_meta,
  "exp_progs" :
    TR_exp_progs,
  "exp_progs_meta" :
    TR_exp_progs_meta,
  "exp_exps" :
    TR_exp_exps,
  "exp_exps_meta" :
    TR_exp_exps_meta,
  "exp_progs_lists" :
    TR_exp_progs_lists,
  "exp_progs_lists_entries" :
    TR_exp_progs_lists_entries,
  "exp_exps_lists" :
    TR_exp_exps_lists,
  "exp_exps_lists_entries" :
    TR_exp_exps_lists_entries,
  "db_meta" :
    TR_db_meta
  }

tables_all    = TR_by_table.keys()

def row_factory_simple(mfun):
	return (lambda _,b: mfun(b))

def get_empty_TableRecord(t):
	if type(t) == str:
		t = TR_by_table[t]
	return t._make([None] * len(t._fields))

# represent table links
TableLinks = {
  ("holba_runs"             , "exp_progs_lists"): ("exp_progs_lists_id", "id"),
  ("holba_runs"             , "exp_exps_lists"):  ("exp_exps_lists_id" , "id"),
  ("holba_runs"             , "holba_runs_meta"): ("id"                , "holba_runs_id"),

  ("exp_runs"               , "exp_runs_meta"):   ("id"                , "exp_runs_id"),

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

def _get_repo_rel_path(p):
	return os.path.join(os.path.join(os.path.dirname(__file__), ".."), p)

# from https://ricardoanderegg.com/posts/python-sqlite-thread-safety/
# check the used sqlite3 compile option for threadsafety
def get_sqlite3_thread_safety():
    # Mape value from SQLite's THREADSAFE to Python's DBAPI 2.0
    # threadsafety attribute.
    sqlite_threadsafe2python_dbapi = {0: 0, 2: 1, 1: 3}
    conn = sl.connect(":memory:")
    threadsafety = conn.execute(
        """
select * from pragma_compile_options
where compile_options like 'THREADSAFE=%'
"""
    ).fetchone()[0]
    conn.close()

    threadsafety_value = int(threadsafety.split("=")[1])

    return sqlite_threadsafe2python_dbapi[threadsafety_value]


class LogsDB:
	def __init__(self, db_file = None, read_only = False):
		self.read_only = read_only

		if db_file == None:
			db_file = os.path.join("data", "logs.db")

		self.database_file = _get_repo_rel_path(db_file)
		if os.path.isdir(self.database_file):
			raise Exception("database file cannot be a directory")

		db_dir = os.path.dirname(self.database_file)
		self.backup_dir = self.database_file + ".backups"

		if not os.path.isdir(db_dir):
			os.mkdir(db_dir)

		if not os.path.isdir(self.backup_dir):
			os.mkdir(self.backup_dir)

	def connect(self):
		# check if database already exists, if not create tables and version information from schema.sql
		database_exists = os.path.isfile(self.database_file)

		if get_sqlite3_thread_safety() == 3:
			check_same_thread = False
		else:
			check_same_thread = True

		db_con_str = f"file:{self.database_file}" + ("?mode=ro" if self.read_only else "")
		self.con = sl.connect(db_con_str, uri=True, check_same_thread=check_same_thread)
		self.con.row_factory = sl.Row

		if not database_exists:
			logging.info(f"no database. creating tables and version information")
			# create tables and finally version information
			with open(_get_repo_rel_path("lib/schema.sql"), "r") as f:
				with self.con:
					self.con.executescript(f.read())
		else:
			logging.info(f"found database. checking version information")
			# check version information to ensure tables are as expected
			cur = self.con.cursor()
			cur.execute(f"SELECT * FROM db_meta WHERE id = 0")
			#logging.debug(cur.fetchone().keys()) # gives keys for sqlite query with row factory sl.Row
			# assert that db version is correct
			cur.row_factory = row_factory_simple(TR_by_table["db_meta"]._make)
			versionrows = cur.fetchall()
			try:
				assert(len(versionrows) == 1)
				assert(versionrows[0] == TR_db_meta(id=0, kind="logsdb", name="version", value="1"))
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

		logging.info("backup completed")

	def _get_tablerecord_info(data):
		data_type = type(data)
		table = None
		for k,v in TR_by_table.items():
			if v == data_type:
				assert(table == None)
				table = k
		# check whether type of data is in TR_by_table
		if table == None:
			raise Exception("the data must be of a type available in TR_by_table")

		return (data_type, table)

	# append new datasets, should not break database integrity constraints (we have an extra function to append to existing metadata)
	def add_tablerecord(self, data, id_only = False, match_existing = False, allow_id = False):
		(data_type, table) = LogsDB._get_tablerecord_info(data)

		# match_existing: match existing entries: matches existing, or creates new entry only if matching does not exist yet

		fields = list(data._fields)
		# tables with a generic id field need special treatment
		if (not allow_id) and ("id" in fields):
			if data.id != None:
				raise Exception(f"the id cannot be forced on entries for table '{table}', must be None here")
			fields.remove("id")

		fields = list(filter(lambda n: getattr(data, n) != None, fields))
		sql_values = list(map(lambda n: getattr(data, n), fields))

		# prepare sql query for matching
		sql_m_str = LogsDB._prep_sql_match(table, fields, id_only)

		# prepare sql query for insertion
		sql_fields_str = f"({', '.join(fields)})"
		sql_values_str = f"({', '.join(['?'] * len(fields))})"
		sql_values     = list(map(lambda n: getattr(data, n), fields))
		sql_str = f"INSERT INTO {table} {sql_fields_str} VALUES {sql_values_str}"
		logging.info(sql_str)

		if not id_only:
			sql_fields = "*"
		else:
			sql_fields = "id"

		try:
			rowid = None
			with self.con:
				cur = self.con.cursor()
				# if there is an existing entry, take this one
				if match_existing:
					if len(fields) == 0:
						cur.execute(sql_m_str)
					else:
						cur.execute(sql_m_str, sql_values)
					if not id_only:
						cur.row_factory = row_factory_simple(data_type._make)
					else:
						cur.row_factory = row_factory_simple(TR_id_only._make)
					r = list(cur.fetchall())
					assert(len(r) == 0 or len(r) == 1)
					if len(r) == 1:
						return r[0]

				if len(fields) == 0:
					cur.execute(sql_str)
				else:
					cur.execute(sql_str, sql_values)
				rowid = cur.lastrowid

				cur.execute(f"SELECT {sql_fields} FROM {table} WHERE rowid = {rowid}")
				if not id_only:
					cur.row_factory = row_factory_simple(data_type._make)
				else:
					cur.row_factory = row_factory_simple(TR_id_only._make)
				return cur.fetchone()
		except:
			raise Exception("adding data failed")

	# appending to existing metadata
	# (for metadata tables, kind must be different from None/NULL)
	# (if entry doesn't exist yet, we fail)
	# (otherwise we append string to string - value must be a string)
	def append_tablerecord_meta(self, data):
		(data_type, table) = LogsDB._get_tablerecord_info(data)

		# check whether we deal with a "meta" table
		if not table.endswith("_meta"):
			raise Exception("this is only allowed for meta tables")

		# kind must be different from None
		if data.kind == None:
			raise Exception("'kind' must be different than None")

		# prepare select query (find entry where all fields except "value" are equal)
		fields = list(data._fields)
		assert("value" in fields)
		fields.remove("value")

		sql_cond_strs = []
		for f in fields:
			sql_cond_strs.append(f"{f} = ?")
		sql_values = list(map(lambda n: getattr(data, n), fields))
		sql_str_base = f"SELECT * FROM {table}"
		sql_cond_str = ("" if len(sql_values) == 0 else f" WHERE {' AND '.join(sql_cond_strs)}")
		sql_str = sql_str_base + sql_cond_str
		logging.info(sql_str)
		logging.info(sql_values)
		assert(len(sql_cond_strs) > 0)

		# prepare update query, use sql_cond_str from before
		sql_upd_str_base = f"UPDATE {table} SET value = ?"
		sql_upd_str = sql_upd_str_base + sql_cond_str

		# all in one transaction
		try:
			with self.con:
				cur = self.con.cursor()
				cur.execute(sql_str, sql_values)
				cur.row_factory = row_factory_simple(data_type._make)
				data_l_0 = list(cur.fetchall())

				# if we cannot find a matching row, we fail
				assert(len(data_l_0) < 2)
				if len(data_l_0) != 1:
					raise Exception("cannot find a matching row to append to")
				data_0 = data_l_0[0]

				# both values must be a string
				if not ((type(data_0.value) is str) and (type(data.value) is str)):
					raise Exception("both values must be strings for appending")
				val_new = data_0.value + data.value

				# we append and update
				cur.execute(sql_upd_str, [val_new] + sql_values)

				# select again to return new metadata
				cur.execute(sql_str, sql_values)
				cur.row_factory = row_factory_simple(data_type._make)
				return cur.fetchone() 
		except:
			raise Exception("appending metadata failed")

	def _prep_sql_match(table, fields, id_only = False):
		# for id_only
		if not id_only:
			sql_fields = "*"
		else:
			sql_fields = "id"

		sql_cond_strs = []
		for f in fields:
			sql_cond_strs.append(f"{f} = ?")

		sql_str_base = f"SELECT {sql_fields} FROM {table}"
		sql_str = sql_str_base + ("" if len(fields) == 0 else f" WHERE {' AND '.join(sql_cond_strs)}")
		logging.info(sql_str)
		return sql_str

	# for very simple matching queries
	def get_tablerecord_matches(self, data, count_only = False, id_only = False):
		(data_type, table) = LogsDB._get_tablerecord_info(data)

		fields = list(filter(lambda n: getattr(data, n) != None, data._fields))
		sql_values = list(map(lambda n: getattr(data, n), fields))

		sql_str = LogsDB._prep_sql_match(table, fields, id_only)

		try:
			with self.con:
				cur = self.con.cursor()
				if len(fields) == 0:
					cur.execute(sql_str)
				else:
					cur.execute(sql_str, sql_values)
				if count_only:
					n = 0
					for _ in cur:
						n += 1
					return n
				else:
					if not id_only:
						cur.row_factory = row_factory_simple(data_type._make)
					else:
						cur.row_factory = row_factory_simple(TR_id_only._make)
					return list(cur.fetchall())
		except:
			raise Exception("retrieving data failed")

	def _get_sql_from_exp(ids, tables, exp):
		if type(exp) is QE_Not:
			(arg1, vl1) = LogsDB._get_sql_from_exp(ids, tables, exp.arg)
			return (f"NOT ({arg1})", vl1)
		elif type(exp) is QE_Bin:
			if   exp.op in [QE_Bop.AND, QE_Bop.OR, QE_Bop.EQ, QE_Bop.LIKE, QE_Bop.IN]:
				(arg1, vl1) = LogsDB._get_sql_from_exp(ids, tables, exp.arg1)
				(arg2, vl2) = LogsDB._get_sql_from_exp(ids, tables, exp.arg2)
				return (f"(({arg1}) {exp.op.value} ({arg2}))", vl1+vl2)
			else:
				raise Exception(f"unknown binary operator: {exp.op.name}")
		elif type(exp) is QE_Const:
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
		elif type(exp) is QE_Ref:
			idx = exp.index
			field = exp.field
			table_id = ids[idx]
			table = tables[idx]
			if not field in TR_by_table[table]._fields:
				raise Exception("field '{field}' is not in table '{table}'")
			return (f"{table_id}.{field}", [])
		else:
			raise Exception(f"unknown expression: {exp}")

	# for more complex queries
	def get_tablerecords(self, table, joins, query_exp, order_by = [], count_only = False, id_only = False):
		# more advanced queries - combinations on related tables:
		#          - inner joins given as list where first one is the queried type, all together are used for the query
		# fixed to inner join for now, probably don't need more at first

		_tables = [table]+list(map(lambda x: x[0], joins))
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
			_exp = QE_Bin(op=QE_Bop.EQ, arg1=QE_Ref(index=idx, field=f_t), arg2=QE_Ref(index=ref_idx, field=f_r))
			(sql_j_str, sql_j_vl) = LogsDB._get_sql_from_exp(_tables_ids, _tables, _exp)
			assert(len(sql_j_vl) == 0)
			sql_from_str += f"  INNER JOIN {t} AS {_tables_ids[idx]} ON {sql_j_str}\n"
		# translate query_exp to sql condition string
		(sql_w_str, sql_w_vl) = LogsDB._get_sql_from_exp(_tables_ids, _tables, query_exp)
		# build order_by list
		order_by_l = []
		for (idx,fld,asc) in order_by:
			if idx >= len(_tables):
				raise Exception("index out of range")
			t = _tables[idx]
			if not fld in TR_by_table[t]._fields:
				raise Exception("field '{fld}' is not in table '{t}'")
			asc_str = "ASC" if asc else "DESC"
			order_by_l.append(f"{_tables_ids[idx]}.{fld} {asc_str}")
		sql_order_by_str = ""
		if len(order_by_l) > 0:
			sql_order_by_str = f"ORDER BY {', '.join(order_by_l)}"

		# for id_only
		if not id_only:
			sql_fields = f"DISTINCT {_tables_ids[0]}.*"
		else:
			sql_fields = f"{_tables_ids[0]}.id"

		# generate whole query
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

		# for count_only
		count_column_id = "_COUNT"
		if count_only:
			sql_str = f"SELECT COUNT(*) AS {count_column_id} FROM ({sql_str})"

		data_type = TR_by_table[table]
		try:
			with self.con:
				cur = self.con.cursor()
				if len(sql_w_vl) == 0:
					cur.execute(sql_str)
				else:
					cur.execute(sql_str, sql_w_vl)
				if not count_only:
					if not id_only:
						cur.row_factory = row_factory_simple(data_type._make)
					else:
						cur.row_factory = row_factory_simple(TR_id_only._make)
					return list(cur.fetchall())
				else:
					c_l = list(cur.fetchall())
					assert(len(c_l) == 1)
					return c_l[0][count_column_id]
		except:
			raise Exception("retrieving data failed")

	# raw sql query
	def get_tablerecords_sql(self, sql, table = None):
		# - for most complex queries
		# - !users need to be very careful to not confuse ids to not mess up the database!
		# - very generic
		# - is only allowed when database is in read-only mode
		# if table name is provided, table record values are created from resulting rows
		# otherwise a pair of column names and rows, all as simple lists
		if not self.read_only:
			raise Exception("only allowed in read-only mode")

		data_type = None if table == None else TR_by_table[table]

		sql_str = sql
		assert(type(sql_str) == str)

		try:
			with self.con:
				cur = self.con.cursor()
				cur.execute(sql_str)
				if data_type != None:
					cur.row_factory = row_factory_simple(data_type._make)
					return list(cur.fetchall())
				else:
					cur.row_factory = sl.Row
					rows = cur.fetchall()
					colnames = [d[0] for d in cur.description]
					rowsprocd = [list(r) for r in rows]
					return (colnames, rowsprocd)
		except:
			raise Exception("retrieving data failed")

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
			try:
				TR_t = TR_by_table[t]
			except KeyError:
				raise Exception("unknown table: " + t)
			cur.execute(f"SELECT * FROM {t}")
			cur.row_factory = row_factory_simple(TR_t._make)
			res_ = []
			res_num = 0
			for e in cur:
				res_num += 1
				if with_entries:
					res_.append(f"  - {list(map(lambda x: e._asdict()[x], TR_t._fields))}")
			res.append(f"- {t} ({res_num} entries)")
			res.append(f"  {TR_t._fields}")
			res += res_
		return "\n".join(res)

	def __str__(self):
		return self.to_string()

