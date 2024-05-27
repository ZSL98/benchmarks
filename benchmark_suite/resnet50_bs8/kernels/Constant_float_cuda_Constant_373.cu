#include "shared.h"
// Node name:	Constant_373
// Description:	Constant
// Input:
// Output:
//	- name: Constant_373_0	type: float	shape: Shape{64, 3, 7, 7}
void Constant_float_cuda_Constant_373(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_373_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_373_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[37632];
    bin_file.read(tmp_mem, 37632);
    cudaMemcpyAsync(output0, tmp_mem, 37632, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

