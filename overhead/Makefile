KNL  = overhead_knl.out
ASM  = overhead_knl.s
CXX  = icpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp -xMIC-AVX512 -qopt-prefetch=4
LIBRARY = -lmemkind

PASCAL = overhead_pascal.out
PTX = overhead_pascal.ptx
SASS = overhead_pascal.sass
CUBIN = overhead_pascal.cubin

CUDA_HOME = /usr/local/cuda
NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 -arch=sm_60 -Xcompiler "$(WARNINGS) -O3" -ccbin=g++ -lineinfo -Xptxas -v
INCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc

knl: $(KNL) $(ASM)
pascal: $(PASCAL) $(SASS) $(PTX) $(CUBIN)

$(PTX): overhead_pascal.cu
$(SASS): $(CUBIN)
$(CUBIN): overhead_pascal.cu

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

.SUFFIXES: .cpp .out
.cpp.out:
	$(CXX) $(CXX_FLAGS) $< $(LIBRARY) -o $@

clean:
	rm -f $(KNL) $(ASM) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
