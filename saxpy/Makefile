KNL  = saxpy_knl.out
ASM  = saxpy_knl.s
CXX  = icpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp -xMIC-AVX512

CUDA = saxpy_cuda.out
PTX = saxpy_cuda.ptx
SASS = saxpy_cuda.sass
CUBIN = saxpy_cuda.cubin

CUDA_HOME = /usr/local/cuda
NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 -arch=sm_60 -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

knl: $(KNL) $(ASM)
cuda: $(CUDA) $(SASS) $(PTX) $(CUBIN)
clean: $(KNL) $(ASM) $(CUDA) $(SASS) $(PTX) $(CUBIN)

$(PTX): saxpy_cuda.cu
$(SASS): $(CUBIN)
$(CUBIN): saxpy_cuda.cu

.SUFFIXES:
.SUFFIXES: .cu .out
.cu.out:
	$(NVCC) $(NVCCFLAGS) $(INCLUDE) $< -o $@

.SUFFIXES: .cu .cubin
.cu.cubin:
	$(NVCC) $(NVCCFLAGS) $(INCLUDE) -cubin $< -o $@

.SUFFIXES: .cubin .sass
.cubin.sass:
	$(CUDA_HOME)/bin/cuobjdump -sass $< | c++filt > $@

.SUFFIXES: .cu .ptx
.cu.ptx:
	$(NVCC) $(NVCCFLAGS) $(INCLUDE) -ptx $< -o $@

.SUFFIXES: .cpp .s
.cpp.s:
	$(CXX) $(CXX_FLAGS) -S $< -o $@

.SUFFIXES: .cpp .out
.cpp.out:
	$(CXX) $(CXX_FLAGS) $< -o $@
