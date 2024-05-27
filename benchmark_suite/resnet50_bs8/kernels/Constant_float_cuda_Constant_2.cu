#include "shared.h"
// Node name:	Constant_2
// Description:	Constant
// Input:
// Output:
//	- name: Constant_2_0	type: float	shape: Shape{256}
void Constant_float_cuda_Constant_2(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_2_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_2_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[1024];
    bin_file.read(tmp_mem, 1024);
    cudaMemcpyAsync(output0, tmp_mem, 1024, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

