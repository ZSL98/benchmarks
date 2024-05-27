#include "shared.h"
// Node name:	Matched_Pattern_539
// Description:	Matched_Pattern
// Input:
//	- name: Relu_120_0	type: float	shape: Shape{8, 256, 56, 56}
//	- name: Constant_406_0	type: float	shape: Shape{128, 256, 1, 1}
//	- name: Broadcast_407_0	type: float	shape: Shape{8, 128, 56, 56}
// Output:
//	- name: Relu_129_0	type: float	shape: Shape{8, 128, 56, 56}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_539(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[1024];
    __shared__ float input1_shared[4096];
    {
        float* compute = output0;
        {
          float conv2d_nchw[16];
          
          
          conv2d_nchw[0] = 0.000000e+00f;
          conv2d_nchw[1] = 0.000000e+00f;
          conv2d_nchw[2] = 0.000000e+00f;
          conv2d_nchw[3] = 0.000000e+00f;
          conv2d_nchw[4] = 0.000000e+00f;
          conv2d_nchw[5] = 0.000000e+00f;
          conv2d_nchw[6] = 0.000000e+00f;
          conv2d_nchw[7] = 0.000000e+00f;
          conv2d_nchw[8] = 0.000000e+00f;
          conv2d_nchw[9] = 0.000000e+00f;
          conv2d_nchw[10] = 0.000000e+00f;
          conv2d_nchw[11] = 0.000000e+00f;
          conv2d_nchw[12] = 0.000000e+00f;
          conv2d_nchw[13] = 0.000000e+00f;
          conv2d_nchw[14] = 0.000000e+00f;
          conv2d_nchw[15] = 0.000000e+00f;
          for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
            __syncthreads();
            *(float2*)(pad_temp_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input0 + ((((((((((int)blockIdx.x) / 98) * 802816) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 4) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 2) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + ((((int)threadIdx.x) & 3) * 2)));
            *(float2*)(pad_temp_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(input0 + (((((((((((int)blockIdx.x) / 98) * 802816) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 4) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 2) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 50176));
            *(float2*)(input1_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input1 + ((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 4096));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1024)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 8192));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1536)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 12288));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 2048)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 16384));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 2560)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 20480));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 3072)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 24576));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 3584)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 28672));
            __syncthreads();
            for (int rc_outer_inner = 0; rc_outer_inner < 32; ++rc_outer_inner) {
              conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[(((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner)]));
              conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[(((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner)]));
              conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 32)]));
              conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 32)]));
              conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 64)]));
              conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 64)]));
              conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 96)]));
              conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 96)]));
              conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 128)]));
              conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 128)]));
              conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 160)]));
              conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 160)]));
              conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 192)]));
              conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 192)]));
              conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2))] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 224)]));
              conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) >> 4) * 256) + rc_outer_inner) + 224)]));
            }
          }
          for (int i1_inner = 0; i1_inner < 8; ++i1_inner) {
            for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
              compute[(((((((((((int)blockIdx.x) / 98) * 401408) + ((((int)threadIdx.x) >> 4) * 25088)) + (i1_inner * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 2) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + i3_inner)] = max((conv2d_nchw[((i1_inner * 2) + i3_inner)] + input2[(((((((((((int)blockIdx.x) / 98) * 401408) + ((((int)threadIdx.x) >> 4) * 25088)) + (i1_inner * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 2) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + i3_inner)]), 0.000000e+00f);
            }
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_539_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_539<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

