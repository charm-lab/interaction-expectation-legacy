#!/bin/bash
python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f1.yml --experiment_name fold1_vs6 --test_ranges [6] --times_ahead [6] --single_times True --data_type vertices
python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f1.yml --experiment_name fold1_vs12 --test_ranges [12] --times_ahead [12] --single_times True --data_type vertices
python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f1.yml --experiment_name fold1_vs24 --test_ranges [24] --times_ahead [24] --single_times True --data_type vertices

python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_0_0 --test_ranges [12] --times_ahead [12] --single_times True --data_type vertices
5