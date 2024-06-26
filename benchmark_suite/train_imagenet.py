import os
from platform import node
import sched
import sys
import torch
import torch.distributed as dist
import torch.multiprocessing as mp
from torchvision import models, datasets, transforms
from torch.nn.parallel import DistributedDataParallel as DDP
import torch.nn.functional as F
from torch.multiprocessing import Pool, Process, set_start_method, Manager, Value, Lock
from datetime import timedelta
import random
import numpy as np
import time
import os
import argparse
import threading
import json
from ctypes import *

def seed_everything(seed: int):
    import random, os
    import numpy as np

    random.seed(seed)
    os.environ['PYTHONHASHSEED'] = str(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)


class DummyDataLoader():
    def __init__(self, batchsize):
        self.batchsize = batchsize
        self.data = torch.rand([self.batchsize, 3, 224, 224])
        self.target = torch.ones([self.batchsize], dtype=torch.long)

    def __iter__(self):
        return self

    def __next__(self):
        return self.data, self.target

class RealDataLoader():
    def __init__(self, batchsize):
        train_transform =  transforms.Compose([
            transforms.RandomResizedCrop(224),
            transforms.RandomHorizontalFlip(),
            transforms.ToTensor(),
            transforms.Normalize((0.485, 0.456, 0.406),(0.229, 0.224, 0.225))]
        )
        train_dataset = \
                datasets.ImageFolder("/mnt/data/home/fot/imagenet/imagenet-raw-euwest4",transform=train_transform)
        self.train_loader = torch.utils.data.DataLoader(
                train_dataset, batch_size=batchsize, num_workers=8)

    def __iter__(self):
        print("Inside iter")
        return iter(self.train_loader)


def block(backend_lib, it):
    # block client until request served
    backend_lib.block(it)

def check_stop(backend_lib):
    return backend_lib.stop()


