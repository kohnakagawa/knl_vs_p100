KNL  = triad_knl.out triad_knl_mpi.out triad_knl.s
HASWELL = triad_haswell.out triad_haswell.s
CXX  = icpc
MPI_CXX = mpiicpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp
KNL_OPT = -xMIC-AVX512 -qopt-prefetch=4
HASWELL_OPT = -xCORE-AVX2
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

haswell: $(HASWELL)
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

triad_haswell.out: triad_haswell.cpp
	$(CXX) $(CXX_FLAGS) $(HASWELL_OPT) $< -o $@

triad_knl.s: triad_knl.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(KNL_OPT) $< $(KNL_LIB) -o $@

triad_haswell.s: triad_haswell.cpp
	$(CXX) -S -masm=intel $(CXX_FLAGS) $(HASWELL_OPT) $< -o $@

clean:
	rm -f $(KNL) $(HASWELL) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
