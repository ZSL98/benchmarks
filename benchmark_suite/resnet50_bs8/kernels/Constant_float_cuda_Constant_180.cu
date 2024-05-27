#include "shared.h"
// Node name:	Constant_180
// Description:	Constant
// Input:
// Output:
//	- name: Constant_180_0	type: float	shape: Shape{}
void Constant_float_cuda_Constant_180(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_180_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_180_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[4];
    bin_file.read(tmp_mem, 4);
    cudaMemcpyAsync(output0, tmp_mem, 4, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

