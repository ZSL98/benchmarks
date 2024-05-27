#include "shared.h"
// Node name:	Constant_397
// Description:	Constant
// Input:
// Output:
//	- name: Constant_397_0	type: float	shape: Shape{64, 256, 1, 1}
void Constant_float_cuda_Constant_397(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_397_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_397_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[65536];
    bin_file.read(tmp_mem, 65536);
    cudaMemcpyAsync(output0, tmp_mem, 65536, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

