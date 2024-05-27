#include "shared.h"
__device__ __forceinline__ float add(float x0, float x1)
{
    return x0 + x1;
}
__device__ __forceinline__ float relu(float x0)
{
    return fmaxf(0,x0);
}
// Node name:	 Elementwise Kernel Fusion
// Input:
//	- name: BatchNormInference_92_0	type: float	shape: Shape{8, 256, 56, 56}
//	- name: BatchNormInference_83_0	type: float	shape: Shape{8, 256, 56, 56}
// Output:
//	- name: Relu_94_0	type: float	shape: Shape{8, 256, 56, 56}
// Fused functions:
// Add, resnet_model/add
// Relu, resnet_model/Relu_3
extern "C" __launch_bounds__(128) __global__ void FusedKernel_float_float_float_cuda_Add_Relu_0(float* input0, float* input1, float* output0)
{
    int tid = blockIdx.x * 128 * 2 + threadIdx.x;
    int tid1 = blockIdx.x * 128* 2 + threadIdx.x + 128;
    float temp0 = add(input0[tid], input1[tid]);
    float temp0_1 = add(input0[tid1], input1[tid1]);
    float temp1 = relu(temp0);
    float temp1_1 = relu(temp0_1);
    output0[tid] = temp1;
    output0[tid1] = temp1_1;

}
extern void FusedKernel_float_float_float_cuda_Add_Relu_0_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0) {
    FusedKernel_float_float_float_cuda_Add_Relu_0<<<grids, blocks, mem, stream>>>(input0, input1, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

