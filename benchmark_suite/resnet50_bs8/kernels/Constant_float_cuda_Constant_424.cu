#include "shared.h"
// Node name:	Constant_424
// Description:	Constant
// Input:
// Output:
//	- name: Constant_424_0	type: float	shape: Shape{512, 128, 1, 1}
void Constant_float_cuda_Constant_424(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_424_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_424_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[262144];
    bin_file.read(tmp_mem, 262144);
    cudaMemcpyAsync(output0, tmp_mem, 262144, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

