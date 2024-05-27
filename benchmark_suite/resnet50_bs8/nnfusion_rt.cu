#include "shared.h"
#include "nnfusion_rt.h"
#ifndef __HALF_COMPARE_EX__
#define __HALF_COMPARE_EX__
inline __device__ half max(half x, half y) { return x > y ? x : y; }
inline __device__ half min(half x, half y) { return x < y ? x : y; }
#endif
char* group_0_CUDA_GPU0_allocator_memory_pool;
float* Broadcast_317_0;
float* Broadcast_506_0;
float* Broadcast_449_0;
float* Broadcast_410_0;
float* Broadcast_377_0;
float* Broadcast_374_0;
float* Pad_73_0;
float* Relu_77_0;
float* MaxPool_78_0;
float* BatchNormInference_83_0;
float* Broadcast_386_0;
float* Broadcast_383_0;
float* Broadcast_380_0;
float* Relu_85_0;
float* Relu_89_0;
float* BatchNormInference_92_0;
float* Relu_94_0;
float* Broadcast_395_0;
float* Broadcast_392_0;
float* Broadcast_389_0;
float* Relu_98_0;
float* Relu_102_0;
float* BatchNormInference_105_0;
float* Relu_107_0;
float* Broadcast_404_0;
float* Broadcast_401_0;
float* Broadcast_398_0;
float* Relu_111_0;
float* Relu_115_0;
float* BatchNormInference_118_0;
float* Relu_120_0;
float* Pad_122_0;
float* BatchNormInference_128_0;
float* Broadcast_416_0;
float* Broadcast_413_0;
float* Broadcast_407_0;
float* Relu_129_0;
float* Pad_131_0;
float* Relu_135_0;
float* BatchNormInference_138_0;
float* Relu_140_0;
float* Broadcast_425_0;
float* Broadcast_422_0;
float* Broadcast_419_0;
float* Relu_144_0;
float* Relu_148_0;
float* BatchNormInference_151_0;
float* Relu_153_0;
float* Broadcast_434_0;
float* Broadcast_431_0;
float* Broadcast_428_0;
float* Relu_157_0;
float* Relu_161_0;
float* BatchNormInference_164_0;
float* Relu_166_0;
float* Broadcast_443_0;
float* Broadcast_440_0;
float* Broadcast_437_0;
float* Relu_170_0;
float* Relu_174_0;
float* BatchNormInference_177_0;
float* Relu_179_0;
float* Pad_181_0;
float* BatchNormInference_187_0;
float* Broadcast_455_0;
float* Broadcast_452_0;
float* Broadcast_446_0;
float* Relu_188_0;
float* Pad_190_0;
float* Relu_194_0;
float* BatchNormInference_197_0;
float* Relu_199_0;
float* Broadcast_464_0;
float* Broadcast_461_0;
float* Broadcast_458_0;
float* Relu_203_0;
float* Relu_207_0;
float* BatchNormInference_210_0;
float* Relu_212_0;
float* Broadcast_473_0;
float* Broadcast_470_0;
float* Broadcast_467_0;
float* Relu_216_0;
float* Relu_220_0;
float* BatchNormInference_223_0;
float* Relu_225_0;
float* Broadcast_482_0;
float* Broadcast_479_0;
float* Broadcast_476_0;
float* Relu_229_0;
float* Relu_233_0;
float* BatchNormInference_236_0;
float* Relu_238_0;
float* Broadcast_491_0;
float* Broadcast_488_0;
float* Broadcast_485_0;
float* Relu_242_0;
float* Relu_246_0;
float* BatchNormInference_249_0;
float* Relu_251_0;
float* Broadcast_500_0;
float* Broadcast_497_0;
float* Broadcast_494_0;
float* Relu_255_0;
float* Relu_259_0;
float* BatchNormInference_262_0;
float* Relu_264_0;
float* Pad_268_0;
float* BatchNormInference_273_0;
float* Broadcast_512_0;
float* Broadcast_509_0;
float* Broadcast_503_0;
float* Relu_272_0;
float* Pad_275_0;
float* Relu_279_0;
float* BatchNormInference_282_0;
float* Relu_284_0;
float* Broadcast_521_0;
float* Broadcast_518_0;
float* Broadcast_515_0;
float* Relu_288_0;
float* Relu_292_0;
float* BatchNormInference_295_0;
float* Relu_297_0;
float* Broadcast_530_0;
float* Broadcast_527_0;
float* Broadcast_524_0;
float* Relu_301_0;
float* Relu_305_0;
float* BatchNormInference_308_0;
float* Relu_310_0;
float* Sum_311_0;
float* Divide_313_0;
float* Reshape_314_0;
float* Reshape_315_0;
float* Dot_316_0;
float* Add_318_0;
float* Result_319_0;
char* group_persist_CUDA_GPU0_allocator_memory_pool;
float* Constant_71_0;
float* Constant_70_0;
float* Constant_312_0;
float* Constant_54_0;
float* Constant_505_0;
float* Constant_267_0;
float* Constant_23_0;
float* Constant_448_0;
float* Constant_180_0;
float* Constant_49_0;
float* Constant_409_0;
float* Constant_121_0;
float* Constant_2_0;
float* Constant_376_0;
float* Constant_10_0;
float* Constant_373_0;
float* Constant_72_0;
float* Constant_385_0;
float* Constant_382_0;
float* Constant_379_0;
float* Constant_394_0;
float* Constant_391_0;
float* Constant_388_0;
float* Constant_403_0;
float* Constant_400_0;
float* Constant_397_0;
float* Constant_415_0;
float* Constant_35_0;
float* Constant_412_0;
float* Constant_130_0;
float* Constant_406_0;
float* Constant_424_0;
float* Constant_421_0;
float* Constant_418_0;
float* Constant_433_0;
float* Constant_430_0;
float* Constant_427_0;
float* Constant_442_0;
float* Constant_439_0;
float* Constant_436_0;
float* Constant_454_0;
float* Constant_451_0;
float* Constant_189_0;
float* Constant_445_0;
float* Constant_463_0;
float* Constant_460_0;
float* Constant_457_0;
float* Constant_472_0;
float* Constant_469_0;
float* Constant_466_0;
float* Constant_481_0;
float* Constant_478_0;
float* Constant_475_0;
float* Constant_490_0;
float* Constant_487_0;
float* Constant_484_0;
float* Constant_499_0;
float* Constant_496_0;
float* Constant_493_0;
float* Constant_511_0;
float* Constant_508_0;
float* Constant_274_0;
float* Constant_502_0;
float* Constant_520_0;
float* Constant_517_0;
float* Constant_514_0;
float* Constant_529_0;
float* Constant_526_0;
float* Constant_523_0;

