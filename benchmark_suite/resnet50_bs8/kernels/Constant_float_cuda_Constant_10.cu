#include "shared.h"
// Node name:	Constant_10
// Description:	Constant
// Input:
// Output:
//	- name: Constant_10_0	type: float	shape: Shape{64}
void Constant_float_cuda_Constant_10(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_10_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_10_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[256];
    bin_file.read(tmp_mem, 256);
    cudaMemcpyAsync(output0, tmp_mem, 256, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

