#include "shared.h"
// Node name:	Constant_71
// Description:	Constant
// Input:
// Output:
//	- name: Constant_71_0	type: float	shape: Shape{1000}
void Constant_float_cuda_Constant_71(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_71_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_71_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[4000];
    bin_file.read(tmp_mem, 4000);
    cudaMemcpyAsync(output0, tmp_mem, 4000, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

