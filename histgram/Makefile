KNL  = hist_knl.out
ASM  = hist_knl.s
CXX  = icpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp -xMIC-AVX512

CUDA = hist_cuda.out
PTX = hist_cuda.ptx
SASS = hist_cuda.sass
CUBIN = hist_cuda.cubin

CUDA_HOME = /usr/local/cuda
NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 -arch=sm_60 -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

knl: $(KNL) $(ASM)
cuda: $(CUDA) $(SASS) $(PTX) $(CUBIN)

$(PTX): hist_cuda.cu
$(SASS): $(CUBIN)
$(CUBIN): hist_cuda.cu

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
