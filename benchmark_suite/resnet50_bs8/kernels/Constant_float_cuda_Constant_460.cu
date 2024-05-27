#include "shared.h"
// Node name:	Constant_460
// Description:	Constant
// Input:
// Output:
//	- name: Constant_460_0	type: float	shape: Shape{256, 256, 3, 3}
void Constant_float_cuda_Constant_460(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_460_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_460_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[2359296];
    bin_file.read(tmp_mem, 2359296);
    cudaMemcpyAsync(output0, tmp_mem, 2359296, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
