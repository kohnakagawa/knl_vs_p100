KNL  = sgemm_mkl_knl.out
ASM  = sgemm_mkl_knl.s
CXX  = icpc
WARNINGS = -Wall -Wextra
CXX_INCLUDE =
CXX_LIBS =
CXX_FLAGS = -qopenmp -O3 -std=c++11 $(WARNINGS) -mkl=parallel -xMIC-AVX512

PASCAL = sgemm_cublas_pascal.out
PTX = sgemm_cublas_pascal.ptx
SASS = sgemm_cublas_pascal.sass
CUBIN = sgemm_cublas_pascal.cubin

NVCC = nvcc
CUDA_HOME = /usr/local/cuda
ARCH = -arch=sm_60
# CUDA_HOME = /home/app/cuda/cuda-7.0
# ARCH = -arch=sm_35
NVCCFLAGS = -O3 -std=c++11 $(ARCH) -Xcompiler "$(WARNINGS) -O3 -fopenmp" -ccbin=g++ -lineinfo -Xptxas -v
NVCCINCLUDE = -I$(CUDA_HOME)/include -I$(CUDA_HOME)/samples/common/inc
NVCCLIBS = -lcublas

knl: $(KNL) $(ASM)
pascal: $(PASCAL) $(SASS) $(PTX) $(CUBIN)

$(PTX): sgemm_cublas_pascal.cu
$(SASS): $(CUBIN)
$(CUBIN): sgemm_cublas_pascal.cu

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
	$(CXX) $(CXX_FLAGS) $(CXX_INCLUDE) -S -masm=intel $< $(CXX_LIBS) -o $@

.SUFFIXES: .cpp .out
.cpp.out:
	$(CXX) $(CXX_FLAGS) $(CXX_INCLUDE) $< $(CXX_LIBS) -o $@

clean:
	rm -f $(KNL) $(ASM) $(PASCAL) $(SASS) $(PTX) $(CUBIN)
