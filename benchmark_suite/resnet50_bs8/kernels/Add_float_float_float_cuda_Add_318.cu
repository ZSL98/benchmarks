#include "shared.h"
__device__ __forceinline__ float add(float x0, float x1)
{
    return x0 + x1;
}
// Node name:	Add_318
// Description:	Add
// Input:
//	- name: Dot_316_0	type: float	shape: Shape{8, 1000}
//	- name: Broadcast_317_0	type: float	shape: Shape{8, 1000}
// Output:
//	- name: Add_318_0	type: float	shape: Shape{8, 1000}
extern "C" __launch_bounds__(64) __global__ void Add_float_float_float_cuda_Add_318(float* input0, float* input1, float* output0)
{
    output0[blockIdx.x * 64 * 2 + threadIdx.x] = add(input0[blockIdx.x * 64 * 2 + threadIdx.x], input1[blockIdx.x * 64 * 2 + threadIdx.x]);
    output0[blockIdx.x * 64 * 2 + threadIdx.x + 128] = add(input0[blockIdx.x * 64 * 2 + threadIdx.x + 128], input1[blockIdx.x * 64 * 2 + threadIdx.x + 128]);

}
extern void Add_float_float_float_cuda_Add_318_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0) {
    Add_float_float_float_cuda_Add_318<<<grids, blocks, mem, stream>>>(input0, input1, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

