#include "shared.h"
// Node name:	Constant_406
// Description:	Constant
// Input:
// Output:
//	- name: Constant_406_0	type: float	shape: Shape{128, 256, 1, 1}
void Constant_float_cuda_Constant_406(cudaStream_t stream, float* output0)
{
    std::ifstream bin_file("./Constant/Constant_406_0.bin" , std::ios::in | std::ios::binary);
    if(bin_file.fail())
    {
    	printf("Load Constant_406_0 failed.\n");
    	exit(1);
    }
    char* tmp_mem = new char[131072];
    bin_file.read(tmp_mem, 131072);
    cudaMemcpyAsync(output0, tmp_mem, 131072, cudaMemcpyHostToDevice, stream);
    bin_file.close();

}
// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

