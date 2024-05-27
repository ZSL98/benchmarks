#include "shared.h"
// Node name:	Constant_505
// Description:	Constant
// Input:
// Output:
//	- name: Constant_505_0	type: float	shape: Shape{2048, 1024, 1, 1}
void Constant_float_cuda_Constant_505(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_505_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_505_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[8388608];
    bin_file.read(tmp_mem, 8388608);
    cudaMemcpyAsync(output0, tmp_mem, 8388608, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