extern void Constant_float_cuda_Constant_469(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_448(cudaStream_t stream, float* output0);

extern void Pad_float_float_float_cuda_Pad_73_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Constant_float_cuda_Constant_180(cudaStream_t stream, float* output0);

extern void MaxPool_float_float_cuda_MaxPool_78_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_562_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_532_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Sum_float_float_cuda_Sum_311_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* output0);

extern void Dot_float_float_float_cuda_Dot_316_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* __restrict__ input0,  float* __restrict__ input1,  float* __restrict__ output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_542_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Result_float_float_cuda_lib_Result_319(float* input0, float** output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_560_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_582_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Pad_float_float_float_cuda_Pad_275_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_539_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_535_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Add_float_float_float_cuda_Add_318_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_569_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_534_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_445(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_533_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Pad_float_float_float_cuda_Pad_131_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Pad_float_float_float_cuda_Pad_268_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Pad_float_float_float_cuda_Pad_181_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Pad_float_float_float_cuda_Pad_122_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Pad_float_float_float_cuda_Pad_190_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_548_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_559_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_581_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_457(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_49(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_400(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_397(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_487(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_23(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_442(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_496(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_451(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_541_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_424(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_466(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_499(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_520(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_130(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_376(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_35(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_561_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_523(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_547_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_511(cudaStream_t stream, float* output0);

extern void Broadcast_float_float_cuda_Broadcast_317_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* output0);

extern void Constant_float_cuda_Constant_415(cudaStream_t stream, float* output0);

extern void FusedKernel_float_float_float_cuda_Add_Relu_0_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Constant_float_cuda_Constant_121(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_379(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_385(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_70(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_436(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_421(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_412(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_391(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_490(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_312(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_10(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_430(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_570_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

#ifndef __NNFUSION_GRAPH_CONFIG__
#define __NNFUSION_GRAPH_CONFIG__
#define NNFUSION_GRAPH_INPUT_NUM 1
#define NNFUSION_GRAPH_OUTPUT_NUM 1
#define NNFUSION_GRAPH_INPUT_DTYPE_0 float
#define NNFUSION_GRAPH_INPUT_SHAPE_0 {8, 3, 224, 224}
#define NNFUSION_GRAPH_OUTPUT_DTYPE_0 float
#define NNFUSION_GRAPH_OUTPUT_SHAPE_0 {8, 1000}
#endif


extern void Constant_float_cuda_Constant_481(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_439(cudaStream_t stream, float* output0);

extern void Divide_float_float_float_cuda_Divide_313_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* output0);

extern void Constant_float_cuda_Constant_394(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_529(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_409(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_189(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_403(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_475(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_517(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_540_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_267(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_406(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_514(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_550_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_71(cudaStream_t stream, float* output0);

extern void Broadcast_float_float_cuda_lib_Broadcast_506(float* input0, float* output0);

extern void Constant_float_cuda_Constant_478(cudaStream_t stream, float* output0);
// 0: CUDA_GPU; 1: ROCM_GPU; 2: GENERIC_CPU; 3: HLSL; 4: GraphCore; 5: UNKNOWN
int get_device_type()
{
    return 0;
}

extern void Constant_float_cuda_Constant_373(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_382(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_565_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_274(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_388(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_427(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_472(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_454(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_463(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_418(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_460(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_2(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_484(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_526(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_502(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_508(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_433(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_72(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_505(cudaStream_t stream, float* output0);

extern void Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_574_Call(const dim3 &grids, const dim3 &blocks, unsigned mem, cudaStream_t stream, float* input0, float* input1, float* input2, float* output0);

extern void Constant_float_cuda_Constant_54(cudaStream_t stream, float* output0);

extern void Constant_float_cuda_Constant_493(cudaStream_t stream, float* output0);

extern "C" void cuda_init()
{
CUDA_SAFE_CALL(cudaDeviceReset());
// total memory:214524032
CUDA_SAFE_CALL(cudaSetDevice(0));
CUDA_SAFE_CALL(cudaMalloc((void**)&group_0_CUDA_GPU0_allocator_memory_pool,112426240));
CUDA_SAFE_CALL(cudaMemset((void*)group_0_CUDA_GPU0_allocator_memory_pool, 0, 112426240));
Broadcast_317_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+0);
Broadcast_506_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Broadcast_449_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_410_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_377_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_374_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
Pad_73_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+73891072);
Relu_77_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+78969472);
MaxPool_78_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
BatchNormInference_83_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+54623488);
Broadcast_386_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_383_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+80313600);
Broadcast_380_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+86736128);
Relu_85_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+93158656);
Relu_89_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
BatchNormInference_92_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+80313600);
Relu_94_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_395_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
Broadcast_392_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+73891072);
Broadcast_389_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+80313600);
Relu_98_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+86736128);
Relu_102_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+80313600);
BatchNormInference_105_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+86736128);
Relu_107_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
Broadcast_404_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_401_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+73891072);
Broadcast_398_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+80313600);
Relu_111_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+86736128);
Relu_115_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+80313600);
BatchNormInference_118_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+86736128);
Relu_120_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Pad_122_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
BatchNormInference_128_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+73891072);
Broadcast_416_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_413_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+48200960);
Broadcast_407_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+51412224);
Relu_129_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+86736128);
Pad_131_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Relu_135_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+36289792);
BatchNormInference_138_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Relu_140_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_425_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_422_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+35355904);
Broadcast_419_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+38567168);
Relu_144_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Relu_148_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+38567168);
BatchNormInference_151_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Relu_153_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_434_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_431_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+35355904);
Broadcast_428_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+38567168);
Relu_157_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Relu_161_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+38567168);
BatchNormInference_164_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Relu_166_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_443_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Broadcast_440_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+35355904);
Broadcast_437_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+38567168);
Relu_170_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Relu_174_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+38567168);
BatchNormInference_177_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Relu_179_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+22510848);
Pad_181_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
BatchNormInference_187_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+35355904);
Broadcast_455_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_452_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_446_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+11271424);
Relu_188_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+41778432);
Pad_190_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+11271424);
Relu_194_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+18644224);
BatchNormInference_197_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Relu_199_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_464_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_461_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+16088320);
Broadcast_458_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
Relu_203_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_207_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
BatchNormInference_210_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_212_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_473_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_470_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+16088320);
Broadcast_467_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
Relu_216_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_220_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
BatchNormInference_223_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_225_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_482_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_479_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+16088320);
Broadcast_476_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
Relu_229_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_233_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
BatchNormInference_236_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_238_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_491_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_488_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+16088320);
Broadcast_485_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
Relu_242_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_246_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
BatchNormInference_249_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_251_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_500_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Broadcast_497_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+16088320);
Broadcast_494_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
Relu_255_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_259_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+17693952);
BatchNormInference_262_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Relu_264_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+9665792);
Pad_268_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
BatchNormInference_273_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+16088320);
Broadcast_512_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Broadcast_509_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_503_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+4046080);
Relu_272_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+19299584);
Pad_275_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+4046080);
Relu_279_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+8240384);
BatchNormInference_282_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Relu_284_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Broadcast_521_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_518_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+6454528);
Broadcast_515_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+7257344);
Relu_288_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+8060160);
Relu_292_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+7257344);
BatchNormInference_295_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+8060160);
Relu_297_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Broadcast_530_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Broadcast_527_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+6454528);
Broadcast_524_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+7257344);
Relu_301_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+8060160);
Relu_305_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+7257344);
BatchNormInference_308_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+8060160);
Relu_310_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Sum_311_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Divide_313_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Reshape_314_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Reshape_315_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+3243264);
Dot_316_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Add_318_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
Result_319_0 = (float*)(group_0_CUDA_GPU0_allocator_memory_pool+32000);
CUDA_SAFE_CALL(cudaSetDevice(0));
CUDA_SAFE_CALL(cudaMalloc((void**)&group_persist_CUDA_GPU0_allocator_memory_pool,102097792));
CUDA_SAFE_CALL(cudaMemset((void*)group_persist_CUDA_GPU0_allocator_memory_pool, 0, 102097792));
Constant_71_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+0);
Constant_70_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+4032);
Constant_312_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+8196032);
Constant_54_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+8261568);
Constant_505_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+8269760);
Constant_267_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+16658368);
Constant_23_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+16658432);
Constant_448_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+16662528);
Constant_180_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+18759680);
Constant_49_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+18759744);
Constant_409_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+18761792);
Constant_121_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19286080);
Constant_2_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19286144);
Constant_376_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19287168);
Constant_10_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19352704);
Constant_373_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19352960);
Constant_72_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19390592);
Constant_385_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19390656);
Constant_382_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19456192);
Constant_379_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19603648);
Constant_394_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19620032);
Constant_391_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19685568);
Constant_388_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19833024);
Constant_403_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19898560);
Constant_400_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+19964096);
Constant_397_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+20111552);
Constant_415_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+20177088);
Constant_35_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+20439232);
Constant_412_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+20439744);
Constant_130_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+21029568);
Constant_406_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+21029632);
Constant_424_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+21160704);
Constant_421_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+21422848);
Constant_418_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+22012672);
Constant_433_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+22274816);
Constant_430_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+22536960);
Constant_427_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+23126784);
Constant_442_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+23388928);
Constant_439_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+23651072);
Constant_436_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+24240896);
Constant_454_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+24503040);
Constant_451_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+25551616);
Constant_189_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+27910912);
Constant_445_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+27910976);
Constant_463_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+28435264);
Constant_460_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+29483840);
Constant_457_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+31843136);
Constant_472_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+32891712);
Constant_469_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+33940288);
Constant_466_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+36299584);
Constant_481_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+37348160);
Constant_478_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+38396736);
Constant_475_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+40756032);
Constant_490_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+41804608);
Constant_487_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+42853184);
Constant_484_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+45212480);
Constant_499_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+46261056);
Constant_496_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+47309632);
Constant_493_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+49668928);
Constant_511_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+50717504);
Constant_508_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+54911808);
Constant_274_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+64348992);
Constant_502_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+64349056);
Constant_520_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+66446208);
Constant_517_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+70640512);
Constant_514_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+80077696);
Constant_529_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+84272000);
Constant_526_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+88466304);
Constant_523_0 = (float*)(group_persist_CUDA_GPU0_allocator_memory_pool+97903488);
// create streams/handles
 // name=resnet_model/dense/bias/read/_265__cf__265
