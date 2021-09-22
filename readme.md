
# Installation

## GRAB
Need to install GRAB on your system.

Get GRAB from https://github.com/msalvato/GRAB. Put this in a folder named 'grab' (important!).

Run 'python setup.py install' from outer grab directory.

You'll also need to get the GRAB dataset file from https://grab.is.tue.mpg.de/

Make a file in machine_directories that points to the appropriate files.

## Env files

    conda create --name <env> --file conda_requirements.txt
    pip install -r requirements_pip.txt

## SMPL-X

If there are any issues with smplx, install per https://github.com/vchoutas/smplx

# Data Generation

Create a data_regen directories yml, similar to the one in configs/machine_directories.

configs/data_generation/data_generation.yml includes parameters that can be modified, most notably noise levels.


Run the following to generate data:

    generate_data.py --directories_file configs/machine_directories/data_regen_directories.yml --config_file configs/data_generation/data_generation.yml


# Running dense_lstm
Create a base directories yml, similar to the one in configs/machine_directories.

configs/experiments/experiment_config.yml includes parameters that can be modified, most notably noise levels.


Run the following to generate data:

    generate_data.py --directories_file configs/machine_directories/directories.yml --config_file configs/experiments/experiment_config.yml

