#include "shared.h"
// Node name:	Matched_Pattern_561
// Description:	Matched_Pattern
// Input:
//	- name: Relu_284_0	type: float	shape: Shape{8, 2048, 7, 7}
//	- name: Constant_514_0	type: float	shape: Shape{512, 2048, 1, 1}
//	- name: Broadcast_515_0	type: float	shape: Shape{8, 512, 7, 7}
// Output:
//	- name: Relu_288_0	type: float	shape: Shape{8, 512, 7, 7}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_561(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[224];
    __shared__ float input1_shared[1024];
    {
        float* compute = output0;
        {
          float conv2d_nchw[14];
          
          
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
          for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
            __syncthreads();
            pad_temp_shared[((int)threadIdx.x)] = input0[((((((((int)blockIdx.x) / 56) * 200704) + (rc_outer_outer * 784)) + ((((int)threadIdx.x) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7))];
            pad_temp_shared[(((int)threadIdx.x) + 64)] = input0[(((((((((int)blockIdx.x) / 56) * 200704) + (((((int)threadIdx.x) + 64) / 112) * 100352)) + (rc_outer_outer * 784)) + ((((((int)threadIdx.x) + 64) % 112) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + ((((int)threadIdx.x) + 1) % 7))];
            pad_temp_shared[(((int)threadIdx.x) + 128)] = input0[(((((((((int)blockIdx.x) / 56) * 200704) + (((((int)threadIdx.x) + 128) / 112) * 100352)) + (rc_outer_outer * 784)) + (((((int)threadIdx.x) + 16) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + ((((int)threadIdx.x) + 2) % 7))];
            if (((int)threadIdx.x) < 32) {
              pad_temp_shared[(((int)threadIdx.x) + 192)] = input0[(((((((((int)blockIdx.x) / 56) * 200704) + (((((int)threadIdx.x) + 192) / 112) * 100352)) + (rc_outer_outer * 784)) + (((((int)threadIdx.x) + 80) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + ((((int)threadIdx.x) + 3) % 7))];
            }
            *(float2*)(input1_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input1 + ((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 128)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 16384));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 256)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 32768));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 384)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 49152));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 65536));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 640)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 81920));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 768)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 98304));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 896)) = *(float2*)(input1 + (((((((((int)blockIdx.x) % 56) / 7) * 131072) + ((((int)threadIdx.x) >> 3) * 2048)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 114688));
            __syncthreads();
            for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
              for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[((nn_outer_inner * 112) + xx_outer_inner)] * input1_shared[(((int)threadIdx.x) * 16)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 7)] * input1_shared[((((int)threadIdx.x) * 16) + 1)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 14)] * input1_shared[((((int)threadIdx.x) * 16) + 2)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 21)] * input1_shared[((((int)threadIdx.x) * 16) + 3)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 28)] * input1_shared[((((int)threadIdx.x) * 16) + 4)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 35)] * input1_shared[((((int)threadIdx.x) * 16) + 5)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 42)] * input1_shared[((((int)threadIdx.x) * 16) + 6)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 49)] * input1_shared[((((int)threadIdx.x) * 16) + 7)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 56)] * input1_shared[((((int)threadIdx.x) * 16) + 8)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 63)] * input1_shared[((((int)threadIdx.x) * 16) + 9)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 70)] * input1_shared[((((int)threadIdx.x) * 16) + 10)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 77)] * input1_shared[((((int)threadIdx.x) * 16) + 11)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 84)] * input1_shared[((((int)threadIdx.x) * 16) + 12)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 91)] * input1_shared[((((int)threadIdx.x) * 16) + 13)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 98)] * input1_shared[((((int)threadIdx.x) * 16) + 14)]));
                conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] = (conv2d_nchw[((nn_outer_inner * 7) + xx_outer_inner)] + (pad_temp_shared[(((nn_outer_inner * 112) + xx_outer_inner) + 105)] * input1_shared[((((int)threadIdx.x) * 16) + 15)]));
              }
            }
          }
          for (int i0_inner = 0; i0_inner < 2; ++i0_inner) {
            for (int i3_inner = 0; i3_inner < 7; ++i3_inner) {
              compute[(((((((((int)blockIdx.x) / 56) * 50176) + (i0_inner * 25088)) + (((((int)blockIdx.x) % 56) / 7) * 3136)) + (((int)threadIdx.x) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + i3_inner)] = max((conv2d_nchw[((i0_inner * 7) + i3_inner)] + input2[(((((((((int)blockIdx.x) / 56) * 50176) + (i0_inner * 25088)) + (((((int)blockIdx.x) % 56) / 7) * 3136)) + (((int)threadIdx.x) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + i3_inner)]), 0.000000e+00f);
            }
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_561_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_561<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

