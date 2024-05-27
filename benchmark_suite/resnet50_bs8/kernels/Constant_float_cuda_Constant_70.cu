#include "shared.h"
// Node name:	Constant_70
// Description:	Constant
// Input:
// Output:
//	- name: Constant_70_0	type: float	shape: Shape{2048, 1000}
void Constant_float_cuda_Constant_70(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_70_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_70_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[8192000];
    bin_file.read(tmp_mem, 8192000);
    cudaMemcpyAsync(output0, tmp_mem, 8192000, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

