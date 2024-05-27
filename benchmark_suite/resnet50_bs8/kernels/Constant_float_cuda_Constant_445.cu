#include "shared.h"
// Node name:	Constant_445
// Description:	Constant
// Input:
// Output:
//	- name: Constant_445_0	type: float	shape: Shape{256, 512, 1, 1}
void Constant_float_cuda_Constant_445(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_445_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_445_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[524288];
    bin_file.read(tmp_mem, 524288);
    cudaMemcpyAsync(output0, tmp_mem, 524288, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

