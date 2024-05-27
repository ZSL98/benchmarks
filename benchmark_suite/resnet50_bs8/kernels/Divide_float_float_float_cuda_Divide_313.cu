#include "shared.h"
// Node name:	Divide_313
// Description:	Divide
// Input:
//	- name: Sum_311_0	type: float	shape: Shape{8, 2048}
//	- name: Constant_312_0	type: float	shape: Shape{8, 2048}
// Output:
//	- name: Divide_313_0	type: float	shape: Shape{8, 2048}
extern "C" __launch_bounds__(128) __global__ void Divide_float_float_float_cuda_Divide_313(float* input0, float* input1, float* output0)
{
    output0[blockIdx.x * 128 * 2 + threadIdx.x] = fdividef(input0[blockIdx.x * 128 * 2 + threadIdx.x], input1[blockIdx.x * 128 * 2 + threadIdx.x]);
    output0[blockIdx.x * 128 * 2 + threadIdx.x + 128] = fdividef(input0[blockIdx.x * 128 * 2 + threadIdx.x + 128], input1[blockIdx.x * 128 * 2 + threadIdx.x + 128]);

}
extern void Divide_float_float_float_cuda_Divide_313_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0) {
    Divide_float_float_float_cuda_Divide_313<<<grids, blocks, mem, stream>>>(input0, input1, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

