#include "shared.h"
// Node name:	Pad_275
// Description:	Pad
// Input:
//	- name: Relu_272_0	type: float	shape: Shape{8, 512, 14, 14}
//	- name: Constant_274_0	type: float	shape: Shape{}
// Output:
//	- name: Pad_275_0	type: float	shape: Shape{8, 512, 16, 16}
extern "C" __launch_bounds__(64) __global__ void Pad_float_float_float_cuda_Pad_275(float* input0, float* input1, float* output0)
{
    uint32_t tid = blockIdx.x * blockDim.x + threadIdx.x;
    float* in = input0;
    float* pad = input1;
    float* out = output0;
    if (tid < 1048576)
    {
        size_t input_shape0 = 8;
        size_t input_shape1 = 512;
        size_t input_shape2 = 14;
        size_t input_shape3 = 14;
        uint32_t input_strides0 = 100352;
        uint32_t input_strides1 = 196;
        uint32_t input_strides2 = 14;
        uint32_t input_strides3 = 1;
        uint32_t output_strides0 = 131072;
        uint32_t output_strides1 = 256;
        uint32_t output_strides2 = 16;
        uint32_t output_strides3 = 1;
        uint32_t padding_below0 = 0;
        uint32_t padding_below1 = 0;
        uint32_t padding_below2 = 1;
        uint32_t padding_below3 = 1;
        uint32_t padding_interior0 = 0;
        uint32_t padding_interior1 = 0;
        uint32_t padding_interior2 = 0;
        uint32_t padding_interior3 = 0;
        bool in_bounds = true;
        uint32_t output_pixel = tid;
        uint32_t input_pixel = 0;
        int32_t input, input_dil;
        input_dil = output_pixel / output_strides0 - padding_below0;
        input = input_dil / (padding_interior0 + 1);
        input_dil %= (padding_interior0 + 1);
        in_bounds = in_bounds && (input >= 0) && (input < input_shape0) && (input_dil == 0);
        input_pixel += input * input_strides0;
        output_pixel %= output_strides0;
        input_dil = output_pixel / output_strides1 - padding_below1;
        input = input_dil / (padding_interior1 + 1);
        input_dil %= (padding_interior1 + 1);
        in_bounds = in_bounds && (input >= 0) && (input < input_shape1) && (input_dil == 0);
        input_pixel += input * input_strides1;
        output_pixel %= output_strides1;
        input_dil = output_pixel / output_strides2 - padding_below2;
        input = input_dil / (padding_interior2 + 1);
        input_dil %= (padding_interior2 + 1);
        in_bounds = in_bounds && (input >= 0) && (input < input_shape2) && (input_dil == 0);
        input_pixel += input * input_strides2;
        output_pixel %= output_strides2;
        input_dil = output_pixel / output_strides3 - padding_below3;
        input = input_dil / (padding_interior3 + 1);
        input_dil %= (padding_interior3 + 1);
        in_bounds = in_bounds && (input >= 0) && (input < input_shape3) && (input_dil == 0);
        input_pixel += input * input_strides3;
        out[tid] = (in_bounds) ? in[input_pixel] : *pad;
    }

}
extern void Pad_float_float_float_cuda_Pad_275_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0) {
    Pad_float_float_float_cuda_Pad_275<<<grids, blocks, mem, stream>>>(input0, input1, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

