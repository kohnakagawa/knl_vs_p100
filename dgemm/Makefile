KNL  = dgemm_knl.out
ASM  = dgemm_knl.s
CXX  = icpc
WARNINGS = -Wall -Wextra
CXX_FLAGS = -O3 -std=c++11 $(WARNINGS) -qopenmp -xMIC-AVX512 -mkl=parallel -mmic
LIBRARY = -lmemkind -Wl,--start-group ${MKLROOT}/lib/mic/libmkl_intel_lp64.a ${MKLROOT}/lib/mic/libmkl_intel_thread.a ${MKLROOT}/lib/mic/libmkl_core.a -Wl,--end-group -liomp5 -lpthread -lm -ldl
INCLUDE =  -I${MKLROOT}/include

PASCAL = dgemm_pascal.out
PTX = dgemm_pascal.ptx
SASS = dgemm_pascal.sass
CUBIN = dgemm_pascal.cubin

CUDA_HOME = /usr/local/cuda
NVCC = nvcc
NVCCFLAGS = -O3 -std=c++11 -arch=sm_60 -Xcompiler "$(WARNINGS) -O3 -fopenmp" -ccbin=g++ -lineinfo -Xptxas -v
NVCCINCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc
NVCCLIBS = -lcublas

knl: $(KNL) $(ASM)
pascal: $(PASCAL) $(SASS) $(PTX) $(CUBIN)

$(PTX): dgemm_pascal.cu
$(SASS): $(CUBIN)
$(CUBIN): dgemm_pascal.cu

.SUFFIXES:
.SUFFIXES: .cu .out
.cu.out:
	$(NVCC) $(NVCCFLAGS) $(NVCCINCLUDE) $< $(NVCCLIBS) -o $@

.SUFFIXES: .cu .cubin
.cu.cubin:
	$(NVCC) $(NVCCFLAGS) $(NVCCINCLUDE) -cubin $< $(NVCCLIBS) -o $@

.SUFFIXES: .cubin .sass
.cubin.sass:
	$(CUDA_HOME)/bin/cuobjdump -sass $< | c++filt > $@

.SUFFIXES: .cu .ptx
.cu.ptx:
	$(NVCC) $(NVCCFLAGS) $(NVCCINCLUDE) -ptx $< $(NVCCLIBS) -o $@

.SUFFIXES: .cpp .s
.cpp.s:
	$(CXX) $(CXX_FLAGS) -S -masm=intel $< $(LIBRARY) -o $@

.SUFFIXES: .cpp .out
.cpp.out:
	$(CXX) $(CXX_FLAGS) $< $(LIBRARY) -o $@

clean:
	rm -f $(KNL) $(ASM) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