//Const load, Constant_71_0);
 // name=resnet_model/dense/kernel/read/_266__cf__266
//Const load, Constant_70_0);
 // name=Constant_312
//Const load, Constant_312_0);
 // name=resnet_model/batch_normalization_43/beta/read/_152__cf__152
//Const load, Constant_54_0);
 // name=Constant_505
//Const load, Constant_505_0);
 // name=Constant_267
//Const load, Constant_267_0);
 // name=resnet_model/batch_normalization_24/beta/read/_68__cf__68
//Const load, Constant_23_0);
 // name=Constant_448
//Const load, Constant_448_0);
 // name=Constant_180
//Const load, Constant_180_0);
 // name=resnet_model/batch_normalization_11/beta/read/_12__cf__12
//Const load, Constant_49_0);
 // name=Constant_409
//Const load, Constant_409_0);
 // name=Constant_121
//Const load, Constant_121_0);
 // name=resnet_model/batch_normalization_1/beta/read/_4__cf__4
//Const load, Constant_2_0);
 // name=Constant_376
//Const load, Constant_376_0);
 // name=resnet_model/batch_normalization/beta/read/_0__cf__0
//Const load, Constant_10_0);
 // name=Constant_373
//Const load, Constant_373_0);
 // name=Constant_72
//Const load, Constant_72_0);
 // name=Constant_385
