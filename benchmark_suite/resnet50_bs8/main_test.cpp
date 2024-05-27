#include "nnfusion_rt.h"
#include <cuda_profiler_api.h>
#include <limits>
#include <stdexcept>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <unistd.h>
#include <thread>
#define CUDA_SAFE_CALL(x)                                                                          \
    do                                                                                             \
    {                                                                                              \
        cudaError_t result = (x);                                                                  \
        if (result != cudaSuccess)                                                                 \
        {                                                                                          \
            const char* msg = cudaGetErrorString(result);                                          \
            std::stringstream safe_call_ss;                                                        \
            safe_call_ss << "\nerror: " #x " failed with error"                                    \
                         << "\nfile: " << __FILE__ << "\nline: " << __LINE__ << "\nmsg: " << msg;  \
            throw std::runtime_error(safe_call_ss.str());                                          \
        }                                                                                          \
    } while (0)

int main(int argc, char *argv[]){

    cuda_init();

    //input argument
    float* Parameter_30_0_host, *Parameter_30_0;
    CUDA_SAFE_CALL(cudaMallocHost((void**)&Parameter_30_0_host, sizeof(float)* 1204224));
    CUDA_SAFE_CALL(cudaMalloc((void**)&Parameter_30_0, sizeof(float) * 1204224));

    //output arguments
    float* Result_319_0_host, *Result_319_0;
    CUDA_SAFE_CALL(cudaMallocHost((void**)&Result_319_0_host, sizeof(float) * 8000));

    // fill input values
    for (int i = 0; i < 1204224; ++i) Parameter_30_0_host[i] = 1.0f;


    //warm up for 5 iters:
    // while(true)
    for (int i = 0; i < 5; i++)
    {
        // CUDA_SAFE_CALL(cudaMemcpy(Parameter_30_0, Parameter_30_0_host, sizeof(float) * 1204224, cudaMemcpyHostToDevice));
        kernel_entry(Parameter_30_0, &Result_319_0);
        // CUDA_SAFE_CALL(cudaMemcpy(Result_319_0_host, Result_319_0,  sizeof(float) * 8000, cudaMemcpyDeviceToHost));
        CUDA_SAFE_CALL(cudaDeviceSynchronize());
        std::this_thread::sleep_for(std::chrono::milliseconds(2));
        // usleep(2);
    }

    //GPU time measurement
    float ms_max = std::numeric_limits<float>::min();
    float ms_min = std::numeric_limits<float>::max();
    float ms_total, ms_i;
    auto ms_total_1 = std::chrono::system_clock::now();
    auto ms_total_2 = std::chrono::system_clock::now();
    cudaEvent_t start_i, stop_i;
    cudaEventCreate(&start_i);
    cudaEventCreate(&stop_i);

    //time measurement
    ms_total = 0;

    //kernel call
    int steps = 1000;
    cudaProfilerStart();
    long long i_ = 0;
    auto all_run_start = std::chrono::system_clock::now();
    while (true)
    {
        i_++;
        cudaEventRecord(start_i, 0);
        CUDA_SAFE_CALL(cudaMemcpy(Parameter_30_0, Parameter_30_0_host, sizeof(float) * 1204224, cudaMemcpyHostToDevice));
        auto single_run_start = std::chrono::system_clock::now();
        kernel_entry(Parameter_30_0, &Result_319_0);
        cudaEventRecord(stop_i, 0);
        cudaEventSynchronize(stop_i);
        cudaEventElapsedTime(&ms_i, start_i, stop_i);
        auto single_run_end = std::chrono::system_clock::now();
        ms_i = std::chrono::duration_cast<std::chrono::microseconds>(single_run_end - single_run_start).count()/1000.0;
        // if (i_%100 == 0) printf("resnet_bs8 iteration time %f ms\n", ms_i);
        if (i_%1000 == 0) {
            ms_total_1 = std::chrono::system_clock::now();
            ms_total = std::chrono::duration_cast<std::chrono::microseconds>(ms_total_1 - ms_total_2).count()/1000.0;
            printf("QPS: %f (1000 requests)\n", 1000000.0/ms_total);
            ms_total_2 = std::chrono::system_clock::now();
        }
        ms_total += ms_i;
        if (ms_i > ms_max)  ms_max = ms_i;
        if (ms_i < ms_min) ms_min = ms_i;
    }
    cudaProfilerStop();

    //time measurement
    printf("resnet_bs8 summary: [min, max, mean] = [%f, %f, %f] ms\n",  ms_min, ms_max, ms_total / steps);

    //free context
    CUDA_SAFE_CALL(cudaFree(Parameter_30_0));
    cuda_free();

    cudaFreeHost(Parameter_30_0_host);
    cudaFreeHost(Result_319_0_host);
    return 0;
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

