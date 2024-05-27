#include "shared.h"
// Node name:	Constant_526
// Description:	Constant
// Input:
// Output:
//	- name: Constant_526_0	type: float	shape: Shape{512, 512, 3, 3}
void Constant_float_cuda_Constant_526(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_526_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_526_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[9437184];
    bin_file.read(tmp_mem, 9437184);
    cudaMemcpyAsync(output0, tmp_mem, 9437184, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
