#include "shared.h"
// Node name:	Constant_430
// Description:	Constant
// Input:
// Output:
//	- name: Constant_430_0	type: float	shape: Shape{128, 128, 3, 3}
void Constant_float_cuda_Constant_430(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_430_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_430_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[589824];
    bin_file.read(tmp_mem, 589824);
    cudaMemcpyAsync(output0, tmp_mem, 589824, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