def imagenet_loop(
    model_name,
    batchsize,
    train,
    num_iters,
    rps,
    uniform,
    dummy_data,
    local_rank,
    barriers,
    client_barrier,
    tid,
    input_file=''
):

    seed_everything(42)
    print(model_name, batchsize, local_rank, barriers, tid)

    if rps > 0 and input_file=='':
        if uniform:
            sleep_times = [1/rps]*num_iters
        else:
            sleep_times = np.random.exponential(scale=1/rps, size=num_iters)
    elif input_file != '':
        with open(input_file) as f:
                sleep_times = json.load(f)
    else:
        sleep_times = [0]*num_iters


    print(f"SIZE is {len(sleep_times)}")

    # print("-------------- thread id:  ", threading.get_native_id())

    if (train and tid==1):
        time.sleep(5)

    #data = torch.rand([batchsize, 3, 224, 224]).contiguous()
    #target = torch.ones([batchsize]).to(torch.long)
    model = models.__dict__[model_name](num_classes=1000)
    model = model.to(0)

    if train:
        model.train()
        optimizer =  torch.optim.SGD(model.parameters(), lr=0.1)
        criterion =  torch.nn.CrossEntropyLoss().to(local_rank)
    else:
        model.eval()

    if dummy_data:
        train_loader = DummyDataLoader(batchsize)
    else:
        train_loader = RealDataLoader(batchsize)

    train_iter = enumerate(train_loader)
    batch_idx, batch = next(train_iter)

    gpu_data, gpu_target = batch[0].to(local_rank), batch[1].to(local_rank)
    print("Enter loop!")

    #  open loop
    next_startup = time.time()
    open_loop = True

    # [TODO:] optimize the code below
    if True:
        timings=[]
        for i in range(1):
            print("Start epoch: ", i)

            while batch_idx < num_iters:
                start_iter = time.time()

                #torch.cuda.profiler.cudart().cudaProfilerStart()
                if train:
                    #client_barrier.wait()
                    # print(f"Client {tid}, submit!, batch_idx is {batch_idx}")
                    # if tid==0 and batch_idx==20:
                    #     torch.cuda.profiler.cudart().cudaProfilerStart()
                    gpu_data, gpu_target = batch[0].to(local_rank), batch[1].to(local_rank)
                    optimizer.zero_grad()
                    output = model(gpu_data)
                    loss = criterion(output, gpu_target)
                    loss.backward()
                    optimizer.step()
                    # block(backend_lib, batch_idx)
                    iter_time = time.time()-start_iter
                    timings.append(iter_time)
                    #print(f"Client {tid} finished! Wait! It took {timings[batch_idx]}")
                    batch_idx, batch = next(train_iter)
                    if batch_idx == 1000: # for warmup
                        print("begin to record time!")
                        start = time.time()
                    if batch_idx == 5000:
                        print("begin to record end time!")
                        total_time = time.time() - start
                        print("throughput: ", (batch_idx-1000)/total_time)
                    # if check_stop(backend_lib):
                    #     print("---- STOP!")
                    #     break
                    # if batch_idx==20:
                    #     torch.cuda.profiler.cudart().cudaProfilerStart()
                else:
                    with torch.no_grad():
                        cur_time = time.time()
                        #### OPEN LOOP ####
                        if open_loop:
                            if (cur_time >= next_startup):
                                # print(f"-- Client {tid}, submit!, batch_idx is {batch_idx}")
                                if batch_idx==100:
                                    torch.cuda.profiler.cudart().cudaProfilerStart()
                                gpu_data = batch[0].to(local_rank)
                                output = model(gpu_data)
                                # block(backend_lib, batch_idx)
                                # if batch_idx==250:
                                #     torch.cuda.profiler.cudart().cudaProfilerStop()
                                req_time = time.time()-next_startup
                                timings.append(req_time)
                                # print(f"-- Client {tid} finished! Wait! It took {req_time}")
                                if batch_idx>=2000:
                                    next_startup += sleep_times[batch_idx]
                                else:
                                    next_startup = time.time()
                                batch_idx,batch = next(train_iter)
                                if (batch_idx==2000):
                                    print("begin to record start time!")
                                    next_startup = time.time()
                                    start = time.time()
                                dur = next_startup-time.time()
                                if (dur>0):
                                    time.sleep(dur)
                                if (batch_idx==20000):
                                    print("begin to record end time!")
                                    total_time = time.time() - start
                                    print("throughput: ", (batch_idx-2000)/total_time)
                                # if check_stop(backend_lib):
                                #     print("---- STOP!")
                                #     break
                        else:
                            #### CLOSED LOOP ####
                            if (batch_idx==2000):
                                print("begin to record start time!")
                                start = time.time()
                                last_time = time.time()
                            # print(f"Client {tid}, submit!, batch_idx is {batch_idx}")
                            gpu_data = batch[0].to(local_rank)
                            output = model(gpu_data)
                            # block(backend_lib, batch_idx)
                            # print(f"Client {tid} finished! Wait!")
                            
                            if (batch_idx > 2000 and batch_idx%100 == 0 and batch_idx < 3000):
                                this_time = time.time()
                                stage_time = this_time - last_time
                                last_time = this_time
                                print(stage_time)

                            batch_idx,batch = next(train_iter)
                            if (batch_idx==20000):
                                print("begin to record end time!")
                                total_time = time.time() - start
                                data = {
                                    'throughput': (batch_idx-2000)/total_time
                                }
                                print("throughput: ", (batch_idx-2000)/total_time)
                                with open(f'client_{tid}.json', 'w') as f:
                                    json.dump(data, f)



        print(f"Client {tid} at barrier!")
        total_time = time.time() - start

        timings = timings[10:]
        timings = sorted(timings)

        if not train and len(timings)>0:
            p50 = np.percentile(timings, 50)
            p95 = np.percentile(timings, 95)
            p99 = np.percentile(timings, 99)
            print(f"Client {tid} finished! p50: {p50} sec, p95: {p95} sec, p99: {p99} sec")
            data = {
                'p50_latency': p50*1000,
                'p95_latency': p95*1000,
                'p99_latency': p99*1000,
                'throughput': (batch_idx-4000)/total_time
            }
        else:
            data = {
                'throughput': (batch_idx-4000)/total_time
            }
        

        print("Finished! Ready to join!")
