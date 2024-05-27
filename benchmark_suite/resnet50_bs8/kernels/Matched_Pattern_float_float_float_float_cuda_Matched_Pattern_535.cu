#include "shared.h"
// Node name:	Matched_Pattern_535
// Description:	Matched_Pattern
// Input:
//	- name: Relu_94_0	type: float	shape: Shape{8, 256, 56, 56}
//	- name: Constant_388_0	type: float	shape: Shape{64, 256, 1, 1}
//	- name: Broadcast_389_0	type: float	shape: Shape{8, 64, 56, 56}
// Output:
//	- name: Relu_98_0	type: float	shape: Shape{8, 64, 56, 56}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_535(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[2048];
    __shared__ float input1_shared[2048];
    {
        float* compute = output0;
        {
          float conv2d_nchw[16];
          
          
          conv2d_nchw[0] = 0.000000e+00f;
          conv2d_nchw[8] = 0.000000e+00f;
          conv2d_nchw[1] = 0.000000e+00f;
          conv2d_nchw[9] = 0.000000e+00f;
          conv2d_nchw[2] = 0.000000e+00f;
          conv2d_nchw[10] = 0.000000e+00f;
          conv2d_nchw[3] = 0.000000e+00f;
          conv2d_nchw[11] = 0.000000e+00f;
          conv2d_nchw[4] = 0.000000e+00f;
          conv2d_nchw[12] = 0.000000e+00f;
          conv2d_nchw[5] = 0.000000e+00f;
          conv2d_nchw[13] = 0.000000e+00f;
          conv2d_nchw[6] = 0.000000e+00f;
          conv2d_nchw[14] = 0.000000e+00f;
          conv2d_nchw[7] = 0.000000e+00f;
          conv2d_nchw[15] = 0.000000e+00f;
          for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
            __syncthreads();
            pad_temp_shared[((int)threadIdx.x)] = input0[((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7))];
            pad_temp_shared[(((int)threadIdx.x) + 256)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 25088)];
            pad_temp_shared[(((int)threadIdx.x) + 512)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 50176)];
            pad_temp_shared[(((int)threadIdx.x) + 768)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 75264)];
            pad_temp_shared[(((int)threadIdx.x) + 1024)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 802816)];
            pad_temp_shared[(((int)threadIdx.x) + 1280)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 827904)];
            pad_temp_shared[(((int)threadIdx.x) + 1536)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 852992)];
            pad_temp_shared[(((int)threadIdx.x) + 1792)] = input0[(((((((((((int)blockIdx.x) / 98) * 1605632) + (rc_outer_outer * 100352)) + ((((int)threadIdx.x) >> 5) * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 31) >> 3) * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 878080)];
            *(float2*)(input1_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input1 + ((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 4096));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1024)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 8192));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1536)) = *(float2*)(input1 + (((((((int)threadIdx.x) >> 4) * 256) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 12288));
            __syncthreads();
            for (int rc_outer_inner = 0; rc_outer_inner < 32; ++rc_outer_inner) {
              conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7))] * input1_shared[(((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner)]));
              conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7))] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1024)]));
              conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 8)] * input1_shared[(((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner)]));
              conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 8)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1024)]));
              conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7))] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 32)]));
              conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7))] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1056)]));
              conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 8)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 32)]));
              conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 8)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1056)]));
              conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1024)] * input1_shared[(((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner)]));
              conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1024)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1024)]));
              conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1032)] * input1_shared[(((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner)]));
              conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1032)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1024)]));
              conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1024)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 32)]));
              conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1024)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1056)]));
              conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1032)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 32)]));
              conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[((((rc_outer_inner * 32) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + (((int)threadIdx.x) & 7)) + 1032)] * input1_shared[((((((int)threadIdx.x) >> 4) * 64) + rc_outer_inner) + 1056)]));
            }
          }
          for (int i0_inner = 0; i0_inner < 2; ++i0_inner) {
            for (int i1_inner = 0; i1_inner < 2; ++i1_inner) {
              for (int i2_inner = 0; i2_inner < 2; ++i2_inner) {
                compute[((((((((((((int)blockIdx.x) / 98) * 401408) + (i0_inner * 200704)) + ((((int)threadIdx.x) >> 4) * 6272)) + (i1_inner * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 3) * 112)) + (i2_inner * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7))] = max((conv2d_nchw[(((i0_inner * 4) + (i1_inner * 2)) + i2_inner)] + input2[((((((((((((int)blockIdx.x) / 98) * 401408) + (i0_inner * 200704)) + ((((int)threadIdx.x) >> 4) * 6272)) + (i1_inner * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 3) * 112)) + (i2_inner * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7))]), 0.000000e+00f);
                compute[(((((((((((((int)blockIdx.x) / 98) * 401408) + (i0_inner * 200704)) + ((((int)threadIdx.x) >> 4) * 6272)) + (i1_inner * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 3) * 112)) + (i2_inner * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 100352)] = max((conv2d_nchw[((((i0_inner * 4) + (i1_inner * 2)) + i2_inner) + 8)] + input2[(((((((((((((int)blockIdx.x) / 98) * 401408) + (i0_inner * 200704)) + ((((int)threadIdx.x) >> 4) * 6272)) + (i1_inner * 3136)) + (((((int)blockIdx.x) % 98) / 7) * 224)) + (((((int)threadIdx.x) & 15) >> 3) * 112)) + (i2_inner * 56)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) & 7)) + 100352)]), 0.000000e+00f);
              }
            }
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_535_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_535<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

