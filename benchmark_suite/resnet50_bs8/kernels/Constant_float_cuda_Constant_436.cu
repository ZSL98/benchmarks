#include "shared.h"
// Node name:	Constant_436
// Description:	Constant
// Input:
// Output:
//	- name: Constant_436_0	type: float	shape: Shape{128, 512, 1, 1}
void Constant_float_cuda_Constant_436(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_436_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_436_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[262144];
    bin_file.read(tmp_mem, 262144);
    cudaMemcpyAsync(output0, tmp_mem, 262144, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