//Const load, Constant_385_0);
 // name=Constant_382
//Const load, Constant_382_0);
 // name=Constant_379
//Const load, Constant_379_0);
 // name=Constant_394
//Const load, Constant_394_0);
 // name=Constant_391
//Const load, Constant_391_0);
 // name=Constant_388
//Const load, Constant_388_0);
 // name=Constant_403
//Const load, Constant_403_0);
 // name=Constant_400
//Const load, Constant_400_0);
 // name=Constant_397
//Const load, Constant_397_0);
 // name=Constant_415
//Const load, Constant_415_0);
 // name=resnet_model/batch_normalization_12/beta/read/_16__cf__16
//Const load, Constant_35_0);
 // name=Constant_412
//Const load, Constant_412_0);
 // name=Constant_130
//Const load, Constant_130_0);
 // name=Constant_406
//Const load, Constant_406_0);
 // name=Constant_424
//Const load, Constant_424_0);
 // name=Constant_421
//Const load, Constant_421_0);
 // name=Constant_418
//Const load, Constant_418_0);
 // name=Constant_433
//Const load, Constant_433_0);
 // name=Constant_430
//Const load, Constant_430_0);
 // name=Constant_427
//Const load, Constant_427_0);
 // name=Constant_442
//Const load, Constant_442_0);
 // name=Constant_439
