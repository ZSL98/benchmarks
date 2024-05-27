#include "shared.h"
// Node name:	Matched_Pattern_549
// Description:	Matched_Pattern
// Input:
//	- name: Relu_199_0	type: float	shape: Shape{8, 1024, 14, 14}
//	- name: Constant_457_0	type: float	shape: Shape{256, 1024, 1, 1}
//	- name: Broadcast_458_0	type: float	shape: Shape{8, 256, 14, 14}
// Output:
//	- name: Relu_203_0	type: float	shape: Shape{8, 256, 14, 14}
extern "C" __global__  void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549(float* input0, float* input1, float* input2, float* output0)
{
    __shared__ float pad_temp_shared[256];
    __shared__ float input1_shared[1024];
    {
        float* compute = output0;
        {
          float conv2d_nchw[32];
          
          
          conv2d_nchw[0] = 0.000000e+00f;
          conv2d_nchw[16] = 0.000000e+00f;
          conv2d_nchw[1] = 0.000000e+00f;
          conv2d_nchw[17] = 0.000000e+00f;
          conv2d_nchw[4] = 0.000000e+00f;
          conv2d_nchw[20] = 0.000000e+00f;
          conv2d_nchw[5] = 0.000000e+00f;
          conv2d_nchw[21] = 0.000000e+00f;
          conv2d_nchw[2] = 0.000000e+00f;
          conv2d_nchw[18] = 0.000000e+00f;
          conv2d_nchw[3] = 0.000000e+00f;
          conv2d_nchw[19] = 0.000000e+00f;
          conv2d_nchw[6] = 0.000000e+00f;
          conv2d_nchw[22] = 0.000000e+00f;
          conv2d_nchw[7] = 0.000000e+00f;
          conv2d_nchw[23] = 0.000000e+00f;
          conv2d_nchw[8] = 0.000000e+00f;
          conv2d_nchw[24] = 0.000000e+00f;
          conv2d_nchw[9] = 0.000000e+00f;
          conv2d_nchw[25] = 0.000000e+00f;
          conv2d_nchw[12] = 0.000000e+00f;
          conv2d_nchw[28] = 0.000000e+00f;
          conv2d_nchw[13] = 0.000000e+00f;
          conv2d_nchw[29] = 0.000000e+00f;
          conv2d_nchw[10] = 0.000000e+00f;
          conv2d_nchw[26] = 0.000000e+00f;
          conv2d_nchw[11] = 0.000000e+00f;
          conv2d_nchw[27] = 0.000000e+00f;
          conv2d_nchw[14] = 0.000000e+00f;
          conv2d_nchw[30] = 0.000000e+00f;
          conv2d_nchw[15] = 0.000000e+00f;
          conv2d_nchw[31] = 0.000000e+00f;
          for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
            __syncthreads();
            *(float2*)(pad_temp_shared + (((int)threadIdx.x) * 2)) = *(float2*)(input0 + (((((((((int)blockIdx.x) / 196) * 802816) + (rc_outer_outer * 3136)) + ((((int)threadIdx.x) >> 1) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + ((((int)threadIdx.x) & 1) * 14)) + ((((int)blockIdx.x) % 7) * 2)));
            *(float2*)(pad_temp_shared + ((((int)threadIdx.x) * 2) + 64)) = *(float2*)(input0 + ((((((((((int)blockIdx.x) / 196) * 802816) + (rc_outer_outer * 3136)) + ((((int)threadIdx.x) >> 1) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + ((((int)threadIdx.x) & 1) * 14)) + ((((int)blockIdx.x) % 7) * 2)) + 200704));
            *(float2*)(pad_temp_shared + ((((int)threadIdx.x) * 2) + 128)) = *(float2*)(input0 + ((((((((((int)blockIdx.x) / 196) * 802816) + (rc_outer_outer * 3136)) + ((((int)threadIdx.x) >> 1) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + ((((int)threadIdx.x) & 1) * 14)) + ((((int)blockIdx.x) % 7) * 2)) + 401408));
            *(float2*)(pad_temp_shared + ((((int)threadIdx.x) * 2) + 192)) = *(float2*)(input0 + ((((((((((int)blockIdx.x) / 196) * 802816) + (rc_outer_outer * 3136)) + ((((int)threadIdx.x) >> 1) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + ((((int)threadIdx.x) & 1) * 14)) + ((((int)blockIdx.x) % 7) * 2)) + 602112));
            *(float4*)(input1_shared + (((int)threadIdx.x) * 4)) = *(float4*)(input1 + ((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 128)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 8192));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 256)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 16384));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 384)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 24576));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 512)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 32768));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 640)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 40960));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 768)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 49152));
            *(float4*)(input1_shared + ((((int)threadIdx.x) * 4) + 896)) = *(float4*)(input1 + (((((((((int)blockIdx.x) % 196) / 49) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 57344));
            __syncthreads();
            for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
              conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[(rc_outer_inner * 8)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[16] = (conv2d_nchw[16] + (pad_temp_shared[(rc_outer_inner * 8)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[((rc_outer_inner * 8) + 1)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[17] = (conv2d_nchw[17] + (pad_temp_shared[((rc_outer_inner * 8) + 1)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[((rc_outer_inner * 8) + 64)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[20] = (conv2d_nchw[20] + (pad_temp_shared[((rc_outer_inner * 8) + 64)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[((rc_outer_inner * 8) + 65)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[21] = (conv2d_nchw[21] + (pad_temp_shared[((rc_outer_inner * 8) + 65)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[0] = (conv2d_nchw[0] + (pad_temp_shared[((rc_outer_inner * 8) + 4)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[16] = (conv2d_nchw[16] + (pad_temp_shared[((rc_outer_inner * 8) + 4)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[1] = (conv2d_nchw[1] + (pad_temp_shared[((rc_outer_inner * 8) + 5)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[17] = (conv2d_nchw[17] + (pad_temp_shared[((rc_outer_inner * 8) + 5)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[4] = (conv2d_nchw[4] + (pad_temp_shared[((rc_outer_inner * 8) + 68)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[20] = (conv2d_nchw[20] + (pad_temp_shared[((rc_outer_inner * 8) + 68)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[5] = (conv2d_nchw[5] + (pad_temp_shared[((rc_outer_inner * 8) + 69)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[21] = (conv2d_nchw[21] + (pad_temp_shared[((rc_outer_inner * 8) + 69)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[((rc_outer_inner * 8) + 2)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[18] = (conv2d_nchw[18] + (pad_temp_shared[((rc_outer_inner * 8) + 2)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[((rc_outer_inner * 8) + 3)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[19] = (conv2d_nchw[19] + (pad_temp_shared[((rc_outer_inner * 8) + 3)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[((rc_outer_inner * 8) + 66)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[22] = (conv2d_nchw[22] + (pad_temp_shared[((rc_outer_inner * 8) + 66)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[((rc_outer_inner * 8) + 67)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[23] = (conv2d_nchw[23] + (pad_temp_shared[((rc_outer_inner * 8) + 67)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[2] = (conv2d_nchw[2] + (pad_temp_shared[((rc_outer_inner * 8) + 6)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[18] = (conv2d_nchw[18] + (pad_temp_shared[((rc_outer_inner * 8) + 6)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[3] = (conv2d_nchw[3] + (pad_temp_shared[((rc_outer_inner * 8) + 7)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[19] = (conv2d_nchw[19] + (pad_temp_shared[((rc_outer_inner * 8) + 7)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[6] = (conv2d_nchw[6] + (pad_temp_shared[((rc_outer_inner * 8) + 70)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[22] = (conv2d_nchw[22] + (pad_temp_shared[((rc_outer_inner * 8) + 70)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[7] = (conv2d_nchw[7] + (pad_temp_shared[((rc_outer_inner * 8) + 71)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[23] = (conv2d_nchw[23] + (pad_temp_shared[((rc_outer_inner * 8) + 71)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[((rc_outer_inner * 8) + 128)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[24] = (conv2d_nchw[24] + (pad_temp_shared[((rc_outer_inner * 8) + 128)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[((rc_outer_inner * 8) + 129)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[25] = (conv2d_nchw[25] + (pad_temp_shared[((rc_outer_inner * 8) + 129)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[((rc_outer_inner * 8) + 192)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[28] = (conv2d_nchw[28] + (pad_temp_shared[((rc_outer_inner * 8) + 192)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[((rc_outer_inner * 8) + 193)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[29] = (conv2d_nchw[29] + (pad_temp_shared[((rc_outer_inner * 8) + 193)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[8] = (conv2d_nchw[8] + (pad_temp_shared[((rc_outer_inner * 8) + 132)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[24] = (conv2d_nchw[24] + (pad_temp_shared[((rc_outer_inner * 8) + 132)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[9] = (conv2d_nchw[9] + (pad_temp_shared[((rc_outer_inner * 8) + 133)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[25] = (conv2d_nchw[25] + (pad_temp_shared[((rc_outer_inner * 8) + 133)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[12] = (conv2d_nchw[12] + (pad_temp_shared[((rc_outer_inner * 8) + 196)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[28] = (conv2d_nchw[28] + (pad_temp_shared[((rc_outer_inner * 8) + 196)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[13] = (conv2d_nchw[13] + (pad_temp_shared[((rc_outer_inner * 8) + 197)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[29] = (conv2d_nchw[29] + (pad_temp_shared[((rc_outer_inner * 8) + 197)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[((rc_outer_inner * 8) + 130)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[26] = (conv2d_nchw[26] + (pad_temp_shared[((rc_outer_inner * 8) + 130)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[((rc_outer_inner * 8) + 131)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[27] = (conv2d_nchw[27] + (pad_temp_shared[((rc_outer_inner * 8) + 131)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[((rc_outer_inner * 8) + 194)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[30] = (conv2d_nchw[30] + (pad_temp_shared[((rc_outer_inner * 8) + 194)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[((rc_outer_inner * 8) + 195)] * input1_shared[((((int)threadIdx.x) * 16) + (rc_outer_inner * 2))]));
              conv2d_nchw[31] = (conv2d_nchw[31] + (pad_temp_shared[((rc_outer_inner * 8) + 195)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 512)]));
              conv2d_nchw[10] = (conv2d_nchw[10] + (pad_temp_shared[((rc_outer_inner * 8) + 134)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[26] = (conv2d_nchw[26] + (pad_temp_shared[((rc_outer_inner * 8) + 134)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[11] = (conv2d_nchw[11] + (pad_temp_shared[((rc_outer_inner * 8) + 135)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[27] = (conv2d_nchw[27] + (pad_temp_shared[((rc_outer_inner * 8) + 135)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[14] = (conv2d_nchw[14] + (pad_temp_shared[((rc_outer_inner * 8) + 198)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[30] = (conv2d_nchw[30] + (pad_temp_shared[((rc_outer_inner * 8) + 198)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
              conv2d_nchw[15] = (conv2d_nchw[15] + (pad_temp_shared[((rc_outer_inner * 8) + 199)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 1)]));
              conv2d_nchw[31] = (conv2d_nchw[31] + (pad_temp_shared[((rc_outer_inner * 8) + 199)] * input1_shared[(((((int)threadIdx.x) * 16) + (rc_outer_inner * 2)) + 513)]));
            }
          }
          for (int i0_inner = 0; i0_inner < 4; ++i0_inner) {
            for (int i2_inner = 0; i2_inner < 2; ++i2_inner) {
              for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
                compute[(((((((((((int)blockIdx.x) / 196) * 200704) + (i0_inner * 50176)) + (((((int)blockIdx.x) % 196) / 49) * 12544)) + (((int)threadIdx.x) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + (i2_inner * 14)) + ((((int)blockIdx.x) % 7) * 2)) + i3_inner)] = max((conv2d_nchw[(((i0_inner * 4) + (i2_inner * 2)) + i3_inner)] + input2[(((((((((((int)blockIdx.x) / 196) * 200704) + (i0_inner * 50176)) + (((((int)blockIdx.x) % 196) / 49) * 12544)) + (((int)threadIdx.x) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + (i2_inner * 14)) + ((((int)blockIdx.x) % 7) * 2)) + i3_inner)]), 0.000000e+00f);
                compute[((((((((((((int)blockIdx.x) / 196) * 200704) + (i0_inner * 50176)) + (((((int)blockIdx.x) % 196) / 49) * 12544)) + (((int)threadIdx.x) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + (i2_inner * 14)) + ((((int)blockIdx.x) % 7) * 2)) + i3_inner) + 6272)] = max((conv2d_nchw[((((i0_inner * 4) + (i2_inner * 2)) + i3_inner) + 16)] + input2[((((((((((((int)blockIdx.x) / 196) * 200704) + (i0_inner * 50176)) + (((((int)blockIdx.x) % 196) / 49) * 12544)) + (((int)threadIdx.x) * 196)) + (((((int)blockIdx.x) % 49) / 7) * 28)) + (i2_inner * 14)) + ((((int)blockIdx.x) % 7) * 2)) + i3_inner) + 6272)]), 0.000000e+00f);
              }
            }
          }
        }

    }

}
extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0) {
    Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549<<<grids, blocks, mem, stream>>>(input0, input1, input2, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

