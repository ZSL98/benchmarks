#include "shared.h"
// Node name:	MaxPool_78
// Description:	MaxPool
// Input:
//	- name: Relu_77_0	type: float	shape: Shape{8, 64, 112, 112}
// Output:
//	- name: MaxPool_78_0	type: float	shape: Shape{8, 64, 56, 56}
extern "C" __global__  void MaxPool_float_float_cuda_MaxPool_78(float* input0, float* output0)
{
    {
        float* data = output0;
        float* tensor = input0;
        {
          tensor[((((int)blockIdx.x) * 55) + ((int)threadIdx.x))] = -3.402823e+38f;
          for (int rv0 = 0; rv0 < 3; ++rv0) {
            for (int rv1 = 0; rv1 < 3; ++rv1) {
              tensor[((((int)blockIdx.x) * 55) + ((int)threadIdx.x))] = max(tensor[((((int)blockIdx.x) * 55) + ((int)threadIdx.x))], data[((((((((int)blockIdx.x) / 55) * 12544) + ((((int)blockIdx.x) % 55) * 224)) + (rv0 * 112)) + (((int)threadIdx.x) * 2)) + rv1)]);
            }
          }
        }

    }

}
extern void MaxPool_float_float_cuda_MaxPool_78_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* output0) {
    MaxPool_float_float_cuda_MaxPool_78<<<grids, blocks, mem, stream>>>(input0, output0);
}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

