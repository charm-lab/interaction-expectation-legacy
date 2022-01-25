import os
import pickle
import random
from pathlib import Path

import numpy as np
import seaborn as sns;
import torch
import yaml
import yappi
from PIL import Image
from torch.utils.data import DataLoader
from torch.utils.tensorboard import SummaryWriter
from tqdm import tqdm

from predictive_hands.data_loading.DataContainer import DataContainer
from predictive_hands.data_loading.GRABInstance import GRABInstance
from predictive_hands.training_methods.DenseNetLSTM import DenseNetLSTM
from predictive_hands.utilities.visualize_data import VisualizeHands

sns.set_theme()
import matplotlib.pyplot as plt
from copy import deepcopy
def make_vel_charts(cfg_name):
    back_window = 80
    cfg = yaml.full_load(open(cfg_name, 'r'))

    device_type = torch.device(f'cuda:{cfg["gpu_num"]}')

    torch.cuda.set_device(int(cfg["gpu_num"]))

    all_dataset = DataContainer(cfg, cfg['train_conditions'], device_type=device_type, meta_files_in=None,
                                  randomized_start=False)

    all_loader = DataLoader(all_dataset, batch_size=cfg['batch_size'],
                             shuffle=False, num_workers=0)
    all_vels = torch.zeros(0)
    past_n = torch.zeros((0, back_window))
    for in_dict, target_dict, meta_idx, meta_data in all_loader:
        if in_dict == 0:
            continue
        points = in_dict['hand_points']['right']
        diff = points[0, 1:, :, :] - points[0, :-1, :,:]
        cur_vels = torch.norm(120*torch.mean(diff, dim=1), dim=1)
        all_vels = torch.cat((all_vels, cur_vels))
        past_n = torch.cat((past_n, torch.unsqueeze(cur_vels[-back_window:], dim=0)), dim=0)
    mean_n = torch.mean(past_n, dim=0)
    std_n = torch.std(past_n, dim=0)
    plt.rcParams["font.family"] = "Times New Roman"
    fontsize = 15
    plt.rc('font', size=fontsize)  # controls default text sizes
    plt.rc('axes', titlesize=fontsize)  # fontsize of the axes title
    plt.rc('axes', labelsize=fontsize)  # fontsize of the x and y labels
    plt.rc('xtick', labelsize=fontsize)  # fontsize of the tick labels
    plt.rc('ytick', labelsize=fontsize)  # fontsize of the tick labels
    plt.rc('legend', fontsize=fontsize)  # legend fontsize
    plt.rc('figure', titlesize=fontsize)  # fontsize of the figure title
    x_vals = 1000*(np.arange(1, back_window+1) - back_window)/120
    y_vals = mean_n
    plt.plot(x_vals, y_vals)
    plt.fill_between(x_vals, y_vals - std_n, y_vals + std_n, alpha=0.6)
    print(repr(-x_vals))
    print(repr(y_vals))
    print(repr(std_n))
    plt.xlabel("Time Until Contact (ms)")
    plt.ylabel("Speed (m/s)")
    plt.tight_layout()
    plt.savefig("speed.pdf",bbox_inches='tight')
    plt.show()
