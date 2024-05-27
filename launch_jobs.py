import argparse
import json
import threading
import time
from ctypes import *
import os
import sys
from torchvision import models
import torch


# sys.path.append(f"{home_directory}/DeepLearningExamples/PyTorch/LanguageModeling/Transformer-XL/pytorch")
# sys.path.append(f"{home_directory}/DeepLearningExamples/PyTorch/LanguageModeling/Transformer-XL/pytorch/utils")
# from benchmark_suite.transformer_trainer import transformer_loop
# sys.path.append(f"{home_directory}/bless/DeepLearningExamples/PyTorch/LanguageModeling/BERT")


home_directory = os.path.expanduser( '~' )
current_dir = os.path.dirname(os.path.abspath(__file__))
sys.path.append(f"{current_dir}/benchmark_suite/transformer-xl")
from transformer_trainer import transformer_loop
sys.path.append(f"{current_dir}/benchmark_suite/bert")
from bert_trainer import bert_loop
from benchmark_suite.train_imagenet import imagenet_loop

function_dict = {
    "resnet50": imagenet_loop,
    "resnet101": imagenet_loop,
    "mobilenet_v2": imagenet_loop,
    "bert": bert_loop,
    "transformer": transformer_loop,
}
    # "bnorm": bnorm_loop,
    # "conv_bnorm": conv_bn_loop

def seed_everything(seed: int):
    import random, os
    import numpy as np

    random.seed(seed)
    os.environ['PYTHONHASHSEED'] = str(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)

def launch_jobs(config_dict_list, input_args, run_eval):

    seed_everything(42)

    print(config_dict_list)
    num_clients = len(config_dict_list)
    print(num_clients)

    # s = torch.cuda.Stream()

    # init

    num_barriers = num_clients+1
    barriers = [threading.Barrier(num_barriers) for i in range(num_clients)]
    client_barrier = threading.Barrier(num_clients)

    print(torch.__version__)

    model_names = [config_dict['arch'] for config_dict in config_dict_list]
    model_files = [config_dict['kernel_file'] for config_dict in config_dict_list]

    additional_model_files = [config_dict['additional_kernel_file'] if 'additional_kernel_file' in config_dict else None for config_dict in config_dict_list]
    num_kernels = [config_dict['num_kernels'] for config_dict in config_dict_list]
    num_iters = [config_dict['num_iters'] for config_dict in config_dict_list]
    train_list = [config_dict['args']['train'] for config_dict in config_dict_list]
    additional_num_kernels = [config_dict['additional_num_kernels'] if 'additional_num_kernels' in config_dict else None  for config_dict in config_dict_list]
    tids = []
    threads = []

    func = function_dict[config_dict_list[0]['arch']]
    model_args = config_dict_list[0]['args']
    model_args.update({"num_iters":num_iters[0], "local_rank": 0, "barriers": barriers, "client_barrier": client_barrier, "tid": 0})

    thread = threading.Thread(target=func, kwargs=model_args)
    thread.start()
    # tids.append(thread.native_id)
    threads.append(thread)

    print(tids)
    thread.join()

    print("train joined!")

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument('--config_file', type=str, required=True,
                        help='path to the experiment configuration file')
    args = parser.parse_args()

    torch.cuda.set_device(0)
    # affinity_mask = {0,1,2,3}
    # os.sched_setaffinity(0, affinity_mask)
    profile = True
    with open(args.config_file) as f:
        config_dict = json.load(f)
    launch_jobs(config_dict, args, True)
