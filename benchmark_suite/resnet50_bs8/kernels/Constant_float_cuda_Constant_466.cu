#include "shared.h"
// Node name:	Constant_466
// Description:	Constant
// Input:
// Output:
//	- name: Constant_466_0	type: float	shape: Shape{256, 1024, 1, 1}
void Constant_float_cuda_Constant_466(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_466_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_466_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[1048576];
    bin_file.read(tmp_mem, 1048576);
    cudaMemcpyAsync(output0, tmp_mem, 1048576, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
