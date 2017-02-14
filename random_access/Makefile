KNL  = daxpy_random_knl.out daxpy_random_knl.s
CXX  = icpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp
KNL_OPT = -xMIC-AVX512 -qopt-prefetch=4
KNL_LIB = -lmemkind

PASCAL = daxpy_random_pascal.out
PTX = daxpy_random_pascal.ptx
SASS = daxpy_random_pascal.sass
CUBIN = daxpy_random_pascal.cubin

CUDA_HOME = /usr/local/cuda
ARCH = -arch=sm_60

# CUDA_HOME = /home/app/cuda/cuda-7.0
# ARCH = -arch=sm_35

NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 $(ARCH) -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

knl: $(KNL)
pascal: $(PASCAL) $(SASS) $(PTX) $(CUBIN)

$(PTX): daxpy_random_pascal.cu
$(SASS): $(CUBIN)
$(CUBIN): daxpy_random_pascal.cu

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

daxpy_random_knl.out: daxpy_random_knl.cpp
	$(CXX) $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

daxpy_random_knl.s: daxpy_random_knl.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

clean:
	rm -f $(KNL) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
