#include "shared.h"
// Node name:	Constant_511
// Description:	Constant
// Input:
// Output:
//	- name: Constant_511_0	type: float	shape: Shape{2048, 512, 1, 1}
void Constant_float_cuda_Constant_511(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_511_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_511_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[4194304];
    bin_file.read(tmp_mem, 4194304);
    cudaMemcpyAsync(output0, tmp_mem, 4194304, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

