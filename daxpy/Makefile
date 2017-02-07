KNL  = daxpy_knl.out daxpy_knl_mpi.out daxpy_knl.s
HASWELL = daxpy_haswell.out daxpy_haswell.s
CXX  = icpc
MPI_CXX = mpiicpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp
KNL_OPT = -xMIC-AVX512 -qopt-prefetch=4
HASWELL_OPT = -xCORE-AVX2
KNL_LIB = -lmemkind

PASCAL = daxpy_pascal.out
PTX = daxpy_pascal.ptx
SASS = daxpy_pascal.sass
CUBIN = daxpy_pascal.cubin

CUDA_HOME = /usr/local/cuda
NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 -arch=sm_60 -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

haswell: $(HASWELL)
knl: $(KNL)
pascal: $(PASCAL) $(SASS) $(PTX) $(CUBIN)

$(PTX): daxpy_pascal.cu
$(SASS): $(CUBIN)
$(CUBIN): daxpy_pascal.cu

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

daxpy_knl.out: daxpy_knl.cpp
	$(CXX) $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

daxpy_knl_mpi.out: daxpy_knl_mpi.cpp
	$(MPI_CXX) $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

daxpy_haswell.out: daxpy_haswell.cpp
	$(CXX) $(CXX_FLAGS) $(HASWELL_OPT) $< -o $@

daxpy_knl.s: daxpy_knl.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

daxpy_haswell.s: daxpy_haswell.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(HASWELL_OPT) $< -o $@

clean:
	rm -f $(KNL) $(HASWELL) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
