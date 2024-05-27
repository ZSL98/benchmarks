#include "shared.h"
// Node name:	Constant_54
// Description:	Constant
// Input:
// Output:
//	- name: Constant_54_0	type: float	shape: Shape{2048}
void Constant_float_cuda_Constant_54(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_54_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_54_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[8192];
    bin_file.read(tmp_mem, 8192);
    cudaMemcpyAsync(output0, tmp_mem, 8192, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

