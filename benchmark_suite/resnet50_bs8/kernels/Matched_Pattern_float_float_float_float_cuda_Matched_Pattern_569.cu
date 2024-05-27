#include "shared.h"
// Node name:	Matched_Pattern_569
// Description:	Matched_Pattern
// Input:
//	- name: Pad_122_0	type: float	shape: Shape{8, 256, 56, 56}
//	- name: Constant_409_0	type: float	shape: Shape{512, 256, 1, 1}
//	- name: Broadcast_410_0	type: float	shape: Shape{8, 512, 28, 28}
// Output:
//	- name: BatchNormInference_128_0	type: float	shape: Shape{8, 512, 28, 28}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_569(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[1760];
    __shared__ float input1_shared[1024];
    {
        float* T_add = output0;
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
          for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
            __syncthreads();
            pad_temp_shared[((int)threadIdx.x)] = input0[((((((((int)blockIdx.x) / 224) * 1605632) + (rc_outer_outer * 50176)) + ((((int)threadIdx.x) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + (((int)threadIdx.x) % 55))];
            pad_temp_shared[(((int)threadIdx.x) + 224)] = input0[((((((((int)blockIdx.x) / 224) * 1605632) + (rc_outer_outer * 50176)) + (((((int)threadIdx.x) + 224) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 4) % 55))];
            pad_temp_shared[(((int)threadIdx.x) + 448)] = input0[((((((((int)blockIdx.x) / 224) * 1605632) + (rc_outer_outer * 50176)) + (((((int)threadIdx.x) + 448) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 8) % 55))];
            pad_temp_shared[(((int)threadIdx.x) + 672)] = input0[(((((((((int)blockIdx.x) / 224) * 1605632) + (((((int)threadIdx.x) + 672) / 880) * 802816)) + (rc_outer_outer * 50176)) + ((((((int)threadIdx.x) + 672) % 880) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 12) % 55))];
            pad_temp_shared[(((int)threadIdx.x) + 896)] = input0[(((((((((int)blockIdx.x) / 224) * 1605632) + (((((int)threadIdx.x) + 896) / 880) * 802816)) + (rc_outer_outer * 50176)) + (((((int)threadIdx.x) + 16) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 16) % 55))];
            pad_temp_shared[(((int)threadIdx.x) + 1120)] = input0[(((((((((int)blockIdx.x) / 224) * 1605632) + (((((int)threadIdx.x) + 1120) / 880) * 802816)) + (rc_outer_outer * 50176)) + (((((int)threadIdx.x) + 240) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 20) % 55))];
            pad_temp_shared[(((int)threadIdx.x) + 1344)] = input0[(((((((((int)blockIdx.x) / 224) * 1605632) + (((((int)threadIdx.x) + 1344) / 880) * 802816)) + (rc_outer_outer * 50176)) + (((((int)threadIdx.x) + 464) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 24) % 55))];
            if (((int)threadIdx.x) < 192) {
              pad_temp_shared[(((int)threadIdx.x) + 1568)] = input0[(((((((((int)blockIdx.x) / 224) * 1605632) + (((((int)threadIdx.x) + 1568) / 880) * 802816)) + (rc_outer_outer * 50176)) + (((((int)threadIdx.x) + 688) / 55) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 28) % 55))];
            }
            input1_shared[((int)threadIdx.x)] = input1[((((((((int)blockIdx.x) % 224) / 28) * 16384) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15))];
            input1_shared[(((int)threadIdx.x) + 224)] = input1[(((((((((int)blockIdx.x) % 224) / 28) * 16384) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 3584)];
            input1_shared[(((int)threadIdx.x) + 448)] = input1[(((((((((int)blockIdx.x) % 224) / 28) * 16384) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 7168)];
            input1_shared[(((int)threadIdx.x) + 672)] = input1[(((((((((int)blockIdx.x) % 224) / 28) * 16384) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 10752)];
            if (((int)threadIdx.x) < 128) {
              input1_shared[(((int)threadIdx.x) + 896)] = input1[(((((((((int)blockIdx.x) % 224) / 28) * 16384) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 14336)];
            }
            __syncthreads();
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[((((int)threadIdx.x) % 14) * 2)] * input1_shared[((((int)threadIdx.x) / 14) * 16)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 28)] * input1_shared[((((int)threadIdx.x) / 14) * 16)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[((((int)threadIdx.x) % 14) * 2)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 256)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 28)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 256)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[((((int)threadIdx.x) % 14) * 2)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 512)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 28)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 512)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[((((int)threadIdx.x) % 14) * 2)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 768)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 28)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 768)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 880)] * input1_shared[((((int)threadIdx.x) / 14) * 16)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 908)] * input1_shared[((((int)threadIdx.x) / 14) * 16)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 880)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 256)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 908)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 256)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 880)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 512)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 908)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 512)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 880)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 768)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 908)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 768)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 55)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 1)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 83)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 1)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 55)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 257)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 83)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 257)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 55)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 513)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 83)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 513)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 55)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 769)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 83)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 769)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 935)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 1)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 963)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 1)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 935)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 257)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 963)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 257)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 935)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 513)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 963)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 513)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 935)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 769)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 963)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 769)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 110)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 2)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 138)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 2)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 110)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 258)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 138)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 258)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 110)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 514)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 138)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 514)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 110)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 770)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 138)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 770)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 990)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 2)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1018)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 2)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 990)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 258)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1018)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 258)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 990)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 514)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1018)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 514)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 990)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 770)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1018)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 770)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 165)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 3)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 193)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 3)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 165)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 259)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 193)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 259)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 165)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 515)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 193)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 515)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 165)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 771)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 193)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 771)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1045)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 3)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1073)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 3)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1045)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 259)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1073)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 259)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1045)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 515)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1073)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 515)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1045)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 771)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1073)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 771)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 220)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 4)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 248)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 4)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 220)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 260)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 248)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 260)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 220)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 516)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 248)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 516)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 220)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 772)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 248)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 772)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1100)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 4)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1128)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 4)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1100)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 260)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1128)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 260)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1100)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 516)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1128)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 516)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1100)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 772)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1128)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 772)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 275)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 5)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 303)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 5)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 275)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 261)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 303)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 261)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 275)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 517)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 303)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 517)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 275)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 773)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 303)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 773)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1155)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 5)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1183)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 5)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1155)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 261)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1183)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 261)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1155)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 517)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1183)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 517)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1155)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 773)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1183)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 773)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 330)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 6)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 358)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 6)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 330)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 262)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 358)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 262)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 330)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 518)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 358)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 518)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 330)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 774)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 358)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 774)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1210)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 6)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1238)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 6)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1210)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 262)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1238)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 262)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1210)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 518)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1238)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 518)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1210)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 774)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1238)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 774)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 385)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 7)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 413)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 7)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 385)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 263)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 413)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 263)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 385)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 519)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 413)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 519)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 385)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 775)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 413)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 775)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1265)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 7)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1293)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 7)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1265)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 263)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1293)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 263)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1265)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 519)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1293)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 519)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1265)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 775)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1293)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 775)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 440)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 8)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 468)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 8)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 440)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 264)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 468)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 264)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 440)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 520)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 468)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 520)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 440)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 776)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 468)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 776)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1320)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 8)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1348)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 8)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1320)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 264)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1348)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 264)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1320)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 520)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1348)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 520)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1320)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 776)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1348)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 776)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 495)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 9)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 523)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 9)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 495)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 265)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 523)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 265)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 495)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 521)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 523)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 521)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 495)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 777)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 523)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 777)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1375)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 9)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1403)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 9)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1375)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 265)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1403)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 265)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1375)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 521)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1403)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 521)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1375)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 777)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1403)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 777)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 550)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 10)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 578)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 10)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 550)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 266)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 578)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 266)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 550)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 522)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 578)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 522)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 550)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 778)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 578)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 778)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1430)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 10)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1458)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 10)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1430)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 266)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1458)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 266)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1430)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 522)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1458)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 522)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1430)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 778)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1458)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 778)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 605)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 11)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 633)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 11)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 605)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 267)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 633)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 267)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 605)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 523)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 633)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 523)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 605)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 779)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 633)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 779)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1485)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 11)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1513)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 11)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1485)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 267)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1513)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 267)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1485)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 523)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1513)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 523)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1485)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 779)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1513)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 779)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 660)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 12)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 688)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 12)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 660)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 268)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 688)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 268)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 660)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 524)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 688)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 524)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 660)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 780)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 688)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 780)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1540)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 12)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1568)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 12)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1540)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 268)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1568)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 268)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1540)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 524)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1568)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 524)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1540)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 780)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1568)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 780)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 715)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 13)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 743)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 13)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 715)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 269)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 743)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 269)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 715)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 525)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 743)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 525)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 715)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 781)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 743)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 781)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1595)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 13)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1623)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 13)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1595)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 269)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1623)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 269)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1595)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 525)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1623)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 525)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1595)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 781)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1623)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 781)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 770)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 14)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 798)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 14)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 770)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 270)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 798)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 270)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 770)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 526)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 798)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 526)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 770)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 782)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 798)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 782)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1650)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 14)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1678)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 14)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1650)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 270)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1678)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 270)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1650)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 526)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1678)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 526)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1650)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 782)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1678)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 782)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 825)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 15)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 853)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 15)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 825)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 271)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 853)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 271)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 825)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 527)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 853)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 527)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 825)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 783)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 853)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 783)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1705)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 15)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1733)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 15)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1705)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 271)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1733)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 271)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1705)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 527)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1733)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 527)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1705)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 783)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) % 14) * 2) + 1733)] * input1_shared[(((((int)threadIdx.x) / 14) * 16) + 783)]));
          }
          for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
            T_add[(((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14))] = (conv2d_nchw[ax0_inner] + input2[(((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14))]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 14)] = (conv2d_nchw[(ax0_inner + 2)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 14)]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 12544)] = (conv2d_nchw[(ax0_inner + 4)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 12544)]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 12558)] = (conv2d_nchw[(ax0_inner + 6)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 12558)]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 25088)] = (conv2d_nchw[(ax0_inner + 8)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 25088)]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 25102)] = (conv2d_nchw[(ax0_inner + 10)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 25102)]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 37632)] = (conv2d_nchw[(ax0_inner + 12)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 37632)]);
            T_add[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 37646)] = (conv2d_nchw[(ax0_inner + 14)] + input2[((((((((((int)blockIdx.x) / 224) * 802816) + (ax0_inner * 401408)) + (((((int)blockIdx.x) % 224) / 28) * 50176)) + ((((int)threadIdx.x) / 14) * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 37646)]);
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_569_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_569<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

