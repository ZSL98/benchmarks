#include "shared.h"
// Node name:	Matched_Pattern_547
// Description:	Matched_Pattern
// Input:
//	- name: Relu_179_0	type: float	shape: Shape{8, 512, 28, 28}
//	- name: Constant_445_0	type: float	shape: Shape{256, 512, 1, 1}
//	- name: Broadcast_446_0	type: float	shape: Shape{8, 256, 28, 28}
// Output:
//	- name: Relu_188_0	type: float	shape: Shape{8, 256, 28, 28}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_547(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[896];
    __shared__ float input1_shared[1024];
    {
        float* compute = output0;
        {
          float conv2d_nchw[16];
          
          
          conv2d_nchw[0] = 0.000000e+00f;
          conv2d_nchw[2] = 0.000000e+00f;
          conv2d_nchw[4] = 0.000000e+00f;
          conv2d_nchw[6] = 0.000000e+00f;
          conv2d_nchw[8] = 0.000000e+00f;
          conv2d_nchw[10] = 0.000000e+00f;
          conv2d_nchw[12] = 0.000000e+00f;
          conv2d_nchw[14] = 0.000000e+00f;
          conv2d_nchw[1] = 0.000000e+00f;
          conv2d_nchw[3] = 0.000000e+00f;
          conv2d_nchw[5] = 0.000000e+00f;
          conv2d_nchw[7] = 0.000000e+00f;
          conv2d_nchw[9] = 0.000000e+00f;
          conv2d_nchw[11] = 0.000000e+00f;
          conv2d_nchw[13] = 0.000000e+00f;
          conv2d_nchw[15] = 0.000000e+00f;
          for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
            __syncthreads();
            *(float2*)(pad_temp_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input0 + ((((((((int)blockIdx.x) / 56) * 401408) + (rc_outer_outer * 12544)) + ((((int)threadIdx.x) / 28) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 28) * 2)));
            *(float2*)(pad_temp_shared + ((((int)threadIdx.x) * 2) + 448)) = *(float2*)(input0 + (((((((((int)blockIdx.x) / 56) * 401408) + (rc_outer_outer * 12544)) + ((((int)threadIdx.x) / 28) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 28) * 2)) + 6272));
            input1_shared[(((int)threadIdx.x) * 2)] = input1[((((((((int)blockIdx.x) % 56) / 14) * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2))];
            input1_shared[((((int)threadIdx.x) * 2) + 1)] = input1[(((((((((int)blockIdx.x) % 56) / 14) * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 1)];
            input1_shared[((((int)threadIdx.x) * 2) + 448)] = input1[(((((((((int)blockIdx.x) % 56) / 14) * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 14336)];
            input1_shared[((((int)threadIdx.x) * 2) + 449)] = input1[(((((((((int)blockIdx.x) % 56) / 14) * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 14337)];
            if (((int)threadIdx.x) < 64) {
              input1_shared[((((int)threadIdx.x) * 2) + 896)] = input1[(((((((((int)blockIdx.x) % 56) / 14) * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 28672)];
              input1_shared[((((int)threadIdx.x) * 2) + 897)] = input1[(((((((((int)blockIdx.x) % 56) / 14) * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 28673)];
            }
            __syncthreads();
            for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
              for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
                conv2d_nchw[xx_outer_inner] = (conv2d_nchw[xx_outer_inner] + (pad_temp_shared[(((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2))]));
                conv2d_nchw[(xx_outer_inner + 2)] = (conv2d_nchw[(xx_outer_inner + 2)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 28)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2))]));
                conv2d_nchw[(xx_outer_inner + 4)] = (conv2d_nchw[(xx_outer_inner + 4)] + (pad_temp_shared[(((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 256)]));
                conv2d_nchw[(xx_outer_inner + 6)] = (conv2d_nchw[(xx_outer_inner + 6)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 28)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 256)]));
                conv2d_nchw[(xx_outer_inner + 8)] = (conv2d_nchw[(xx_outer_inner + 8)] + (pad_temp_shared[(((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 512)]));
                conv2d_nchw[(xx_outer_inner + 10)] = (conv2d_nchw[(xx_outer_inner + 10)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 28)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 512)]));
                conv2d_nchw[(xx_outer_inner + 12)] = (conv2d_nchw[(xx_outer_inner + 12)] + (pad_temp_shared[(((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 768)]));
                conv2d_nchw[(xx_outer_inner + 14)] = (conv2d_nchw[(xx_outer_inner + 14)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 28)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 768)]));
                conv2d_nchw[xx_outer_inner] = (conv2d_nchw[xx_outer_inner] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 56)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 1)]));
                conv2d_nchw[(xx_outer_inner + 2)] = (conv2d_nchw[(xx_outer_inner + 2)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 84)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 1)]));
                conv2d_nchw[(xx_outer_inner + 4)] = (conv2d_nchw[(xx_outer_inner + 4)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 56)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 257)]));
                conv2d_nchw[(xx_outer_inner + 6)] = (conv2d_nchw[(xx_outer_inner + 6)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 84)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 257)]));
                conv2d_nchw[(xx_outer_inner + 8)] = (conv2d_nchw[(xx_outer_inner + 8)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 56)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 513)]));
                conv2d_nchw[(xx_outer_inner + 10)] = (conv2d_nchw[(xx_outer_inner + 10)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 84)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 513)]));
                conv2d_nchw[(xx_outer_inner + 12)] = (conv2d_nchw[(xx_outer_inner + 12)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 56)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 769)]));
                conv2d_nchw[(xx_outer_inner + 14)] = (conv2d_nchw[(xx_outer_inner + 14)] + (pad_temp_shared[((((rc_outer_inner * 112) + ((((int)threadIdx.x) % 14) * 2)) + xx_outer_inner) + 84)] * input1_shared[((((((int)threadIdx.x) / 14) * 16) + (rc_outer_inner * 2)) + 769)]));
              }
            }
          }
          for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
            compute[((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner)] = max((conv2d_nchw[i3_inner] + input2[((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 28)] = max((conv2d_nchw[(i3_inner + 2)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 28)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 12544)] = max((conv2d_nchw[(i3_inner + 4)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 12544)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 12572)] = max((conv2d_nchw[(i3_inner + 6)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 12572)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 25088)] = max((conv2d_nchw[(i3_inner + 8)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 25088)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 25116)] = max((conv2d_nchw[(i3_inner + 10)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 25116)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 37632)] = max((conv2d_nchw[(i3_inner + 12)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 37632)]), 0.000000e+00f);
            compute[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 37660)] = max((conv2d_nchw[(i3_inner + 14)] + input2[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 14) * 56)) + ((((int)threadIdx.x) % 14) * 2)) + i3_inner) + 37660)]), 0.000000e+00f);
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_547_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_547<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