//Const load, Constant_439_0);
 // name=Constant_436
//Const load, Constant_436_0);
 // name=Constant_454
//Const load, Constant_454_0);
 // name=Constant_451
//Const load, Constant_451_0);
 // name=Constant_189
//Const load, Constant_189_0);
 // name=Constant_445
//Const load, Constant_445_0);
 // name=Constant_463
//Const load, Constant_463_0);
 // name=Constant_460
//Const load, Constant_460_0);
 // name=Constant_457
//Const load, Constant_457_0);
 // name=Constant_472
//Const load, Constant_472_0);
 // name=Constant_469
//Const load, Constant_469_0);
 // name=Constant_466
//Const load, Constant_466_0);
 // name=Constant_481
//Const load, Constant_481_0);
 // name=Constant_478
//Const load, Constant_478_0);
 // name=Constant_475
//Const load, Constant_475_0);
 // name=Constant_490
//Const load, Constant_490_0);
 // name=Constant_487
//Const load, Constant_487_0);
 // name=Constant_484
//Const load, Constant_484_0);
 // name=Constant_499
//Const load, Constant_499_0);
 // name=Constant_496
//Const load, Constant_496_0);
 // name=Constant_493
//Const load, Constant_493_0);
 // name=Constant_511
//Const load, Constant_511_0);
 // name=Constant_508
//Const load, Constant_508_0);
 // name=Constant_274
//Const load, Constant_274_0);
 // name=Constant_502
//Const load, Constant_502_0);
 // name=Constant_520
//Const load, Constant_520_0);
 // name=Constant_517
//Const load, Constant_517_0);
 // name=Constant_514
//Const load, Constant_514_0);
 // name=Constant_529
//Const load, Constant_529_0);
 // name=Constant_526
//Const load, Constant_526_0);
 // name=Constant_523
//Const load, Constant_523_0);
CUDA_SAFE_CALL(cudaDeviceGetAttribute(&num_SMs, cudaDevAttrMultiProcessorCount, 0));
}


extern "C" int kernel_entry(float* Parameter_30_0, float** Result_319_0)
{
// kernel_entry_init
 // name=Broadcast_317
Broadcast_float_float_cuda_Broadcast_317_Call(dim3(125, 1, 1), dim3(64, 1, 1), 0, 0, Constant_71_0, Broadcast_317_0);
 // name=Broadcast_506
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_54_0, Broadcast_506_0);
 // name=Broadcast_449
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_449_0);
 // name=Broadcast_410
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_410_0);
 // name=Broadcast_377
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_377_0);
 // name=Broadcast_374
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_374_0);
 // name=resnet_model/Pad
Pad_float_float_float_cuda_Pad_73_Call(dim3(19838, 1, 1), dim3(64, 1, 1), 0, 0, Parameter_30_0, Constant_72_0, Pad_73_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_532_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Pad_73_0, Constant_373_0, Broadcast_374_0, Relu_77_0);
 // name=resnet_model/max_pooling2d/MaxPool
