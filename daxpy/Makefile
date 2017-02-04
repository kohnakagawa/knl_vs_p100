KNL  = daxpy_knl.out daxpy_knl_mpi.out
ASM  = daxpy_knl.s
CXX  = icpc
MPI_CXX = mpiicpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp -xMIC-AVX512 -qopt-prefetch=4
LIBRARY = -lmemkind

PASCAL = daxpy_pascal.out
PTX = daxpy_pascal.ptx
SASS = daxpy_pascal.sass
CUBIN = daxpy_pascal.cubin

CUDA_HOME = /usr/local/cuda
NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 -arch=sm_60 -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

knl: $(KNL) $(ASM)
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

.SUFFIXES: .cpp .s
.cpp.s:
	$(CXX) $(CXX_FLAGS) -S -masm=intel $< $(LIBRARY) -o $@

daxpy_knl.out: daxpy_knl.cpp
	$(CXX) $(CXX_FLAGS) $< $(LIBRARY) -o $@

daxpy_knl_mpi.out: daxpy_knl_mpi.cpp
	$(MPI_CXX) $(CXX_FLAGS) $< $(LIBRARY) -o $@

clean:
	rm -f $(KNL) $(ASM) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
