#!/usr/bin/env python3

import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), "../lib"))

import argparse
import logging

import logsdb as ldb

# parse arguments
parser = argparse.ArgumentParser()

parser.add_argument("--dbfile", help="name of db file for evaluation")

parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")

args = parser.parse_args()

# set log level
if args.verbose:
	logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
else:
	logging.basicConfig(stream=sys.stderr, level=logging.WARNING)


dbfile_src = args.dbfile


def print_gen_run_time(db, holba_run_id):
  res = db.get_tablerecords_sql(
f"""
-- find total exp gen running time for a certain holba run (look at last line of the output)
-- ================================================
select value
from holba_runs_meta as r_m
where r_m.holba_runs_id = "{holba_run_id}" and r_m.kind = "log"
""")
  log_text = None if res[1] == [] else res[1][0][0]
  gen_run_time = None if log_text == None else log_text[log_text.find("Duration:"):]
  print(f"logged scamv gen run time = {gen_run_time}")


def print_experimentdata(db, exps_list_id):
  # assumes that experiments have only been run with one commit in this database and no retry if a result other than exception has been recorded!

  res = db.get_tablerecords_sql(
f"""
select distinct e_m.name
from exp_exps as e
inner join exp_exps_lists_entries as e_l_e on e_l_e.exp_exps_id = e.id
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e.id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result"
""")
  runspecs = list(map(lambda x: ".".join(x[0].split(".")[0:2]), res[1]))

  res = db.get_tablerecords_sql(
f"""
-- find number of programs with experiments
-- ================================================
select count(*) from
(
-- program_ids of all experiments of a certain experiment list
select distinct p.id
from exp_exps as e
inner join exp_exps_lists_entries as e_l_e on e_l_e.exp_exps_id = e.id
inner join exp_progs as p on p.id = e.exp_progs_id
where e_l_e.exp_exps_lists_id = {exps_list_id}
)
""")
  numprogswithexps = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of programs with result
-- ================================================
select count(*) from
(
-- program_ids of all experiments of a certain experiment list
select distinct p.id
from exp_exps as e
inner join exp_exps_lists_entries as e_l_e on e_l_e.exp_exps_id = e.id
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e.id
inner join exp_progs as p on p.id = e.exp_progs_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and (e_m.value = "true" or e_m.value = "false" or e_m.value like "%INCONCLUSIVE%")
-- the ones that have a result from execution
)
""")
  numprogswithresult = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of programs with counterexamples
-- ================================================
select count(*) from
(
-- program_ids of all experiments of a certain experiment list
select distinct p.id
from exp_exps as e
inner join exp_exps_lists_entries as e_l_e on e_l_e.exp_exps_id = e.id
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e.id
inner join exp_progs as p on p.id = e.exp_progs_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and (e_m.value = "true" or e_m.value = "false" or e_m.value like "%INCONCLUSIVE%") and e_m.value = "false"
-- the ones that have a result from execution, and the result is false / counterexample
)
""")
  numprogswithcounterexample = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- get number of experiments in a certain experiment list
-- ================================================
select count(*)
from exp_exps_lists_entries as e_l_e
where e_l_e.exp_exps_lists_id = {exps_list_id}
""")
  numexps = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of experiments with run result
-- ================================================
select count(*)
from exp_exps_lists_entries as e_l_e
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e_l_e.exp_exps_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and (e_m.value = "true" or e_m.value = "false" or e_m.value like "%INCONCLUSIVE%")
""")
  numexpswithresult = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of experiments where running them results in counterexamples
-- ================================================
select count(*)
from exp_exps_lists_entries as e_l_e
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e_l_e.exp_exps_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and (e_m.value = "true" or e_m.value = "false" or e_m.value like "%INCONCLUSIVE%") and e_m.value = "false"
""")
  numexpsascounterexamples = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of experiments where running them results in examples
-- ================================================
select count(*)
from exp_exps_lists_entries as e_l_e
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e_l_e.exp_exps_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and (e_m.value = "true" or e_m.value = "false" or e_m.value like "%INCONCLUSIVE%") and e_m.value = "true"
""")
  numexpsasexamples = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of experiments where running them results in inclcusive
-- ================================================
select count(*)
from exp_exps_lists_entries as e_l_e
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e_l_e.exp_exps_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and e_m.value like "%INCONCLUSIVE%"
""")
  numexpsasinconclusive = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- find number of experiments where running them results in inclcusive
-- ================================================
select count(*) from
(
select distinct e_l_e.exp_exps_id as exp_id
from exp_exps_lists_entries as e_l_e
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e_l_e.exp_exps_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and e_m.value like "%embexp.board.exception%"
)
""")
  numexpsasexception = res[1][0][0]

  res = db.get_tablerecords_sql(
f"""
-- select counterexamples from a certain experiment list (ordered by experiment list id)
-- ================================================
select e_l_e.list_index, p.code, e.input_data
from exp_exps as e
inner join exp_exps_lists_entries as e_l_e on e_l_e.exp_exps_id = e.id
inner join exp_exps_meta as e_m on e_m.exp_exps_id = e.id
inner join exp_progs as p on p.id = e.exp_progs_id
where e_l_e.exp_exps_lists_id = {exps_list_id} and e_m.kind = "result" and e_m.value = "false"
order by e_l_e.list_index asc
""")
  firstcounterexample_id = None if res[1] == [] else res[1][0][0]

#  res = db.get_tablerecords_sql(
#f"""
#""")
#   = res[1][0][0]

  print(f"runspecs = {runspecs}")

  print()
  print(f"numprogs with exps           = {numprogswithexps}")
  print(f"numprogs with result         = {numprogswithresult}")
  print(f"numprogs with counterexample = {numprogswithcounterexample}")

  print()
  print(f"numexps                      = {numexps}")
  print(f"numexps withresult           = {numexpswithresult}")
  print(f"numexps asexamples           = {numexpsasexamples}")
  print(f"numexps ascounterexamples    = {numexpsascounterexamples}")
  print(f"numexps asinconclusive       = {numexpsasinconclusive}")
  print(f"numexps asexception          = {numexpsasexception}")

  print()
  print(f"exps until first cexp gen    = {firstcounterexample_id}")


def iterate_holba_runs(db):
  res = db.get_tablerecords_sql(
"""
-- go through holba run parameters and find corresponding experiment list
-- ================================================
select r.id, r.name, r_m.value, r.exp_exps_lists_id, r.exp_progs_lists_id
from holba_runs_meta as r_m
inner join holba_runs as r on r.id = r_m.holba_runs_id
where r_m.kind = "args"
""")
  for (holba_run_id, holba_run_name, holba_run_args, exps_list_id, progs_list_id) in res[1]:
    print(f"SCAM-V/HolBA run id: {holba_run_name}")
    print(50 * "=")
    print(f"exps_list_id = {exps_list_id}")
    print(f"progs_list_id = {progs_list_id}")
    print()
    print(f"scamv arguments = {holba_run_args}")
    print()
    print_gen_run_time(db, holba_run_id)
    print()
    print_experimentdata(db, exps_list_id)
    print()
    print()




with ldb.LogsDB(dbfile_src, read_only=True) as db:
  iterate_holba_runs(db)