// MaxPool_float_float_cuda_MaxPool_78_Call(dim3(28160, 1, 1), dim3(55, 1, 1), 0, 0, Relu_77_0, MaxPool_78_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_565_Call(dim3(1792, 1, 1), dim3(224, 1, 1), 0, 0, MaxPool_78_0, Constant_376_0, Broadcast_377_0, BatchNormInference_83_0);
 // name=Broadcast_386
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_386_0);
 // name=Broadcast_383
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_383_0);
 // name=Broadcast_380
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_380_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_533_Call(dim3(448, 1, 1), dim3(224, 1, 1), 0, 0, MaxPool_78_0, Constant_379_0, Broadcast_380_0, Relu_85_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_534_Call(dim3(98, 1, 1), dim3(256, 1, 1), 0, 0, Relu_85_0, Constant_382_0, Broadcast_383_0, Relu_89_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_565_Call(dim3(1792, 1, 1), dim3(224, 1, 1), 0, 0, Relu_89_0, Constant_385_0, Broadcast_386_0, BatchNormInference_92_0);
 // name=ElementWiseFused_585
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(25088, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_92_0, BatchNormInference_83_0, Relu_94_0);
 // name=Broadcast_395
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_395_0);
 // name=Broadcast_392
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_392_0);
 // name=Broadcast_389
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_389_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_535_Call(dim3(392, 1, 1), dim3(256, 1, 1), 0, 0, Relu_94_0, Constant_388_0, Broadcast_389_0, Relu_98_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_534_Call(dim3(98, 1, 1), dim3(256, 1, 1), 0, 0, Relu_98_0, Constant_391_0, Broadcast_392_0, Relu_102_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_565_Call(dim3(1792, 1, 1), dim3(224, 1, 1), 0, 0, Relu_102_0, Constant_394_0, Broadcast_395_0, BatchNormInference_105_0);
 // name=ElementWiseFused_586
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(25088, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_105_0, Relu_94_0, Relu_107_0);
 // name=Broadcast_404
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_404_0);
 // name=Broadcast_401
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_401_0);
 // name=Broadcast_398
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_10_0, Broadcast_398_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_535_Call(dim3(392, 1, 1), dim3(256, 1, 1), 0, 0, Relu_107_0, Constant_397_0, Broadcast_398_0, Relu_111_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_534_Call(dim3(98, 1, 1), dim3(256, 1, 1), 0, 0, Relu_111_0, Constant_400_0, Broadcast_401_0, Relu_115_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_565_Call(dim3(1792, 1, 1), dim3(224, 1, 1), 0, 0, Relu_115_0, Constant_403_0, Broadcast_404_0, BatchNormInference_118_0);
 // name=ElementWiseFused_587
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(25088, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_118_0, Relu_107_0, Relu_120_0);
 // name=resnet_model/Pad_1
Pad_float_float_float_cuda_Pad_122_Call(dim3(100352, 1, 1), dim3(64, 1, 1), 0, 0, Relu_120_0, Constant_121_0, Pad_122_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_569_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Pad_122_0, Constant_409_0, Broadcast_410_0, BatchNormInference_128_0);
 // name=Broadcast_416
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_416_0);
 // name=Broadcast_413
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_413_0);
 // name=Broadcast_407
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_407_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_539_Call(dim3(784, 1, 1), dim3(256, 1, 1), 0, 0, Relu_120_0, Constant_406_0, Broadcast_407_0, Relu_129_0);
 // name=resnet_model/Pad_2
Pad_float_float_float_cuda_Pad_131_Call(dim3(53824, 1, 1), dim3(64, 1, 1), 0, 0, Relu_129_0, Constant_130_0, Pad_131_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_540_Call(dim3(392, 1, 1), dim3(128, 1, 1), 0, 0, Pad_131_0, Constant_412_0, Broadcast_413_0, Relu_135_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_570_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_135_0, Constant_415_0, Broadcast_416_0, BatchNormInference_138_0);
 // name=ElementWiseFused_588
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(12544, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_138_0, BatchNormInference_128_0, Relu_140_0);
 // name=Broadcast_425
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_425_0);
 // name=Broadcast_422
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_422_0);
 // name=Broadcast_419
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_419_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_541_Call(dim3(224, 1, 1), dim3(224, 1, 1), 0, 0, Relu_140_0, Constant_418_0, Broadcast_419_0, Relu_144_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_542_Call(dim3(196, 1, 1), dim3(128, 1, 1), 0, 0, Relu_144_0, Constant_421_0, Broadcast_422_0, Relu_148_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_570_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_148_0, Constant_424_0, Broadcast_425_0, BatchNormInference_151_0);
 // name=ElementWiseFused_589
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(12544, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_151_0, Relu_140_0, Relu_153_0);
 // name=Broadcast_434
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_434_0);
 // name=Broadcast_431
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_431_0);
 // name=Broadcast_428
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_428_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_541_Call(dim3(224, 1, 1), dim3(224, 1, 1), 0, 0, Relu_153_0, Constant_427_0, Broadcast_428_0, Relu_157_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_542_Call(dim3(196, 1, 1), dim3(128, 1, 1), 0, 0, Relu_157_0, Constant_430_0, Broadcast_431_0, Relu_161_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_570_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_161_0, Constant_433_0, Broadcast_434_0, BatchNormInference_164_0);
 // name=ElementWiseFused_590
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(12544, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_164_0, Relu_153_0, Relu_166_0);
 // name=Broadcast_443
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_443_0);
 // name=Broadcast_440
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_440_0);
 // name=Broadcast_437
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_35_0, Broadcast_437_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_541_Call(dim3(224, 1, 1), dim3(224, 1, 1), 0, 0, Relu_166_0, Constant_436_0, Broadcast_437_0, Relu_170_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_542_Call(dim3(196, 1, 1), dim3(128, 1, 1), 0, 0, Relu_170_0, Constant_439_0, Broadcast_440_0, Relu_174_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_570_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_174_0, Constant_442_0, Broadcast_443_0, BatchNormInference_177_0);
 // name=ElementWiseFused_591
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(12544, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_177_0, Relu_166_0, Relu_179_0);
 // name=resnet_model/Pad_3
Pad_float_float_float_cuda_Pad_181_Call(dim3(50176, 1, 1), dim3(64, 1, 1), 0, 0, Relu_179_0, Constant_180_0, Pad_181_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_574_Call(dim3(784, 1, 1), dim3(32, 1, 1), 0, 0, Pad_181_0, Constant_448_0, Broadcast_449_0, BatchNormInference_187_0);
 // name=Broadcast_455
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_455_0);
 // name=Broadcast_452
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_452_0);
 // name=Broadcast_446
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_446_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_547_Call(dim3(448, 1, 1), dim3(224, 1, 1), 0, 0, Relu_179_0, Constant_445_0, Broadcast_446_0, Relu_188_0);
 // name=resnet_model/Pad_4
