#include "shared.h"
// Node name:	Matched_Pattern_575
// Description:	Matched_Pattern
// Input:
//	- name: Relu_194_0	type: float	shape: Shape{8, 256, 14, 14}
//	- name: Constant_454_0	type: float	shape: Shape{1024, 256, 1, 1}
//	- name: Broadcast_455_0	type: float	shape: Shape{8, 1024, 14, 14}
// Output:
//	- name: BatchNormInference_197_0	type: float	shape: Shape{8, 1024, 14, 14}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[224];
    __shared__ float input1_shared[512];
    {
        float* T_add = output0;
        {
          float conv2d_nchw[8];
          
          
          conv2d_nchw[0] = 0.000000e+00f;
          conv2d_nchw[4] = 0.000000e+00f;
          conv2d_nchw[1] = 0.000000e+00f;
          conv2d_nchw[5] = 0.000000e+00f;
          conv2d_nchw[2] = 0.000000e+00f;
          conv2d_nchw[6] = 0.000000e+00f;
          conv2d_nchw[3] = 0.000000e+00f;
          conv2d_nchw[7] = 0.000000e+00f;
          for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
            __syncthreads();
            pad_temp_shared[((int)threadIdx.x)] = input0[((((((((int)blockIdx.x) / 112) * 50176) + (rc_outer_outer * 1568)) + ((((int)threadIdx.x) / 28) * 196)) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 28))];
            input1_shared[((int)threadIdx.x)] = input1[((((((((int)blockIdx.x) % 112) / 7) * 16384) + ((((int)threadIdx.x) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7))];
            input1_shared[(((int)threadIdx.x) + 224)] = input1[(((((((((int)blockIdx.x) % 112) / 7) * 16384) + ((((int)threadIdx.x) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 7168)];
            if (((int)threadIdx.x) < 64) {
              input1_shared[(((int)threadIdx.x) + 448)] = input1[(((((((((int)blockIdx.x) % 112) / 7) * 16384) + ((((int)threadIdx.x) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 14336)];
            }
            __syncthreads();
            for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
              for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
                conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2))] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner)]));
                conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2))] * input1_shared[(((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner) + 256)]));
                conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[((((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2)) + 1)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner)]));
                conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[((((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2)) + 1)] * input1_shared[(((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner) + 256)]));
                conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2))] * input1_shared[(((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner) + 8)]));
                conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2))] * input1_shared[(((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner) + 264)]));
                conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[((((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2)) + 1)] * input1_shared[(((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner) + 8)]));
                conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[((((rc_outer_inner * 112) + (rc_inner * 28)) + ((((int)threadIdx.x) % 14) * 2)) + 1)] * input1_shared[(((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 4)) + rc_inner) + 264)]));
              }
            }
          }
          for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
            for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
              T_add[(((((((((int)blockIdx.x) / 7) * 12544) + ((((int)threadIdx.x) / 14) * 392)) + (ax1_inner * 196)) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) % 14) * 2)) + ax3_inner)] = (conv2d_nchw[((ax1_inner * 2) + ax3_inner)] + input2[(((((((((int)blockIdx.x) / 7) * 12544) + ((((int)threadIdx.x) / 14) * 392)) + (ax1_inner * 196)) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) % 14) * 2)) + ax3_inner)]);
              T_add[((((((((((int)blockIdx.x) / 7) * 12544) + ((((int)threadIdx.x) / 14) * 392)) + (ax1_inner * 196)) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) % 14) * 2)) + ax3_inner) + 6272)] = (conv2d_nchw[(((ax1_inner * 2) + ax3_inner) + 4)] + input2[((((((((((int)blockIdx.x) / 7) * 12544) + ((((int)threadIdx.x) / 14) * 392)) + (ax1_inner * 196)) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) % 14) * 2)) + ax3_inner) + 6272)]);
            }
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

