KNL  = triad_knl.out triad_knl_mpi.out triad_knl.s
HSW = triad_hsw.out triad_hsw.s
SKL = triad_skl.out triad_skl.s
CXX  = icpc
MPI_CXX = mpiicpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp
KNL_OPT = -xMIC-AVX512 -qopt-prefetch=4
SKL_OPT = -xCORE-AVX512
HSW_OPT = -xCORE-AVX2
KNL_LIB = -lmemkind

PASCAL = triad_pascal.out
PTX = triad_pascal.ptx
SASS = triad_pascal.sass
CUBIN = triad_pascal.cubin

CUDA_HOME = /usr/local/cuda
ARCH = -arch=sm_60

# CUDA_HOME = /home/app/cuda/cuda-7.0
# ARCH = -arch=sm_35

NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 $(ARCH) -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

hsw: $(HSW)
skl: $(SKL)
knl: $(KNL)
pascal: $(PASCAL) $(SASS) $(PTX) $(CUBIN)

$(PTX): triad_pascal.cu
$(SASS): $(CUBIN)
$(CUBIN): triad_pascal.cu

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

triad_knl.out: triad_knl.cpp
	$(CXX) $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

triad_knl_mpi.out: triad_knl_mpi.cpp
	$(MPI_CXX) $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

triad_hsw.out: triad_hsw.cpp
	$(CXX) $(CXX_FLAGS) $(HSW_OPT) $< -o $@

triad_skl.out: triad_skl.cpp
	$(CXX) $(CXX_FLAGS) $(SKL_OPT) $< -o $@

triad_knl.s: triad_knl.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

triad_hsw.s: triad_hsw.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(HSW_OPT) $< -o $@

triad_skl.s: triad_skl.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(SKL_OPT) $< -o $@

clean:
	rm -f $(KNL) $(HSW) $(SKL) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
