
#Installation

##GRAB
Need to install GRAB on your system.

Get GRAB from https://github.com/msalvato/GRAB. Put this in a folder named 'grab' (important!).

Put the 'setup.py' file in the outer grab directory.

Run 'python setup.py install' from outer grab directory.

You'll also need to get the GRAB dataset file from https://grab.is.tue.mpg.de/

Make a file in machine_directories that points to the appropriate files.

##SMPL-X

Install smplx per https://github.com/vchoutas/smplx

#Data Generation

Create a data_regen yml, similar to the one in machine_directories.

Then run the following to generate data:

    generate_data.py --directories_file configs/machine_directories/bohg-ws-3_data_regen_directories.yml --config_file configs/data_generation/data_generation.yml
