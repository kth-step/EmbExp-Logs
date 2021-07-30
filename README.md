# EmbExp-Logs - embedded experiment logs
This repository collects the scripts to insert, query and process `EmbExp` experiment data (input machine states, execution results and other meta data).

The scripts to execute experiments utilize [`EmbExp-ProgPlatform`](https://github.com/kth-step/EmbExp-ProgPlatform).
This repository is used by SCAM-V in [`HolBA`](https://github.com/kth-step/HolBA).
The following picture visualizes the flow of data, where experiment inputs are first created in `HolBA` and stored in this repository.
Then the scripts in this repository trigger experiment execution through `EmbExp-ProgPlatform` and `EmbExp-Box` to ultimately execute on a board.
Finally, the outputs are handed back here, where they are stored in a separate database file.
The following picture visualizes this flow (note that the used database file is not stored in this repository but in the subdirectory `data`):
![example flow with HolBA, EmbExp-ProgPlatform and EmbExp-Box](doc/holba-logs-runner.jpg)


## Getting started
All scripts are in the directory `scripts` and print basic information about their usage when they are executed with the command line switch `--help`.
The scripts assume a HolBA environment.

The database organizes generated programs and experiment inputs in lists as well as the experiment generation runs and experiment execution runs.
In this way, it is possible to generate sets of experiments, and then execute their experiments and evaluate the results individually.
Such experiment sets can be created using SCAM-V from HolBA, where an experiment consists of a binary program and two inputs, and the result is the comparison of the cache states after executing the program from either input state.


### Browsing through stored experiments
Once we have collected an experiment set in a database or copied a preloaded database file to `data/logs.db`, we use `./scripts/status.py -ps` to see an overview of the present program and experiment lists as well as the results of the latest execution of all experiments in the database.
The flag `-ln` can be used to specify an experiment list by name and see the results only for that experiment list.
In order to see what experiments are counterexamples for a given experiment set, we use the flag `-pc`.
We may select one of the printed counterexamples and copy its id `{example experiment id}` to then run `./scripts/print_exp.py {example experiment id}`.
Among other things, this prints the program and the initial register values to enable inspection of the nature of the given counterexample.
Like in the following example, we may see that the initial values of register `x5` are different.
```
Input 1: x5    = 0x0000000080121000 ::: (ts=0x0000000080121000, s=0x40, o=0x00)
Input 2: x5    = 0x0000000080101000 ::: (ts=0x0000000080101000, s=0x40, o=0x00)
```
The printout contains interpretations for cache tag (`ts`) and cache set (`s`) offset (`o`) if a given register is used as load or store address without additional offsets, which is the case with this example program (`ldr x9, [x5]`).

Notice that the experiment id is in fact a column of the SQLite database table storing all experiments.
Similarly, one can use direct database queries to evaluate the present tables.


### Manually executing and inspecting single experiments
The scripts to run experiments on hardware, implicitly connect to a board but this implicit connection is slower as it reconnects for each experiment.
It is therefore advisable to explicitly connect to a board using `EmbExp-Box` in a separate terminal.
For this purpose, we first spawn a new terminal and change the driectory to `EmbExp-Box` (e.g., `HolBA_opt/embexp/EmbExp-Box`) and then run `./interface/remote.py rpi3` and wait until the connection is established.
We leave this script running in the background and execute the next steps in the previous terminal.
From now on, we should always run experiments in this way.

To inspect the concrete cache states after executing the program on each input of an experiment, we use the following commands:
- `./scripts/run_experiment.py {example experiment id} -is input_1`,
- `./scripts/run_experiment.py {example experiment id} -is input_2`, and possibly also
- `./scripts/run_experiment.py {example experiment id} -is input_train`.
When taking a closer look at a counterexample, we may see that one of the two inputs produces an additional cache line that could look like `line 1, tag: 00121000`, where the hardware attacker `cache_multiw_numinset` for example would see the different number of cache lines per cache set, which would be a reason to be a SCAM-V counterexample in this context.

Notice that the hardware experiment environment `EmbExp-Box` sometimes experiences "hickups", which could be due to errors on the communication lines, interferences due to insufficient shielding or similar, currently unsolved, engineering problems.
Therefore, it may be helpful to disconnect and reconnect to reset the board or to select another board when connecting to `EmbExp-Box`.
Use `./interface/remote.py --help` to find out how to do this.


### Manully executing batches of experiments
With the command `./scripts/run_batch.py`, we can run all experiments in the database that have not been executed yet.
This command runs until no new experiments have been added for a certain hard-coded amount of time.
The whole process can take several minutes, hours or days depending on the size of the experiment set.
While it is running, experiment ids are printed before they are executed.
If the result is not a complete execution with equal cache states for both inputs, there will be additional outputs indicating problems or a complete execution with unequal or inconclusive result.

Notice that in rare cases, there are many or even solely experiment runs with seubsequent `WARNING:root:- unsuccessful` lines in the output of `./scripts/run_batch.py`.
These lines indicate incomplete or unparsable output.
This is not a problem per se because these results are not recorded and the command we used before will rerun these experiments later.
However, it may help to reset the board or select another board as indicated in the last section.

