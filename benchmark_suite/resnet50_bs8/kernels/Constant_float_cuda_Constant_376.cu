#include "shared.h"
// Node name:	Constant_376
// Description:	Constant
// Input:
// Output:
//	- name: Constant_376_0	type: float	shape: Shape{256, 64, 1, 1}
void Constant_float_cuda_Constant_376(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_376_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_376_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[65536];
    bin_file.read(tmp_mem, 65536);
    cudaMemcpyAsync(output0, tmp_mem, 65536, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