Pad_float_float_float_cuda_Pad_190_Call(dim3(28800, 1, 1), dim3(64, 1, 1), 0, 0, Relu_188_0, Constant_189_0, Pad_190_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_548_Call(dim3(196, 1, 1), dim3(128, 1, 1), 0, 0, Pad_190_0, Constant_451_0, Broadcast_452_0, Relu_194_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_194_0, Constant_454_0, Broadcast_455_0, BatchNormInference_197_0);
 // name=ElementWiseFused_592
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(6272, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_197_0, BatchNormInference_187_0, Relu_199_0);
 // name=Broadcast_464
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_464_0);
 // name=Broadcast_461
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_461_0);
 // name=Broadcast_458
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_458_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(dim3(392, 1, 1), dim3(32, 1, 1), 0, 0, Relu_199_0, Constant_457_0, Broadcast_458_0, Relu_203_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_550_Call(dim3(448, 1, 1), dim3(112, 1, 1), 0, 0, Relu_203_0, Constant_460_0, Broadcast_461_0, Relu_207_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_207_0, Constant_463_0, Broadcast_464_0, BatchNormInference_210_0);
 // name=ElementWiseFused_593
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(6272, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_210_0, Relu_199_0, Relu_212_0);
 // name=Broadcast_473
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_473_0);
 // name=Broadcast_470
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_470_0);
 // name=Broadcast_467
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_467_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(dim3(392, 1, 1), dim3(32, 1, 1), 0, 0, Relu_212_0, Constant_466_0, Broadcast_467_0, Relu_216_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_550_Call(dim3(448, 1, 1), dim3(112, 1, 1), 0, 0, Relu_216_0, Constant_469_0, Broadcast_470_0, Relu_220_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_220_0, Constant_472_0, Broadcast_473_0, BatchNormInference_223_0);
 // name=ElementWiseFused_594
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(6272, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_223_0, Relu_212_0, Relu_225_0);
 // name=Broadcast_482
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_482_0);
 // name=Broadcast_479
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_479_0);
 // name=Broadcast_476
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_476_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(dim3(392, 1, 1), dim3(32, 1, 1), 0, 0, Relu_225_0, Constant_475_0, Broadcast_476_0, Relu_229_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_550_Call(dim3(448, 1, 1), dim3(112, 1, 1), 0, 0, Relu_229_0, Constant_478_0, Broadcast_479_0, Relu_233_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_233_0, Constant_481_0, Broadcast_482_0, BatchNormInference_236_0);
 // name=ElementWiseFused_595
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(6272, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_236_0, Relu_225_0, Relu_238_0);
 // name=Broadcast_491
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_491_0);
 // name=Broadcast_488
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_488_0);
 // name=Broadcast_485
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_485_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(dim3(392, 1, 1), dim3(32, 1, 1), 0, 0, Relu_238_0, Constant_484_0, Broadcast_485_0, Relu_242_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_550_Call(dim3(448, 1, 1), dim3(112, 1, 1), 0, 0, Relu_242_0, Constant_487_0, Broadcast_488_0, Relu_246_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_246_0, Constant_490_0, Broadcast_491_0, BatchNormInference_249_0);
 // name=ElementWiseFused_596
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(6272, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_249_0, Relu_238_0, Relu_251_0);
 // name=Broadcast_500
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_23_0, Broadcast_500_0);
 // name=Broadcast_497
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_497_0);
 // name=Broadcast_494
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_2_0, Broadcast_494_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_549_Call(dim3(392, 1, 1), dim3(32, 1, 1), 0, 0, Relu_251_0, Constant_493_0, Broadcast_494_0, Relu_255_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_550_Call(dim3(448, 1, 1), dim3(112, 1, 1), 0, 0, Relu_255_0, Constant_496_0, Broadcast_497_0, Relu_259_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_575_Call(dim3(896, 1, 1), dim3(224, 1, 1), 0, 0, Relu_259_0, Constant_499_0, Broadcast_500_0, BatchNormInference_262_0);
 // name=ElementWiseFused_597
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(6272, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_262_0, Relu_251_0, Relu_264_0);
 // name=resnet_model/Pad_5
Pad_float_float_float_cuda_Pad_268_Call(dim3(25088, 1, 1), dim3(64, 1, 1), 0, 0, Relu_264_0, Constant_267_0, Pad_268_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_581_Call(dim3(224, 1, 1), dim3(224, 1, 1), 0, 0, Pad_268_0, Constant_505_0, Broadcast_506_0, BatchNormInference_273_0);
 // name=Broadcast_512
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_54_0, Broadcast_512_0);
 // name=Broadcast_509
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_509_0);
 // name=Broadcast_503
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_503_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_559_Call(dim3(448, 1, 1), dim3(56, 1, 1), 0, 0, Relu_264_0, Constant_502_0, Broadcast_503_0, Relu_272_0);
 // name=resnet_model/Pad_6
Pad_float_float_float_cuda_Pad_275_Call(dim3(16384, 1, 1), dim3(64, 1, 1), 0, 0, Relu_272_0, Constant_274_0, Pad_275_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_560_Call(dim3(224, 1, 1), dim3(56, 1, 1), 0, 0, Pad_275_0, Constant_508_0, Broadcast_509_0, Relu_279_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_582_Call(dim3(512, 1, 1), dim3(56, 1, 1), 0, 0, Relu_279_0, Constant_511_0, Broadcast_512_0, BatchNormInference_282_0);
 // name=ElementWiseFused_598
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(3136, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_282_0, BatchNormInference_273_0, Relu_284_0);
 // name=Broadcast_521
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_54_0, Broadcast_521_0);
 // name=Broadcast_518
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_518_0);
 // name=Broadcast_515
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_515_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_561_Call(dim3(224, 1, 1), dim3(64, 1, 1), 0, 0, Relu_284_0, Constant_514_0, Broadcast_515_0, Relu_288_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_562_Call(dim3(256, 1, 1), dim3(112, 1, 1), 0, 0, Relu_288_0, Constant_517_0, Broadcast_518_0, Relu_292_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_582_Call(dim3(512, 1, 1), dim3(56, 1, 1), 0, 0, Relu_292_0, Constant_520_0, Broadcast_521_0, BatchNormInference_295_0);
 // name=ElementWiseFused_599
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(3136, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_295_0, Relu_284_0, Relu_297_0);
 // name=Broadcast_530
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_54_0, Broadcast_530_0);
 // name=Broadcast_527
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_527_0);
 // name=Broadcast_524
Broadcast_float_float_cuda_lib_Broadcast_506(Constant_49_0, Broadcast_524_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_561_Call(dim3(224, 1, 1), dim3(64, 1, 1), 0, 0, Relu_297_0, Constant_523_0, Broadcast_524_0, Relu_301_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_562_Call(dim3(256, 1, 1), dim3(112, 1, 1), 0, 0, Relu_301_0, Constant_526_0, Broadcast_527_0, Relu_305_0);
 // name=Matched_Pattern
Matched_Pattern_float_float_float_float_cuda_Matched_Pattern_582_Call(dim3(512, 1, 1), dim3(56, 1, 1), 0, 0, Relu_305_0, Constant_529_0, Broadcast_530_0, BatchNormInference_308_0);
 // name=ElementWiseFused_600
FusedKernel_float_float_float_cuda_Add_Relu_0_Call(dim3(3136, 1, 1), dim3(128, 1, 1), 0, 0, BatchNormInference_308_0, Relu_297_0, Relu_310_0);
 // name=Sum_311
Sum_float_float_cuda_Sum_311_Call(dim3(16384, 1, 1), dim3(32, 1, 1), 0, 0, Relu_310_0, Sum_311_0);
 // name=Divide_313
Divide_float_float_float_cuda_Divide_313_Call(dim3(64, 1, 1), dim3(128, 1, 1), 0, 0, Sum_311_0, Constant_312_0, Divide_313_0);
 // name=resnet_model/Mean
// eliminated: Reshape_float_float_cuda_lib_Reshape_314(0, Divide_313_0, Reshape_314_0);
 // name=resnet_model/Squeeze
// eliminated: Reshape_float_float_cuda_lib_Reshape_315(0, Reshape_314_0, Reshape_315_0);
 // name=resnet_model/dense/MatMul
// Dot_float_float_float_cuda_Dot_316_Call(dim3(100, 1, 1), dim3(80, 1, 1), 0, 0, Reshape_315_0, Constant_70_0, Dot_316_0);
 // name=resnet_model/dense/BiasAdd
Add_float_float_float_cuda_Add_318_Call(dim3(62, 1, 1), dim3(64, 1, 1), 0, 0, Dot_316_0, Broadcast_317_0, Add_318_0);
 // name=Result_319
Result_float_float_cuda_lib_Result_319(Add_318_0, Result_319_0);
return 0;
}


extern "C" void cuda_free()
{
CUDA_SAFE_CALL(cudaSetDevice(0));
CUDA_SAFE_CALL(cudaFree(group_0_CUDA_GPU0_allocator_memory_pool));
CUDA_SAFE_CALL(cudaSetDevice(0));
CUDA_SAFE_CALL(cudaFree(group_persist_CUDA_GPU0_allocator_memory_pool));
}

// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

