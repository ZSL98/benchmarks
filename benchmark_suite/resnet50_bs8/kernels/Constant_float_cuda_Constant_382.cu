#include "shared.h"
// Node name:	Constant_382
// Description:	Constant
// Input:
// Output:
//	- name: Constant_382_0	type: float	shape: Shape{64, 64, 3, 3}
void Constant_float_cuda_Constant_382(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_382_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_382_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[147456];
    bin_file.read(tmp_mem, 147456);
    cudaMemcpyAsync(output0, tmp_mem, 147456, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

