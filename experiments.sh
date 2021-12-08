#!/bin/bash
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_j6 --test_ranges [6] --times_ahead [7]
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_j12 --test_ranges [12] --times_ahead [13]
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_j24 --test_ranges [24] --times_ahead [25]
#python run.py --directories_file configs/machine_directories/juno_directories_vertices.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_v6 --test_ranges [6] --times_ahead [7] --data_type vertices
#python run.py --directories_file configs/machine_directories/juno_directories_vertices.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_v12 --test_ranges [12] --times_ahead [13] --data_type vertices
#python run.py --directories_file configs/machine_directories/juno_directories_vertices.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_v24 --test_ranges [24] --times_ahead [25] --data_type vertices
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single6 --test_ranges [6] --times_ahead [6] --single_times True
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12 --test_ranges [12] --times_ahead [12] --single_times True
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single24 --test_ranges [24] --times_ahead [24] --single_times True


#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_0_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 0 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_10_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 10 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_30_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 30 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_100_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 100 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_0_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 0 --transl_noise_level 5
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_10_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 10 --transl_noise_level 5
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_30_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 30 --transl_noise_level 5
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_f$1.yml --experiment_name fold$1_single12_100_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 100 --transl_noise_level 5

#mkdir single12_10_0
#mkdir single12_30_0
#mkdir single12_100_0
#mkdir single12_0_5
#mkdir single12_10_5
#mkdir single12_30_5
#mkdir single12_100_5

#mv fold$1_single12_10_0 single12_10_0/
#mv /juno/u/msalvato/predictive_hands_experiments/experiments/fold$1_single12_30_0 /juno/u/msalvato/predictive_hands_experiments/experiments/single12_30_0/
#mv /juno/u/msalvato/predictive_hands_experiments/experiments/fold$1_single12_100_0 /juno/u/msalvato/predictive_hands_experiments/experiments/single12_100_0/
#mv /juno/u/msalvato/predictive_hands_experiments/experiments/fold$1_single12_0_5 /juno/u/msalvato/predictive_hands_experiments/experiments/single12_0_5/
#mv /juno/u/msalvato/predictive_hands_experiments/experiments/fold$1_single12_10_5 /juno/u/msalvato/predictive_hands_experiments/experiments/single12_10_5/
#mv /juno/u/msalvato/predictive_hands_experiments/experiments/fold$1_single12_30_5 /juno/u/msalvato/predictive_hands_experiments/experiments/single12_30_5/
#mv /juno/u/msalvato/predictive_hands_experiments/experiments/fold$1_single12_100_5 /juno/u/msalvato/predictive_hands_experiments/experiments/single12_100_5/

#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_0_0 --test_ranges [12] --times_ahead [12] --single_times True
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_10_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 10 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_0_0 --test_ranges [12] --times_ahead [12] --single_times True --data_type vertices
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_10_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 10 --transl_noise_level 0 --data_type vertices


#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_30_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 30 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_100_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 100 --transl_noise_level 0
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_30_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 30 --transl_noise_level 0 --data_type vertices
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_100_0 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 100 --transl_noise_level 0 --data_type vertices

python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_0_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 0 --transl_noise_level 5
python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_10_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 10 --transl_noise_level 5
python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_0_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 0 --transl_noise_level 5 --data_type vertices
python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_10_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 10 --transl_noise_level 5 --data_type vertices


#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_30_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 30 --transl_noise_level 5
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_100_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 100 --transl_noise_level 5
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_30_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 30 --transl_noise_level 5 --data_type vertices
#python run.py --directories_file configs/machine_directories/juno_directories.yml --config_file configs/experiments/experiment_config_obj.yml --experiment_name obj_v_100_5 --test_ranges [12] --times_ahead [12] --single_times True --joint_noise_level 100 --transl_noise_level 5 --data_type vertices