#include "shared.h"
// Node name:	Matched_Pattern_540
// Description:	Matched_Pattern
// Input:
//	- name: Pad_131_0	type: float	shape: Shape{8, 128, 58, 58}
//	- name: Constant_412_0	type: float	shape: Shape{128, 128, 3, 3}
//	- name: Broadcast_413_0	type: float	shape: Shape{8, 128, 28, 28}
// Output:
//	- name: Relu_135_0	type: float	shape: Shape{8, 128, 28, 28}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_540(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[162];
    __shared__ float input1_shared[2304];
    {
        float* compute = output0;
        {
          float conv2d_nchw[16];
          
          
          conv2d_nchw[0] = 0.000000e+00f;
          conv2d_nchw[1] = 0.000000e+00f;
          conv2d_nchw[8] = 0.000000e+00f;
          conv2d_nchw[9] = 0.000000e+00f;
          conv2d_nchw[2] = 0.000000e+00f;
          conv2d_nchw[3] = 0.000000e+00f;
          conv2d_nchw[10] = 0.000000e+00f;
          conv2d_nchw[11] = 0.000000e+00f;
          conv2d_nchw[4] = 0.000000e+00f;
          conv2d_nchw[5] = 0.000000e+00f;
          conv2d_nchw[12] = 0.000000e+00f;
          conv2d_nchw[13] = 0.000000e+00f;
          conv2d_nchw[6] = 0.000000e+00f;
          conv2d_nchw[7] = 0.000000e+00f;
          conv2d_nchw[14] = 0.000000e+00f;
          conv2d_nchw[15] = 0.000000e+00f;
          for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
            __syncthreads();
            pad_temp_shared[((int)threadIdx.x)] = input0[((((((((((int)blockIdx.x) / 49) * 430592) + (rc_outer_outer * 6728)) + ((((int)threadIdx.x) / 81) * 3364)) + (((((int)blockIdx.x) % 49) / 7) * 464)) + (((((int)threadIdx.x) % 81) / 9) * 58)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) % 9))];
            if (((int)threadIdx.x) < 34) {
              pad_temp_shared[(((int)threadIdx.x) + 128)] = input0[((((((((((int)blockIdx.x) / 49) * 430592) + (rc_outer_outer * 6728)) + (((((int)threadIdx.x) + 128) / 81) * 3364)) + (((((int)blockIdx.x) % 49) / 7) * 464)) + (((((int)threadIdx.x) + 47) / 9) * 58)) + ((((int)blockIdx.x) % 7) * 8)) + ((((int)threadIdx.x) + 2) % 9))];
            }
            *(float2*)(input1_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input1 + ((((((int)threadIdx.x) / 9) * 1152) + (rc_outer_outer * 18)) + ((((int)threadIdx.x) % 9) * 2)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 256)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 256) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 4) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 512) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 8) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 768)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 768) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 12) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1024)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 1024) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 16) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1280)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 1280) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 2) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1536)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 1536) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 6) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 1792)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 1792) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 10) % 18)));
            *(float2*)(input1_shared + ((((int)threadIdx.x) * 2) + 2048)) = *(float2*)(input1 + ((((((((int)threadIdx.x) * 2) + 2048) / 18) * 1152) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 14) % 18)));
            __syncthreads();
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[((((int)threadIdx.x) & 1) * 4)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 2)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[((((int)threadIdx.x) & 1) * 4)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 2)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 1)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 3)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 1)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 3)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 2)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 4)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 2)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 4)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 81)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 83)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 81)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 83)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 82)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 84)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 82)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 84)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 83)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 85)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 83)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 85)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 18)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 18)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 19)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 21)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 19)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 21)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 22)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 22)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 99)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 99)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 100)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 102)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 100)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 102)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 103)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 103)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 36)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 36)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 37)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 39)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 37)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 39)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 40)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 40)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 117)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 117)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 118)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 120)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 118)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 120)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 121)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 121)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 54)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[((((int)threadIdx.x) >> 1) * 36)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 54)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 18)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 55)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 57)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 1)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 55)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 57)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 19)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 58)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 2)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 58)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 20)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 135)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 9)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 135)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 27)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 136)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 138)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 10)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 136)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 138)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 28)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 139)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 11)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 139)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 29)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 9)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 11)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 9)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 11)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 10)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 12)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 10)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 12)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 11)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 13)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 11)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 13)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 90)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 92)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 90)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 92)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 91)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 93)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 91)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 93)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 92)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 94)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 92)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 94)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 27)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 29)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 27)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 29)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 28)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 30)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 28)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 30)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 29)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 31)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 29)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 31)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 108)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 110)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 108)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 110)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 109)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 111)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 109)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 111)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 110)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 112)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 110)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 112)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 45)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 47)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 45)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 47)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 46)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 48)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 46)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 48)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 47)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 49)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 47)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 49)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 126)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 128)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 126)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 128)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 127)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 129)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 127)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 129)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 128)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 130)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 128)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 130)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 63)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 65)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 3)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 63)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 65)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 21)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 64)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 66)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 4)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 64)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 66)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 22)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 65)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 67)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 5)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 65)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 67)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 23)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 144)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 146)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 12)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 144)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 146)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 30)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 145)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 147)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 13)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 145)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 147)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 31)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 146)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 148)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 14)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 146)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 148)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 32)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 18)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 18)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 19)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 21)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 19)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 21)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 22)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 20)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 22)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 99)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 99)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 100)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 102)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 100)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 102)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 103)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 101)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 103)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 36)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 36)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 37)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 39)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 37)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 39)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 40)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 38)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 40)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 117)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 117)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 118)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 120)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 118)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 120)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 121)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 119)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 121)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 54)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 54)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 55)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 57)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 55)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 57)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 58)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 56)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 58)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 135)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 135)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 136)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 138)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 136)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 138)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 139)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 137)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 139)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 72)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 74)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 6)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 72)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 74)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 24)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 73)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 75)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 7)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 73)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 75)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 25)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 74)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 76)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 8)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 74)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 76)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 26)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 153)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 155)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 15)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 153)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 155)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 33)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 154)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 156)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 16)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 154)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 156)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 34)]));
            conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 155)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 157)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 17)]));
            conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 155)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
            conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[(((((int)threadIdx.x) & 1) * 4) + 157)] * input1_shared[(((((int)threadIdx.x) >> 1) * 36) + 35)]));
          }
          for (int i1_inner = 0; i1_inner < 2; ++i1_inner) {
            for (int i2_inner = 0; i2_inner < 4; ++i2_inner) {
              for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
                compute[(((((((((((int)blockIdx.x) / 49) * 100352) + ((((int)threadIdx.x) >> 1) * 1568)) + (i1_inner * 784)) + (((((int)blockIdx.x) % 49) / 7) * 112)) + (i2_inner * 28)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + i3_inner)] = max((conv2d_nchw[(((i1_inner * 8) + (i2_inner * 2)) + i3_inner)] + input2[(((((((((((int)blockIdx.x) / 49) * 100352) + ((((int)threadIdx.x) >> 1) * 1568)) + (i1_inner * 784)) + (((((int)blockIdx.x) % 49) / 7) * 112)) + (i2_inner * 28)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + i3_inner)]), 0.000000e+00f);
              }
            }
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_540_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_540<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

