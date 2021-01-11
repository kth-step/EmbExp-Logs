BEGIN TRANSACTION;

-- mostly uses generic integer id as primary key
-- uniform metadata structure: key [reference_id, kind, name (not null)], value
-- no structured link between holba runs and their generated programs and experiments
-- - use metadata convention in programs and experiments to represent the link

-- ===================================================
-- holba runs: unique times - should be a more precise time string to avoid clashes
CREATE TABLE holba_runs (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  time TEXT NOT NULL,
  exp_progs_lists_id INTEGER,
  exp_exps_lists_id INTEGER,
  CONSTRAINT UC_holba_runs UNIQUE (time),
  CONSTRAINT FK_exp_progs_lists FOREIGN KEY (exp_progs_lists_id) REFERENCES exp_progs_lists(id),
  CONSTRAINT FK_exp_exps_lists  FOREIGN KEY (exp_exps_lists_id)  REFERENCES exp_exps_lists(id),
  CONSTRAINT UC_exp_progs_lists UNIQUE (exp_progs_lists_id),
  CONSTRAINT UC_exp_exps_lists  UNIQUE (exp_exps_lists_id)
);
-- metadata for holba runs
CREATE TABLE holba_runs_meta (
  holba_runs_id INTEGER,
  kind TEXT,
  name TEXT NOT NULL,
  value TEXT,
  CONSTRAINT PK_holba_runs_meta PRIMARY KEY (holba_runs_id,kind,name),
  CONSTRAINT FK_holba_runs FOREIGN KEY (holba_runs_id) REFERENCES holba_runs(id)
);

-- ===================================================
-- experiment programs: unique code (asm code, needs normalized code to work)
CREATE TABLE exp_progs (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  arch TEXT NOT NULL,
  code TEXT NOT NULL,
  CONSTRAINT UC_exp_progs UNIQUE (arch, code)
);
-- metadata for exp_progs
CREATE TABLE exp_progs_meta (
  exp_progs_id INTEGER,
  kind TEXT,
  name TEXT NOT NULL,
  value TEXT,
  CONSTRAINT PK_exp_progs_meta PRIMARY KEY (exp_progs_id,kind,name),
  CONSTRAINT FK_exp_progs FOREIGN KEY (exp_progs_id) REFERENCES exp_progs(id)
);

-- ===================================================
-- experiments: unique program reference and input_data (needs normalized data to work)
CREATE TABLE exp_exps (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  exp_progs_id INTEGER,
  type TEXT NOT NULL,
  params TEXT NOT NULL,
  input_data TEXT NOT NULL,
  CONSTRAINT UC_exp_exps UNIQUE (exp_progs_id, type, params, input_data),
  CONSTRAINT FK_exp_progs FOREIGN KEY (exp_progs_id) REFERENCES exp_progs(id)
);
-- metadata for exp_exps
CREATE TABLE exp_exps_meta (
  exp_exps_id INTEGER,
  kind TEXT,
  name TEXT NOT NULL,
  value TEXT,
  CONSTRAINT PK_exp_exps_meta PRIMARY KEY (exp_exps_id,kind,name),
  CONSTRAINT FK_exp_exps FOREIGN KEY (exp_exps_id) REFERENCES exp_exps(id)
);

-- ===================================================
-- program lists
CREATE TABLE exp_progs_lists (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  description TEXT,
  CONSTRAINT UC_exp_progs_lists UNIQUE (name)
);
-- link between program lists and their programs
CREATE TABLE exp_progs_lists_entries (
  exp_progs_lists_id INTEGER,
  exp_progs_id INTEGER,
  CONSTRAINT PK_exp_progs_lists_entries PRIMARY KEY (exp_progs_lists_id,exp_progs_id),
  CONSTRAINT FK_exp_progs_lists FOREIGN KEY (exp_progs_lists_id) REFERENCES exp_progs_lists(id),
  CONSTRAINT FK_exp_progs       FOREIGN KEY (exp_progs_id)       REFERENCES exp_progs(id)
);

-- ===================================================
-- experiment lists
CREATE TABLE exp_exps_lists (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  description TEXT,
  CONSTRAINT UC_exp_exps_lists UNIQUE (name)
);
-- link between experiment lists and their experiments
CREATE TABLE exp_exps_lists_entries (
  exp_exps_lists_id INTEGER,
  exp_exps_id INTEGER,
  CONSTRAINT PK_exp_exps_lists_entries PRIMARY KEY (exp_exps_lists_id,exp_exps_id),
  CONSTRAINT FK_exp_exps_lists FOREIGN KEY (exp_exps_lists_id) REFERENCES exp_exps_lists(id),
  CONSTRAINT FK_exp_exps       FOREIGN KEY (exp_exps_id)       REFERENCES exp_exps(id)
);

-- ===================================================
-- db metadata
CREATE TABLE db_meta (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  kind TEXT,
  name TEXT NOT NULL,
  value TEXT,
  CONSTRAINT UC_db_meta UNIQUE (kind,name)
);
INSERT INTO db_meta (id, kind, name, value)
VALUES (0, "logsdb", "version", "1");

COMMIT;

