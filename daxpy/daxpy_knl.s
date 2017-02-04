# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "";
# mark_description "-O3 -std=c++11 -Wall -Wextra -qopenmp -xMIC-AVX512 -qopt-prefetch=2 -S -masm=intel -lmemkind -o daxpy_knl.s";
	.intel_syntax noprefix
	.file "daxpy_knl.cpp"
	.text
..TXTST0:
# -- Begin  main, L_main_135__par_loop0_2.11, L_main_157__par_region1_2.12
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl main
# --- main(int, const char **)
main:
# parameter 1: edi
# parameter 2: rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [0.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, main$$LSDA
..___tag_value_main.5:
..L6:
                                                          #109.46
        push      rbp                                           #109.46
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #109.46
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #109.46
        sub       rsp, 5504                                     #109.46 c1
        mov       QWORD PTR [5280+rsp], r15                     #109.46[spill] c3
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xff, 0xff, 0xff, 0x22
        mov       r15, rsi                                      #109.46 c3
        mov       QWORD PTR [5296+rsp], r13                     #109.46[spill] c3
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x30, 0xff, 0xff, 0xff, 0x22
        mov       r13d, edi                                     #109.46 c3
        mov       QWORD PTR [5312+rsp], rbx                     #109.46[spill] c5
        mov       rsi, 0x7389d9ffe                              #109.46 c5
        mov       QWORD PTR [5288+rsp], r14                     #109.46[spill] c5
        mov       edi, 3                                        #109.46 c5
        mov       QWORD PTR [5304+rsp], r12                     #109.46[spill] c7
        call      __intel_new_feature_proc_init                 #109.46 c7
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x40, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x38, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xff, 0xff, 0xff, 0x22
                                # LOE r15 r13d
..B1.249:                       # Preds ..B1.1
                                # Execution count [0.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #109.46 c1
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.765 #109.46 c1
        or        DWORD PTR [rsp], 32832                        #109.46 c3
        xor       esi, esi                                      #109.46 c3
        xor       eax, eax                                      #109.46 c3
        vldmxcsr  DWORD PTR [rsp]                               #109.46 c5
..___tag_value_main.15:
        call      __kmpc_begin                                  #109.46
..___tag_value_main.16:
                                # LOE r15 r13d
..B1.2:                         # Preds ..B1.249
                                # Execution count [1.00e+00]
        mov       r14d, 33554432                                #110.16 c1
        mov       r12d, 1                                       #111.19 c1
        cmp       r13d, 2                                       #112.15 c3
        jl        ..B1.5        # Prob 50%                      #112.15 c5
                                # LOE r15 r12d r13d r14d
..B1.3:                         # Preds ..B1.2
                                # Execution count [5.00e-01]
        mov       rcx, QWORD PTR [8+r15]                        #112.29 c1
        call      __intel_sse4_atol                             #112.29 c3
                                # LOE rax r15 r12d r13d
..B1.250:                       # Preds ..B1.3
                                # Execution count [5.00e-01]
        mov       rbx, rax                                      #112.29 c1
                                # LOE rbx r15 r12d r13d
..B1.4:                         # Preds ..B1.250
                                # Execution count [5.00e-01]
        mov       r14d, ebx                                     #112.29 c1
        cmp       r13d, 3                                       #113.15 c1
        je        ..B1.163      # Prob 16%                      #113.15 c3
                                # LOE rbx r15 r12d r14d
..B1.5:                         # Preds ..B1.4 ..B1.2
                                # Execution count [4.20e-01]
        xor       eax, eax                                      #117.17 c1
        mov       QWORD PTR [5320+rsp], rax                     #117.17 c3
        mov       QWORD PTR [5328+rsp], rax                     #118.17 c3
        mov       QWORD PTR [5336+rsp], rax                     #119.17 c5
        mov       QWORD PTR [5344+rsp], rax                     #121.19 c5
                                # LOE r12d r14d
..B1.6:                         # Preds ..B1.5 ..B1.164
                                # Execution count [5.00e-01]
        movsxd    rbx, r14d                                     #124.44 c1
        lea       rdi, QWORD PTR [5320+rsp]                     #124.5 c1
        mov       esi, 64                                       #124.5 c1
        lea       r13, QWORD PTR [rbx*8]                        #124.55 c3
        mov       rdx, r13                                      #124.5 c5
..___tag_value_main.17:
#       hbw_posix_memalign(void **, size_t, size_t)
        call      hbw_posix_memalign                            #124.5
..___tag_value_main.18:
                                # LOE rbx r13 r12d r14d
..B1.7:                         # Preds ..B1.6
                                # Execution count [5.00e-01]
        lea       rdi, QWORD PTR [5328+rsp]                     #125.5 c1
        mov       esi, 64                                       #125.5 c1
        mov       rdx, r13                                      #125.5 c1
..___tag_value_main.19:
#       hbw_posix_memalign(void **, size_t, size_t)
        call      hbw_posix_memalign                            #125.5
..___tag_value_main.20:
                                # LOE rbx r13 r12d r14d
..B1.8:                         # Preds ..B1.7
                                # Execution count [5.00e-01]
        lea       rdi, QWORD PTR [5336+rsp]                     #126.5 c1
        mov       esi, 64                                       #126.5 c1
        mov       rdx, r13                                      #126.5 c1
..___tag_value_main.21:
#       hbw_posix_memalign(void **, size_t, size_t)
        call      hbw_posix_memalign                            #126.5
..___tag_value_main.22:
                                # LOE rbx r13 r12d r14d
..B1.9:                         # Preds ..B1.8
                                # Execution count [5.00e-01]
        mov       rdx, rbx                                      #127.5 c1
        lea       rdi, QWORD PTR [5344+rsp]                     #127.5 c1
        mov       esi, 64                                       #127.5 c1
        shl       rdx, 4                                        #127.5 c3
..___tag_value_main.23:
#       hbw_posix_memalign(void **, size_t, size_t)
        call      hbw_posix_memalign                            #127.5
..___tag_value_main.24:
                                # LOE rbx r13 r12d r14d
..B1.10:                        # Preds ..B1.9 ..B1.168
                                # Execution count [1.00e+00]
        mov       rax, QWORD PTR [5320+rsp]                     #135.15 c1
        mov       DWORD PTR [5432+rsp], r14d                    #135.3 c1
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.776 #135.3 c1
        mov       QWORD PTR [5352+rsp], rax                     #135.3 c5 stall 1
        mov       rcx, QWORD PTR [5328+rsp]                     #135.22 c5
        mov       QWORD PTR [5360+rsp], rcx                     #135.3 c9 stall 1
        mov       r8, QWORD PTR [5336+rsp]                      #135.29 c9
        mov       QWORD PTR [5368+rsp], r8                      #135.3 c13 stall 1
        mov       r9, QWORD PTR [5344+rsp]                      #135.36 c13
        mov       QWORD PTR [5376+rsp], r9                      #135.3 c17 stall 1
        call      __kmpc_global_thread_num                      #135.3 c17
                                # LOE rbx r13 eax r12d r14d
..B1.252:                       # Preds ..B1.10
                                # Execution count [1.00e+00]
        mov       DWORD PTR [5424+rsp], eax                     #135.3 c1
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1016 #135.3 c1
        xor       eax, eax                                      #135.3 c1
..___tag_value_main.25:
        call      __kmpc_ok_to_fork                             #135.3
..___tag_value_main.26:
                                # LOE rbx r13 eax r12d r14d
..B1.11:                        # Preds ..B1.252
                                # Execution count [1.00e+00]
        test      eax, eax                                      #135.3 c1
        je        ..B1.13       # Prob 50%                      #135.3 c3
                                # LOE rbx r13 r12d r14d
..B1.12:                        # Preds ..B1.11
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #135.3 c1
	.cfi_escape 0x2e, 0x10
        mov       edx, offset flat: L_main_135__par_loop0_2.11  #135.3 c1
        lea       rcx, QWORD PTR [5448+rsp]                     #135.3 c3
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1016 #135.3 c3
        mov       esi, 5                                        #135.3 c3
        lea       r8, QWORD PTR [-80+rcx]                       #135.3 c5
        lea       r9, QWORD PTR [-72+rcx]                       #135.3 c5
        xor       eax, eax                                      #135.3 c5
        lea       r10, QWORD PTR [-64+rcx]                      #135.3 c7
        mov       QWORD PTR [rsp], r10                          #135.3 c9
        lea       r11, QWORD PTR [-56+rcx]                      #135.3 c9
        mov       QWORD PTR [8+rsp], r11                        #135.3 c11
..___tag_value_main.28:
        call      __kmpc_fork_call                              #135.3
..___tag_value_main.29:
                                # LOE rbx r13 r12d r14d
..B1.253:                       # Preds ..B1.12
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #135.3 c1
	.cfi_escape 0x2e, 0x00
        jmp       ..B1.16       # Prob 100%                     #135.3 c1
                                # LOE rbx r13 r12d r14d
..B1.13:                        # Preds ..B1.11
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1016 #135.3 c1
        mov       esi, DWORD PTR [5424+rsp]                     #135.3 c1
        xor       eax, eax                                      #135.3 c1
..___tag_value_main.31:
        call      __kmpc_serialized_parallel                    #135.3
..___tag_value_main.32:
                                # LOE rbx r13 r12d r14d
..B1.14:                        # Preds ..B1.13
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #135.3 c1
	.cfi_escape 0x2e, 0x10
        mov       esi, offset flat: ___kmpv_zeromain_0          #135.3 c1
        lea       rdi, QWORD PTR [5440+rsp]                     #135.3 c3
        lea       rdx, QWORD PTR [8+rdi]                        #135.3 c5
        lea       rcx, QWORD PTR [-80+rdx]                      #135.3 c7
        lea       r8, QWORD PTR [-72+rdx]                       #135.3 c7
        lea       r9, QWORD PTR [-64+rdx]                       #135.3 c9
        lea       rax, QWORD PTR [-56+rdx]                      #135.3 c9
        mov       QWORD PTR [rsp], rax                          #135.3 c11
..___tag_value_main.34:
        call      L_main_135__par_loop0_2.11                    #135.3
..___tag_value_main.35:
                                # LOE rbx r13 r12d r14d
..B1.254:                       # Preds ..B1.14
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #135.3 c1
	.cfi_escape 0x2e, 0x00
                                # LOE rbx r13 r12d r14d
..B1.15:                        # Preds ..B1.254
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1016 #135.3 c1
        mov       esi, DWORD PTR [5424+rsp]                     #135.3 c1
        xor       eax, eax                                      #135.3 c1
..___tag_value_main.37:
        call      __kmpc_end_serialized_parallel                #135.3
..___tag_value_main.38:
                                # LOE rbx r13 r12d r14d
..B1.16:                        # Preds ..B1.15 ..B1.253
                                # Execution count [1.00e+00]
        mov       QWORD PTR [280+rsp], 5489                     #137.16 c1
        xor       eax, eax                                      #137.16 c1
        mov       r8d, 5489                                     #137.16 c1
        mov       rcx, 0xa41a41a41a41a41b                       #137.16 c3
        .align    16,0x90
                                # LOE rax rcx rbx r8 r13 r12d r14d
..B1.17:                        # Preds ..B1.17 ..B1.16
                                # Execution count [6.23e+02]
        mov       r10, r8                                       #137.16 c1
        lea       rdx, QWORD PTR [1+rax]                        #137.16 c1
        shr       r10, 30                                       #137.16 c3
        mulx      r11, r9, rcx                                  #137.16 c3
        xor       r8, r10                                       #137.16 c5
        imul      r15, r8, 1812433253                           #137.16 c7
        mov       r8, rax                                       #137.16 c7
        sub       r8, r11                                       #137.16 c9
        add       r8, 1                                         #137.16 c11
        shr       r8, 1                                         #137.16 c13
        add       r11, r8                                       #137.16 c15
        shr       r11, 9                                        #137.16 c17
        imul      r8, r11, -624                                 #137.16 c19
        lea       r8, QWORD PTR [1+r15+r8]                      #137.16 c23 stall 1
        add       r8, rax                                       #137.16 c25
        mov       r8d, r8d                                      #137.16 c27
        mov       QWORD PTR [288+rsp+rax*8], r8                 #137.16 c29
        mov       rax, rdx                                      #137.16 c29
        cmp       rdx, 623                                      #137.16 c29
        jb        ..B1.17       # Prob 99%                      #137.16 c31
                                # LOE rax rcx rbx r8 r13 r12d r14d
..B1.18:                        # Preds ..B1.17
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [5320+rsp]                     #139.20 c1
        mov       QWORD PTR [56+rsp], 624                       #137.16[spill] c1
        xor       eax, eax                                      #139.3 c1
        mov       QWORD PTR [88+rsp], rax                       #139.3[spill] c3
        test      r14d, r14d                                    #139.3 c3
        mov       QWORD PTR [96+rsp], r15                       #139.20[spill] c5
        mov       QWORD PTR [80+rsp], r15                       #139.3[spill] c5
        movsxd    r15, r14d                                     #139.3 c5
        mov       QWORD PTR [72+rsp], rax                       #139.3[spill] c7
        jle       ..B1.38       # Prob 2%                       #139.3 c7
                                # LOE rbx r13 r15 r12d r14d
..B1.19:                        # Preds ..B1.18
                                # Execution count [9.79e-01]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          #139.3 c1
        add       rsp, -16                                      #139.3 c1
	.cfi_escape 0x2e, 0x10
        fstp      TBYTE PTR [rsp]                               #139.3 c3
        call      logl                                          #139.3 c3
                                # LOE rbx r13 r15 r12d r14d f1
..B1.256:                       # Preds ..B1.19
                                # Execution count [9.79e-01]
        fstp      TBYTE PTR [16+rsp]                            #139.3[spill] c1
        fld       TBYTE PTR .L_2il0floatpacket.14[rip]          #139.3 c1
        fstp      TBYTE PTR [rsp]                               #139.3 c5
        call      logl                                          #139.3 c5
                                # LOE rbx r13 r15 r12d r14d f1
..B1.255:                       # Preds ..B1.256
                                # Execution count [9.79e-01]
        add       rsp, 16                                       #139.3 c1
	.cfi_escape 0x2e, 0x00
        mov       QWORD PTR [40+rsp], rbx                       #139.3[spill] c3
        fld       TBYTE PTR [rsp]                               #139.3[spill] c3
        mov       DWORD PTR [32+rsp], r12d                      #139.3[spill] c5
        fdivrp    st(1), st                                     #139.3 c5
        mov       QWORD PTR [24+rsp], r13                       #139.3[spill] c5
        xor       ecx, ecx                                      #139.3 c5
        mov       QWORD PTR [104+rsp], r15                      #139.3[spill] c7
        fld       DWORD PTR .L_2il0floatpacket.15[rip]          #139.3 c7
        mov       DWORD PTR [16+rsp], r14d                      #139.3[spill] c9
        fxch      st(1)                                         #139.3 c9
        mov       r9, 0x8000000000000000                        #139.3 c9
        xor       edx, edx                                      #139.3 c9
        mov       rbx, QWORD PTR [72+rsp]                       #139.3[spill] c9
        mov       r12, QWORD PTR [88+rsp]                       #139.3[spill] c11
        mov       r13, QWORD PTR [96+rsp]                       #139.3[spill] c13
        fcomi     st, st(1)                                     #139.3 c45 stall 15
        fsubr     st(1), st                                     #139.3 c45
        cmovb     r9, rcx                                       #139.3 c47
        mov       ecx, 1                                        #139.3 c47
        fcmovnb   st, st(1)                                     #139.3 c51 stall 1
        fstp      st(1)                                         #139.3 c53
        fisttp    QWORD PTR [48+rsp]                            #139.3 c53
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          #139.3 c53
        mov       r8, QWORD PTR [48+rsp]                        #139.3 c63 stall 4
        lea       r10, QWORD PTR [r8+r9]                        #139.3 c67 stall 1
        lea       rax, QWORD PTR [52+r8+r9]                     #139.3 c67
        div       r10                                           #139.3 c69
        mov       rdx, rax                                      #139.3 c169 stall 49
        cmp       rdx, 1                                        #139.3 c171
        cmovbe    rdx, rcx                                      #139.3 c173
        mov       rcx, QWORD PTR [56+rsp]                       #139.3[spill] c173
        mov       rax, rdx                                      #139.3 c175
        mov       r14, rdx                                      #139.3 c175
        mov       rdx, QWORD PTR [80+rsp]                       #139.3[spill] c175
        shr       rax, 1                                        #139.3 c177
        mov       r15, rax                                      #139.3 c179
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1
..B1.20:                        # Preds ..B1.36 ..B1.255
                                # Execution count [5.44e+00]
        vxorpd    xmm0, xmm0, xmm0                              #139.3 c1
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.18[rip]    #139.3 c1
        test      r14, r14                                      #139.3 c1
        je        ..B1.36       # Prob 50%                      #139.3 c3
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.21:                        # Preds ..B1.20
                                # Execution count [5.44e+00]
        mov       esi, 1                                        #139.3 c1
        xor       edi, edi                                      #139.3 c1
        test      r15, r15                                      #139.3 c3
        jbe       ..B1.31       # Prob 9%                       #139.3 c5
                                # LOE rdx rcx rbx rsi rdi r12 r13 r14 r15 f1 xmm0 xmm1
..B1.22:                        # Preds ..B1.21
                                # Execution count [4.90e+00]
        mov       rsi, 0x09d2c5680                              #139.3 c1
        mov       QWORD PTR [72+rsp], rbx                       #139.3[spill] c1
        mov       rax, 0x0efc60000                              #139.3 c1
        mov       QWORD PTR [88+rsp], r12                       #139.3[spill] c1
        mov       rbx, rax                                      #139.3 c3
        mov       QWORD PTR [80+rsp], rdx                       #139.3[spill] c3
        mov       r12, rdi                                      #139.3 c3
        mov       QWORD PTR [96+rsp], r13                       #139.3[spill] c3
        mov       r13, rsi                                      #139.3 c5
                                # LOE rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.23:                        # Preds ..B1.29 ..B1.22
                                # Execution count [1.36e+01]
        cmp       rcx, 624                                      #139.3 c1
        jb        ..B1.26       # Prob 78%                      #139.3 c3
                                # LOE rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.24:                        # Preds ..B1.23
                                # Execution count [2.99e+00]
        mov       QWORD PTR [5272+rsp], rcx                     #137.16 c1
        lea       rdi, QWORD PTR [280+rsp]                      #139.3 c1
        vmovsd    QWORD PTR [rsp], xmm0                         #139.3[spill] c3
        fstp      st(0)                                         #139.3 c3
        vmovsd    QWORD PTR [8+rsp], xmm1                       #139.3[spill] c3
..___tag_value_main.41:
#       std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
        call      _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv #139.3
..___tag_value_main.42:
                                # LOE rbx r12 r13 r14 r15
..B1.25:                        # Preds ..B1.24
                                # Execution count [2.99e+00]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          # c1
        vmovsd    xmm1, QWORD PTR [8+rsp]                       #[spill] c1
        vmovsd    xmm0, QWORD PTR [rsp]                         #[spill] c3
        mov       rcx, QWORD PTR [5272+rsp]                     #139.42 c7 stall 1
                                # LOE rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.26:                        # Preds ..B1.25 ..B1.23
                                # Execution count [1.36e+01]
        mov       rax, QWORD PTR [280+rsp+rcx*8]                #139.3 c1
        vmovsd    QWORD PTR [112+rsp], xmm1                     #139.3 c1
        add       rcx, 1                                        #139.3 c1
        vxorpd    xmm2, xmm2, xmm2                              #139.3 c1
        mov       r8, rax                                       #139.3 c5 stall 1
        fld       QWORD PTR [112+rsp]                           #139.3 c7
        shr       r8, 11                                        #139.3 c7
        mov       r9d, r8d                                      #139.3 c9
        fmul      st, st(1)                                     #139.3 c9
        fstp      QWORD PTR [120+rsp]                           #139.3 c17 stall 3
        xor       rax, r9                                       #139.3 c17
        mov       r10, rax                                      #139.3 c19
        shl       r10, 7                                        #139.3 c21
        vmovsd    xmm3, QWORD PTR [120+rsp]                     #139.3 c21
        and       r10, r13                                      #139.3 c23
        xor       rax, r10                                      #139.3 c25
        mov       r11, rax                                      #139.3 c27
        shl       r11, 15                                       #139.3 c29
        and       r11, rbx                                      #139.3 c31
        xor       rax, r11                                      #139.3 c33
        mov       r8, rax                                       #139.3 c35
        shr       r8, 18                                        #139.3 c37
        xor       rax, r8                                       #139.3 c39
        vcvtusi2sd xmm2, xmm2, rax                              #139.3 c41
        vfmadd231sd xmm0, xmm2, xmm1                            #139.3 c43
        cmp       rcx, 624                                      #139.3 c43
        jb        ..B1.29       # Prob 78%                      #139.3 c45
                                # LOE rcx rbx r12 r13 r14 r15 f1 xmm0 xmm3
..B1.27:                        # Preds ..B1.26
                                # Execution count [2.99e+00]
        mov       QWORD PTR [5272+rsp], rcx                     #137.16 c1
        lea       rdi, QWORD PTR [280+rsp]                      #139.3 c1
        vmovsd    QWORD PTR [64+rsp], xmm3                      #139.3[spill] c3
        fstp      st(0)                                         #139.3 c3
        vmovsd    QWORD PTR [rsp], xmm0                         #139.3[spill] c3
..___tag_value_main.43:
#       std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
        call      _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv #139.3
..___tag_value_main.44:
                                # LOE rbx r12 r13 r14 r15
..B1.28:                        # Preds ..B1.27
                                # Execution count [2.99e+00]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          # c1
        vmovsd    xmm0, QWORD PTR [rsp]                         #[spill] c1
        vmovsd    xmm3, QWORD PTR [64+rsp]                      #[spill] c3
        mov       rcx, QWORD PTR [5272+rsp]                     #139.42 c7 stall 1
                                # LOE rcx rbx r12 r13 r14 r15 f1 xmm0 xmm3
..B1.29:                        # Preds ..B1.28 ..B1.26
                                # Execution count [1.36e+01]
        mov       rax, QWORD PTR [280+rsp+rcx*8]                #139.3 c1
        vmovsd    QWORD PTR [112+rsp], xmm3                     #139.3 c1
        add       r12, 1                                        #139.3 c1
        vxorpd    xmm2, xmm2, xmm2                              #139.3 c1
        add       rcx, 1                                        #139.3 c1
        mov       r8, rax                                       #139.3 c5 stall 1
        fld       QWORD PTR [112+rsp]                           #139.3 c7
        shr       r8, 11                                        #139.3 c7
        mov       r9d, r8d                                      #139.3 c9
        fmul      st, st(1)                                     #139.3 c9
        fstp      QWORD PTR [120+rsp]                           #139.3 c17 stall 3
        xor       rax, r9                                       #139.3 c17
        mov       r10, rax                                      #139.3 c19
        shl       r10, 7                                        #139.3 c21
        vmovsd    xmm1, QWORD PTR [120+rsp]                     #139.3 c21
        and       r10, r13                                      #139.3 c23
        xor       rax, r10                                      #139.3 c25
        mov       r11, rax                                      #139.3 c27
        shl       r11, 15                                       #139.3 c29
        and       r11, rbx                                      #139.3 c31
        xor       rax, r11                                      #139.3 c33
        mov       r8, rax                                       #139.3 c35
        shr       r8, 18                                        #139.3 c37
        xor       rax, r8                                       #139.3 c39
        vcvtusi2sd xmm2, xmm2, rax                              #139.3 c41
        vfmadd231sd xmm0, xmm2, xmm3                            #139.3 c43
        cmp       r12, r15                                      #139.3 c43
        jb        ..B1.23       # Prob 63%                      #139.3 c45
                                # LOE rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.30:                        # Preds ..B1.29
                                # Execution count [4.90e+00]
        mov       rdi, r12                                      # c1
        mov       rbx, QWORD PTR [72+rsp]                       #[spill] c1
        mov       r12, QWORD PTR [88+rsp]                       #[spill] c1
        mov       rdx, QWORD PTR [80+rsp]                       #[spill] c5 stall 1
        mov       r13, QWORD PTR [96+rsp]                       #[spill] c5
        lea       rsi, QWORD PTR [1+rdi*2]                      #139.3 c9 stall 1
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 f1 xmm0 xmm1
..B1.31:                        # Preds ..B1.30 ..B1.21
                                # Execution count [5.44e+00]
        add       rsi, -1                                       #139.3 c1
        cmp       rsi, r14                                      #139.3 c3
        jae       ..B1.36       # Prob 9%                       #139.3 c5
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.32:                        # Preds ..B1.31
                                # Execution count [4.90e+00]
        cmp       rcx, 624                                      #139.3 c1
        jb        ..B1.35       # Prob 78%                      #139.3 c3
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.08e+00]
        mov       QWORD PTR [5272+rsp], rcx                     #137.16 c1
        lea       rdi, QWORD PTR [280+rsp]                      #139.3 c1
        vmovsd    QWORD PTR [rsp], xmm0                         #139.3[spill] c3
        fstp      st(0)                                         #139.3 c3
        vmovsd    QWORD PTR [8+rsp], xmm1                       #139.3[spill] c3
        mov       QWORD PTR [80+rsp], rdx                       #139.3[spill] c9 stall 2
..___tag_value_main.45:
#       std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
        call      _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv #139.3
..___tag_value_main.46:
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
                                # Execution count [1.08e+00]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          # c1
        mov       rdx, QWORD PTR [80+rsp]                       #[spill] c1
        vmovsd    xmm1, QWORD PTR [8+rsp]                       #[spill] c3
        vmovsd    xmm0, QWORD PTR [rsp]                         #[spill] c5
        mov       rcx, QWORD PTR [5272+rsp]                     #139.42 c9 stall 1
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.35:                        # Preds ..B1.34 ..B1.32
                                # Execution count [4.90e+00]
        mov       rax, QWORD PTR [280+rsp+rcx*8]                #139.3 c1
        vmovsd    QWORD PTR [112+rsp], xmm1                     #139.3 c1
        mov       r8, 0x09d2c5680                               #139.3 c1
        mov       r10, 0x0efc60000                              #139.3 c1
        vxorpd    xmm2, xmm2, xmm2                              #139.3 c1
        add       rcx, 1                                        #139.3 c3
        mov       rsi, rax                                      #139.3 c5
        fld       QWORD PTR [112+rsp]                           #139.3 c7
        shr       rsi, 11                                       #139.3 c7
        mov       edi, esi                                      #139.3 c9
        fmul      st, st(1)                                     #139.3 c9
        fstp      QWORD PTR [120+rsp]                           #139.3 c17 stall 3
        xor       rax, rdi                                      #139.3 c17
        mov       r9, rax                                       #139.3 c19
        shl       r9, 7                                         #139.3 c21
        and       r9, r8                                        #139.3 c23
        xor       rax, r9                                       #139.3 c25
        mov       r11, rax                                      #139.3 c27
        shl       r11, 15                                       #139.3 c29
        and       r11, r10                                      #139.3 c31
        xor       rax, r11                                      #139.3 c33
        mov       rsi, rax                                      #139.3 c35
        shr       rsi, 18                                       #139.3 c37
        xor       rax, rsi                                      #139.3 c39
        vcvtusi2sd xmm2, xmm2, rax                              #139.3 c41
        vfmadd231sd xmm0, xmm2, xmm1                            #139.3 c43
        vmovsd    xmm1, QWORD PTR [120+rsp]                     #139.3 c43
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.36:                        # Preds ..B1.35 ..B1.31 ..B1.20
                                # Execution count [5.44e+00]
        prefetcht0 BYTE PTR [160+rbx+rdx]                       #139.3 c1
        vgetmantsd xmm3, xmm1, xmm1, 0                          #139.3 c1
        vgetmantsd xmm4, xmm0, xmm0, 0                          #139.3 c1
        vmovsd    xmm2, QWORD PTR .L_2il0floatpacket.18[rip]    #139.3 c1
        add       r12, 1                                        #139.3 c1
        add       rbx, 8                                        #139.3 c1
        vrcp28sd  xmm5, xmm3, xmm3                              #139.3 c7 stall 2
        vgetexpsd xmm0, xmm0, xmm0                              #139.3 c7
        vgetexpsd xmm1, xmm1, xmm1                              #139.3 c13 stall 2
        vmulsd    xmm6, xmm5, xmm4, {rn-sae}                    #139.3 c15
        vfnmadd231sd xmm2, xmm5, xmm3, {rn-sae}                 #139.3 c19 stall 1
        vfnmadd231sd xmm4, xmm6, xmm3, {rn-sae}                 #139.3 c21
        vfmadd231sd xmm5, xmm2, xmm5, {rn-sae}                  #139.3 c25 stall 1
        vsubsd    xmm7, xmm0, xmm1                              #139.3 c27
        vfmadd231sd xmm6, xmm4, xmm5, {rn-sae}                  #139.3 c31 stall 1
        vscalefsd xmm8, xmm6, xmm7                              #139.3 c37 stall 2
        vmovsd    QWORD PTR [r13], xmm8                         #139.3 c43 stall 2
        add       r13, 8                                        #139.3 c43
        cmp       r12, QWORD PTR [104+rsp]                      #139.3[spill] c43
        jb        ..B1.20       # Prob 82%                      #139.3 c45
                                # LOE rdx rcx rbx r12 r13 r14 r15 f1
..B1.37:                        # Preds ..B1.36
                                # Execution count [9.79e-01]
        mov       QWORD PTR [56+rsp], rcx                       #[spill] c1
        fstp      st(0)                                         # c1
        mov       rbx, QWORD PTR [40+rsp]                       #[spill] c1
        mov       r12d, DWORD PTR [32+rsp]                      #[spill] c3
        mov       r13, QWORD PTR [24+rsp]                       #[spill] c5
        mov       r14d, DWORD PTR [16+rsp]                      #[spill] c7
        mov       r15, QWORD PTR [104+rsp]                      #[spill] c9
                                # LOE rbx r13 r15 r12d r14d
..B1.38:                        # Preds ..B1.37 ..B1.18
                                # Execution count [1.00e+00]
        mov       rax, QWORD PTR [5328+rsp]                     #140.20 c1
        mov       QWORD PTR [88+rsp], rax                       #140.20[spill] c5 stall 1
        xor       ecx, ecx                                      #140.3 c5
        mov       QWORD PTR [72+rsp], rax                       #140.3[spill] c5
        test      r14d, r14d                                    #140.3 c5
        mov       QWORD PTR [80+rsp], rcx                       #140.3[spill] c7
        mov       QWORD PTR [64+rsp], rcx                       #140.3[spill] c7
        jle       ..B1.246      # Prob 2%                       #140.3 c7
                                # LOE rbx r13 r15 r12d r14d
..B1.39:                        # Preds ..B1.38
                                # Execution count [9.79e-01]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          #140.3 c1
        add       rsp, -16                                      #140.3 c1
	.cfi_escape 0x2e, 0x10
        fstp      TBYTE PTR [rsp]                               #140.3 c3
        call      logl                                          #140.3 c3
                                # LOE rbx r13 r15 r12d r14d f1
..B1.258:                       # Preds ..B1.39
                                # Execution count [9.79e-01]
        fstp      TBYTE PTR [16+rsp]                            #140.3[spill] c1
        fld       TBYTE PTR .L_2il0floatpacket.14[rip]          #140.3 c1
        fstp      TBYTE PTR [rsp]                               #140.3 c5
        call      logl                                          #140.3 c5
                                # LOE rbx r13 r15 r12d r14d f1
..B1.257:                       # Preds ..B1.258
                                # Execution count [9.79e-01]
        add       rsp, 16                                       #140.3 c1
	.cfi_escape 0x2e, 0x00
        mov       QWORD PTR [40+rsp], rbx                       #140.3[spill] c3
        fld       TBYTE PTR [rsp]                               #140.3[spill] c3
        mov       DWORD PTR [32+rsp], r12d                      #140.3[spill] c5
        fdivrp    st(1), st                                     #140.3 c5
        mov       QWORD PTR [24+rsp], r13                       #140.3[spill] c5
        xor       ecx, ecx                                      #140.3 c5
        mov       QWORD PTR [104+rsp], r15                      #140.3[spill] c7
        fld       DWORD PTR .L_2il0floatpacket.15[rip]          #140.3 c7
        mov       DWORD PTR [16+rsp], r14d                      #140.3[spill] c9
        fxch      st(1)                                         #140.3 c9
        mov       r9, 0x8000000000000000                        #140.3 c9
        xor       edx, edx                                      #140.3 c9
        mov       r13, QWORD PTR [64+rsp]                       #140.3[spill] c9
        mov       r14, QWORD PTR [80+rsp]                       #140.3[spill] c11
        mov       rbx, QWORD PTR [72+rsp]                       #140.3[spill] c13
        mov       r12, QWORD PTR [88+rsp]                       #140.3[spill] c15
        fcomi     st, st(1)                                     #140.3 c45 stall 14
        fsubr     st(1), st                                     #140.3 c45
        cmovb     r9, rcx                                       #140.3 c47
        mov       ecx, 1                                        #140.3 c47
        fcmovnb   st, st(1)                                     #140.3 c51 stall 1
        fstp      st(1)                                         #140.3 c53
        fisttp    QWORD PTR [48+rsp]                            #140.3 c53
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          #140.3 c53
        mov       r8, QWORD PTR [48+rsp]                        #140.3 c63 stall 4
        lea       r10, QWORD PTR [r8+r9]                        #140.3 c67 stall 1
        lea       rax, QWORD PTR [52+r8+r9]                     #140.3 c67
        div       r10                                           #140.3 c69
        cmp       rax, 1                                        #140.3 c169 stall 49
        cmovbe    rax, rcx                                      #140.3 c171
        mov       r15, rax                                      #140.3 c173
        mov       rax, QWORD PTR [56+rsp]                       #140.3[spill] c173
                                # LOE rax rbx r12 r13 r14 r15 f1
..B1.40:                        # Preds ..B1.56 ..B1.257
                                # Execution count [5.44e+00]
        vxorpd    xmm0, xmm0, xmm0                              #140.3 c1
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.18[rip]    #140.3 c1
        test      r15, r15                                      #140.3 c1
        je        ..B1.56       # Prob 50%                      #140.3 c3
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.41:                        # Preds ..B1.40
                                # Execution count [5.44e+00]
        mov       rsi, r15                                      #140.3 c1
        mov       edx, 1                                        #140.3 c1
        shr       rsi, 1                                        #140.3 c3
        xor       edi, edi                                      #140.3 c3
        test      rsi, rsi                                      #140.3 c5
        jbe       ..B1.51       # Prob 9%                       #140.3 c7
                                # LOE rax rdx rbx rsi rdi r12 r13 r14 r15 f1 xmm0 xmm1
..B1.42:                        # Preds ..B1.41
                                # Execution count [4.90e+00]
        mov       rcx, 0x09d2c5680                              #139.3 c1
        mov       QWORD PTR [64+rsp], r13                       #139.3[spill] c1
        mov       rdx, 0x0efc60000                              #139.3 c1
        mov       QWORD PTR [80+rsp], r14                       #139.3[spill] c1
        mov       rbx, rdx                                      #139.3 c3
        mov       QWORD PTR [88+rsp], r12                       #139.3[spill] c3
        mov       r14, rcx                                      #139.3 c3
        mov       r13, rsi                                      #139.3 c5
        mov       r12, rdi                                      #139.3 c5
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.43:                        # Preds ..B1.49 ..B1.42
                                # Execution count [1.36e+01]
        cmp       rax, 624                                      #140.3 c1
        jb        ..B1.46       # Prob 78%                      #140.3 c3
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.44:                        # Preds ..B1.43
                                # Execution count [2.99e+00]
        mov       QWORD PTR [5272+rsp], rax                     #137.16 c1
        lea       rdi, QWORD PTR [280+rsp]                      #140.3 c1
        vmovsd    QWORD PTR [rsp], xmm0                         #140.3[spill] c3
        fstp      st(0)                                         #140.3 c3
        vmovsd    QWORD PTR [8+rsp], xmm1                       #140.3[spill] c3
..___tag_value_main.49:
#       std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
        call      _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv #140.3
..___tag_value_main.50:
                                # LOE rbx r12 r13 r14 r15
..B1.45:                        # Preds ..B1.44
                                # Execution count [2.99e+00]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          # c1
        vmovsd    xmm1, QWORD PTR [8+rsp]                       #[spill] c1
        vmovsd    xmm0, QWORD PTR [rsp]                         #[spill] c3
        mov       rax, QWORD PTR [5272+rsp]                     #140.42 c7 stall 1
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.46:                        # Preds ..B1.45 ..B1.43
                                # Execution count [1.36e+01]
        mov       rdx, QWORD PTR [280+rsp+rax*8]                #140.3 c1
        vmovsd    QWORD PTR [112+rsp], xmm1                     #140.3 c1
        add       rax, 1                                        #140.3 c1
        vxorpd    xmm2, xmm2, xmm2                              #140.3 c1
        mov       r8, rdx                                       #140.3 c5 stall 1
        fld       QWORD PTR [112+rsp]                           #140.3 c7
        shr       r8, 11                                        #140.3 c7
        mov       r9d, r8d                                      #140.3 c9
        fmul      st, st(1)                                     #140.3 c9
        fstp      QWORD PTR [120+rsp]                           #140.3 c17 stall 3
        xor       rdx, r9                                       #140.3 c17
        mov       r10, rdx                                      #140.3 c19
        shl       r10, 7                                        #140.3 c21
        vmovsd    xmm3, QWORD PTR [120+rsp]                     #140.3 c21
        and       r10, r14                                      #140.3 c23
        xor       rdx, r10                                      #140.3 c25
        mov       r11, rdx                                      #140.3 c27
        shl       r11, 15                                       #140.3 c29
        and       r11, rbx                                      #140.3 c31
        xor       rdx, r11                                      #140.3 c33
        mov       r8, rdx                                       #140.3 c35
        shr       r8, 18                                        #140.3 c37
        xor       rdx, r8                                       #140.3 c39
        vcvtusi2sd xmm2, xmm2, rdx                              #140.3 c41
        vfmadd231sd xmm0, xmm2, xmm1                            #140.3 c43
        cmp       rax, 624                                      #140.3 c43
        jb        ..B1.49       # Prob 78%                      #140.3 c45
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm3
..B1.47:                        # Preds ..B1.46
                                # Execution count [2.99e+00]
        mov       QWORD PTR [5272+rsp], rax                     #137.16 c1
        lea       rdi, QWORD PTR [280+rsp]                      #140.3 c1
        vmovsd    QWORD PTR [48+rsp], xmm3                      #140.3[spill] c3
        fstp      st(0)                                         #140.3 c3
        vmovsd    QWORD PTR [rsp], xmm0                         #140.3[spill] c3
..___tag_value_main.51:
#       std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
        call      _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv #140.3
..___tag_value_main.52:
                                # LOE rbx r12 r13 r14 r15
..B1.48:                        # Preds ..B1.47
                                # Execution count [2.99e+00]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          # c1
        vmovsd    xmm0, QWORD PTR [rsp]                         #[spill] c1
        vmovsd    xmm3, QWORD PTR [48+rsp]                      #[spill] c3
        mov       rax, QWORD PTR [5272+rsp]                     #140.42 c7 stall 1
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm3
..B1.49:                        # Preds ..B1.48 ..B1.46
                                # Execution count [1.36e+01]
        mov       rdx, QWORD PTR [280+rsp+rax*8]                #140.3 c1
        vmovsd    QWORD PTR [112+rsp], xmm3                     #140.3 c1
        add       r12, 1                                        #140.3 c1
        vxorpd    xmm2, xmm2, xmm2                              #140.3 c1
        add       rax, 1                                        #140.3 c1
        mov       r8, rdx                                       #140.3 c5 stall 1
        fld       QWORD PTR [112+rsp]                           #140.3 c7
        shr       r8, 11                                        #140.3 c7
        mov       r9d, r8d                                      #140.3 c9
        fmul      st, st(1)                                     #140.3 c9
        fstp      QWORD PTR [120+rsp]                           #140.3 c17 stall 3
        xor       rdx, r9                                       #140.3 c17
        mov       r10, rdx                                      #140.3 c19
        shl       r10, 7                                        #140.3 c21
        vmovsd    xmm1, QWORD PTR [120+rsp]                     #140.3 c21
        and       r10, r14                                      #140.3 c23
        xor       rdx, r10                                      #140.3 c25
        mov       r11, rdx                                      #140.3 c27
        shl       r11, 15                                       #140.3 c29
        and       r11, rbx                                      #140.3 c31
        xor       rdx, r11                                      #140.3 c33
        mov       r8, rdx                                       #140.3 c35
        shr       r8, 18                                        #140.3 c37
        xor       rdx, r8                                       #140.3 c39
        vcvtusi2sd xmm2, xmm2, rdx                              #140.3 c41
        vfmadd231sd xmm0, xmm2, xmm3                            #140.3 c43
        cmp       r12, r13                                      #140.3 c43
        jb        ..B1.43       # Prob 63%                      #140.3 c45
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.50:                        # Preds ..B1.49
                                # Execution count [4.90e+00]
        mov       rdi, r12                                      # c1
        mov       r13, QWORD PTR [64+rsp]                       #[spill] c1
        mov       r14, QWORD PTR [80+rsp]                       #[spill] c1
        mov       rbx, QWORD PTR [72+rsp]                       #[spill] c5 stall 1
        mov       r12, QWORD PTR [88+rsp]                       #[spill] c5
        lea       rdx, QWORD PTR [1+rdi*2]                      #140.3 c9 stall 1
                                # LOE rax rdx rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.51:                        # Preds ..B1.50 ..B1.41
                                # Execution count [5.44e+00]
        add       rdx, -1                                       #140.3 c1
        cmp       rdx, r15                                      #140.3 c3
        jae       ..B1.56       # Prob 9%                       #140.3 c5
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.52:                        # Preds ..B1.51
                                # Execution count [4.90e+00]
        cmp       rax, 624                                      #140.3 c1
        jb        ..B1.55       # Prob 78%                      #140.3 c3
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.53:                        # Preds ..B1.52
                                # Execution count [1.08e+00]
        mov       QWORD PTR [5272+rsp], rax                     #137.16 c1
        lea       rdi, QWORD PTR [280+rsp]                      #140.3 c1
        vmovsd    QWORD PTR [rsp], xmm0                         #140.3[spill] c3
        fstp      st(0)                                         #140.3 c3
        vmovsd    QWORD PTR [8+rsp], xmm1                       #140.3[spill] c3
..___tag_value_main.53:
#       std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
        call      _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv #140.3
..___tag_value_main.54:
                                # LOE rbx r12 r13 r14 r15
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.08e+00]
        fld       TBYTE PTR .L_2il0floatpacket.13[rip]          # c1
        vmovsd    xmm1, QWORD PTR [8+rsp]                       #[spill] c1
        vmovsd    xmm0, QWORD PTR [rsp]                         #[spill] c3
        mov       rax, QWORD PTR [5272+rsp]                     #140.42 c7 stall 1
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.55:                        # Preds ..B1.54 ..B1.52
                                # Execution count [4.90e+00]
        mov       r11, QWORD PTR [280+rsp+rax*8]                #140.3 c1
        vmovsd    QWORD PTR [112+rsp], xmm1                     #140.3 c1
        mov       rsi, 0x09d2c5680                              #140.3 c1
        mov       r8, 0x0efc60000                               #140.3 c1
        vxorpd    xmm2, xmm2, xmm2                              #140.3 c1
        add       rax, 1                                        #140.3 c3
        mov       rdx, r11                                      #140.3 c5
        fld       QWORD PTR [112+rsp]                           #140.3 c7
        shr       rdx, 11                                       #140.3 c7
        mov       ecx, edx                                      #140.3 c9
        fmul      st, st(1)                                     #140.3 c9
        fstp      QWORD PTR [120+rsp]                           #140.3 c17 stall 3
        xor       r11, rcx                                      #140.3 c17
        mov       rdi, r11                                      #140.3 c19
        shl       rdi, 7                                        #140.3 c21
        and       rdi, rsi                                      #140.3 c23
        xor       r11, rdi                                      #140.3 c25
        mov       r9, r11                                       #140.3 c27
        shl       r9, 15                                        #140.3 c29
        and       r9, r8                                        #140.3 c31
        xor       r11, r9                                       #140.3 c33
        mov       r10, r11                                      #140.3 c35
        shr       r10, 18                                       #140.3 c37
        xor       r11, r10                                      #140.3 c39
        vcvtusi2sd xmm2, xmm2, r11                              #140.3 c41
        vfmadd231sd xmm0, xmm2, xmm1                            #140.3 c43
        vmovsd    xmm1, QWORD PTR [120+rsp]                     #140.3 c43
                                # LOE rax rbx r12 r13 r14 r15 f1 xmm0 xmm1
..B1.56:                        # Preds ..B1.55 ..B1.51 ..B1.40
                                # Execution count [5.44e+00]
        prefetcht0 BYTE PTR [160+r13+rbx]                       #140.3 c1
        vgetmantsd xmm3, xmm1, xmm1, 0                          #140.3 c1
        vgetmantsd xmm4, xmm0, xmm0, 0                          #140.3 c1
        vmovsd    xmm2, QWORD PTR .L_2il0floatpacket.18[rip]    #140.3 c1
        add       r14, 1                                        #140.3 c1
        add       r13, 8                                        #140.3 c1
        vrcp28sd  xmm5, xmm3, xmm3                              #140.3 c7 stall 2
        vgetexpsd xmm0, xmm0, xmm0                              #140.3 c7
        vgetexpsd xmm1, xmm1, xmm1                              #140.3 c13 stall 2
        vmulsd    xmm6, xmm5, xmm4, {rn-sae}                    #140.3 c15
        vfnmadd231sd xmm2, xmm5, xmm3, {rn-sae}                 #140.3 c19 stall 1
        vfnmadd231sd xmm4, xmm6, xmm3, {rn-sae}                 #140.3 c21
        vfmadd231sd xmm5, xmm2, xmm5, {rn-sae}                  #140.3 c25 stall 1
        vsubsd    xmm7, xmm0, xmm1                              #140.3 c27
        vfmadd231sd xmm6, xmm4, xmm5, {rn-sae}                  #140.3 c31 stall 1
        vscalefsd xmm8, xmm6, xmm7                              #140.3 c37 stall 2
        vmovsd    QWORD PTR [r12], xmm8                         #140.3 c43 stall 2
        add       r12, 8                                        #140.3 c43
        cmp       r14, QWORD PTR [104+rsp]                      #140.3[spill] c43
        jb        ..B1.40       # Prob 82%                      #140.3 c45
                                # LOE rax rbx r12 r13 r14 r15 f1
..B1.57:                        # Preds ..B1.56
                                # Execution count [9.79e-01]
        mov       QWORD PTR [56+rsp], rax                       #[spill] c1
        fstp      st(0)                                         # c1
        mov       QWORD PTR [5272+rsp], rax                     #137.16 c1
        mov       rbx, QWORD PTR [40+rsp]                       #[spill] c3
        mov       r12d, DWORD PTR [32+rsp]                      #[spill] c3
        mov       r13, QWORD PTR [24+rsp]                       #[spill] c7 stall 1
        mov       r14d, DWORD PTR [16+rsp]                      #[spill] c7
        mov       r15, QWORD PTR [104+rsp]                      #[spill] c11 stall 1
                                # LOE rbx r13 r15 r12d r14d
..B1.58:                        # Preds ..B1.57 ..B1.246
                                # Execution count [1.00e+00]
        mov       rdi, QWORD PTR [5336+rsp]                     #141.16 c1
        test      r14d, r14d                                    #141.3 c1
        jle       ..B1.61       # Prob 50%                      #141.3 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.59:                        # Preds ..B1.58
                                # Execution count [5.00e-03]
        cmp       r15, 12                                       #141.3 c1
        jle       ..B1.237      # Prob 0%                       #141.3 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.00e+00]
        shl       r15, 3                                        #141.3 c1
        xor       esi, esi                                      #141.3 c1
        mov       rdx, r15                                      #141.3 c3
        call      __intel_mic_avx512f_memset                    #141.3 c5
                                # LOE rbx r13 r12d r14d
..B1.61:                        # Preds ..B1.243 ..B1.58 ..B1.241 ..B1.60
                                # Execution count [1.00e+00]
        test      rbx, rbx                                      #143.33 c1
        jne       ..B1.230      # Prob 5%                       #143.33 c3
                                # LOE rbx r13 r12d r14d
..B1.62:                        # Preds ..B1.61
                                # Execution count [9.50e-01]
        xor       edi, edi                                      #143.33 c1
                                # LOE rbx rdi r13 r12d r14d
..B1.63:                        # Preds ..B1.232 ..B1.62
                                # Execution count [1.00e+00]
        lea       r15, QWORD PTR [r13+rdi]                      #143.33 c1
        mov       QWORD PTR [16+rsp], rdi                       #143.23 c1
        test      rbx, rbx                                      #143.33 c1
        mov       QWORD PTR [32+rsp], r15                       #143.23 c3
        jbe       ..B1.66       # Prob 50%                      #143.33 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.64:                        # Preds ..B1.63
                                # Execution count [5.00e-03]
        cmp       rbx, 12                                       #143.33 c1
        jle       ..B1.221      # Prob 0%                       #143.33 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.00e+00]
        lea       rdx, QWORD PTR [rbx*8]                        #143.33 c1
        mov       QWORD PTR [24+rsp], rdi                       #143.23 c1
        xor       esi, esi                                      #143.33 c1
        call      __intel_mic_avx512f_memset                    #143.33 c3
                                # LOE rbx r13 r15 r12d r14d
..B1.66:                        # Preds ..B1.227 ..B1.63 ..B1.225 ..B1.65
                                # Execution count [1.00e+00]
        mov       QWORD PTR [24+rsp], r15                       #143.23 c1
        test      rbx, rbx                                      #143.54 c1
        jne       ..B1.214      # Prob 5%                       #143.54 c3
                                # LOE rbx r13 r12d r14d
..B1.67:                        # Preds ..B1.66
                                # Execution count [9.50e-01]
        xor       edi, edi                                      #143.54 c1
                                # LOE rbx rdi r13 r12d r14d
..B1.68:                        # Preds ..B1.216 ..B1.67
                                # Execution count [1.00e+00]
        lea       r15, QWORD PTR [r13+rdi]                      #143.54 c1
        mov       QWORD PTR [40+rsp], rdi                       #143.44 c1
        test      rbx, rbx                                      #143.54 c1
        mov       QWORD PTR [56+rsp], r15                       #143.44 c3
        jbe       ..B1.71       # Prob 50%                      #143.54 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.69:                        # Preds ..B1.68
                                # Execution count [5.00e-03]
        cmp       rbx, 12                                       #143.54 c1
        jle       ..B1.205      # Prob 0%                       #143.54 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.70:                        # Preds ..B1.69
                                # Execution count [1.00e+00]
        lea       rdx, QWORD PTR [rbx*8]                        #143.54 c1
        mov       QWORD PTR [48+rsp], rdi                       #143.44 c1
        xor       esi, esi                                      #143.54 c1
        call      __intel_mic_avx512f_memset                    #143.54 c3
                                # LOE rbx r13 r15 r12d r14d
..B1.71:                        # Preds ..B1.211 ..B1.68 ..B1.209 ..B1.70
                                # Execution count [1.00e+00]
        mov       QWORD PTR [48+rsp], r15                       #143.44 c1
        test      rbx, rbx                                      #143.75 c1
        jne       ..B1.198      # Prob 5%                       #143.75 c3
                                # LOE rbx r13 r12d r14d
..B1.72:                        # Preds ..B1.71
                                # Execution count [9.50e-01]
        xor       edi, edi                                      #143.75 c1
                                # LOE rbx rdi r13 r12d r14d
..B1.73:                        # Preds ..B1.200 ..B1.72
                                # Execution count [1.00e+00]
        lea       r15, QWORD PTR [r13+rdi]                      #143.75 c1
        mov       QWORD PTR [256+rsp], rdi                      #143.65 c1
        test      rbx, rbx                                      #143.75 c1
        mov       QWORD PTR [272+rsp], r15                      #143.65 c3
        jbe       ..B1.76       # Prob 50%                      #143.75 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.74:                        # Preds ..B1.73
                                # Execution count [5.00e-03]
        cmp       rbx, 12                                       #143.75 c1
        jle       ..B1.189      # Prob 0%                       #143.75 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.75:                        # Preds ..B1.74
                                # Execution count [1.00e+00]
        shl       rbx, 3                                        #143.75 c1
        mov       QWORD PTR [264+rsp], rdi                      #143.65 c1
        xor       esi, esi                                      #143.75 c1
        mov       rdx, rbx                                      #143.75 c3
        call      __intel_mic_avx512f_memset                    #143.75 c5
                                # LOE r13 r15 r12d r14d
..B1.76:                        # Preds ..B1.195 ..B1.73 ..B1.193 ..B1.75
                                # Execution count [1.00e+00]
        sar       r13, 3                                        #145.36 c1
        mov       QWORD PTR [264+rsp], r15                      #143.65 c1
        mov       rdi, QWORD PTR [16+rsp]                       #145.36 c1
        mov       rsi, QWORD PTR [5320+rsp]                     #145.16 c3
        test      r13, r13                                      #145.36 c3
        je        ..B1.80       # Prob 78%                      #145.36 c5
                                # LOE rsi rdi r13 r12d r14d
..B1.77:                        # Preds ..B1.76
                                # Execution count [2.20e-01]
        shl       r13, 3                                        #145.36 c1
        mov       rdx, r13                                      #145.36 c3
        call      __intel_ssse3_rep_memmove                     #145.36 c5
                                # LOE r13 r12d r14d
..B1.78:                        # Preds ..B1.77
                                # Execution count [2.20e-01]
        mov       rdi, QWORD PTR [40+rsp]                       #146.36 c1
        mov       rsi, QWORD PTR [5328+rsp]                     #146.36 c1
        mov       rdx, r13                                      #146.36 c1
        call      __intel_ssse3_rep_memmove                     #146.36 c3
                                # LOE r13 r12d r14d
..B1.79:                        # Preds ..B1.78
                                # Execution count [2.20e-01]
        mov       rdi, QWORD PTR [256+rsp]                      #147.36 c1
        mov       rsi, QWORD PTR [5336+rsp]                     #147.36 c1
        mov       rdx, r13                                      #147.36 c1
        call      __intel_ssse3_rep_memmove                     #147.36 c3
        mov       rdi, QWORD PTR [16+rsp]                       #145.36 c5
                                # LOE rdi r12d r14d
..B1.80:                        # Preds ..B1.76 ..B1.79
                                # Execution count [1.00e+00]
        test      r14d, r14d                                    #149.23 c1
        jle       ..B1.87       # Prob 50%                      #149.23 c3
                                # LOE rdi r12d r14d
..B1.81:                        # Preds ..B1.80
                                # Execution count [1.00e+00]
        mov       eax, r14d                                     #149.3 c1
        mov       rbx, QWORD PTR [5320+rsp]                     #150.19 c1
        mov       rcx, QWORD PTR [5328+rsp]                     #151.19 c1
        mov       r9d, 1                                        #149.3 c1
        shr       eax, 31                                       #149.3 c3
        xor       r8d, r8d                                      #149.3 c3
        add       eax, r14d                                     #112.18 c5
        mov       rdx, QWORD PTR [5344+rsp]                     #150.5 c5
        sar       eax, 1                                        #112.18 c7
        test      eax, eax                                      #149.3 c9
        jbe       ..B1.85       # Prob 9%                       #149.3 c11
                                # LOE rdx rcx rbx rdi eax r8d r9d r12d r14d
..B1.83:                        # Preds ..B1.81 ..B1.83
                                # Execution count [2.50e+00]
        lea       r9d, DWORD PTR [r8+r8]                        #150.19 c1
        add       r8d, 1                                        #149.3 c1
        movsxd    r9, r9d                                       #150.19 c3
        mov       r10, QWORD PTR [rbx+r9*8]                     #150.19 c5
        mov       rsi, r9                                       #150.5 c5
        shl       rsi, 4                                        #150.5 c7
        mov       QWORD PTR [rdx+rsi], r10                      #150.5 c9
        mov       r11, QWORD PTR [rcx+r9*8]                     #151.19 c9
        mov       QWORD PTR [8+rdx+rsi], r11                    #151.5 c13 stall 1
        mov       r13, QWORD PTR [8+rbx+r9*8]                   #150.19 c13
        mov       QWORD PTR [16+rdx+rsi], r13                   #150.5 c17 stall 1
        mov       r15, QWORD PTR [8+rcx+r9*8]                   #151.19 c17
        mov       QWORD PTR [24+rdx+rsi], r15                   #151.5 c21 stall 1
        cmp       r8d, eax                                      #149.3 c21
        jb        ..B1.83       # Prob 63%                      #149.3 c23
                                # LOE rdx rcx rbx rdi eax r8d r12d r14d
..B1.84:                        # Preds ..B1.83
                                # Execution count [9.00e-01]
        lea       r9d, DWORD PTR [1+r8+r8]                      #150.5 c1
                                # LOE rdx rcx rbx rdi r9d r12d r14d
..B1.85:                        # Preds ..B1.84 ..B1.81
                                # Execution count [1.00e+00]
        lea       eax, DWORD PTR [-1+r9]                        #149.3 c1
        cmp       eax, r14d                                     #149.3 c3
        jae       ..B1.87       # Prob 9%                       #149.3 c5
                                # LOE rdx rcx rbx rdi r9d r12d r14d
..B1.86:                        # Preds ..B1.85
                                # Execution count [9.00e-01]
        movsxd    r9, r9d                                       #150.19 c1
        mov       rbx, QWORD PTR [-8+rbx+r9*8]                  #150.19 c3
        mov       rax, r9                                       #150.5 c3
        shl       rax, 4                                        #150.5 c5
        mov       QWORD PTR [-16+rax+rdx], rbx                  #150.5 c7
        mov       rcx, QWORD PTR [-8+rcx+r9*8]                  #151.19 c7
        mov       QWORD PTR [-8+rax+rdx], rcx                   #151.5 c11 stall 1
                                # LOE rdi r12d r14d
..B1.87:                        # Preds ..B1.80 ..B1.85 ..B1.86
                                # Execution count [1.00e+00]
        mov       rbx, QWORD PTR [24+rsp]                       #154.13 c1
        sub       rbx, rdi                                      #154.13 c5 stall 1
        shr       rbx, 3                                        #154.3 c7
        mov       ecx, ebx                                      #154.3 c9
        test      ecx, ecx                                      #154.3 c11
        jle       ..B1.104      # Prob 50%                      #154.3 c13
                                # LOE rbx rdi ecx r12d r14d
..B1.88:                        # Preds ..B1.87
                                # Execution count [9.00e-01]
        mov       rdx, QWORD PTR [40+rsp]                       #154.24 c1
        mov       r9, QWORD PTR [256+rsp]                       #154.35 c1
        cmp       ecx, 281                                      #154.3 c1
        jl        ..B1.188      # Prob 10%                      #154.3 c3
                                # LOE rdx rbx rdi r9 ecx r12d r14d
..B1.89:                        # Preds ..B1.88
                                # Execution count [9.00e-01]
        mov       rax, r9                                       #154.3 c3 stall 1
        and       rax, 63                                       #154.3 c5
        test      eax, eax                                      #154.3 c5
        je        ..B1.92       # Prob 50%                      #154.3 c7
                                # LOE rdx rbx rdi r9 eax ecx r12d r14d
..B1.90:                        # Preds ..B1.89
                                # Execution count [9.00e-01]
        test      al, 7                                         #154.3 c1
        jne       ..B1.187      # Prob 10%                      #154.3 c3
                                # LOE rdx rbx rdi r9 eax ecx r12d r14d
..B1.91:                        # Preds ..B1.90
                                # Execution count [0.00e+00]
        neg       eax                                           #154.3 c1
        add       eax, 64                                       #154.3 c3
        shr       eax, 3                                        #154.3 c5
        cmp       ecx, eax                                      #154.3 c7
        cmovl     eax, ecx                                      #154.3 c9
                                # LOE rdx rbx rdi r9 eax ecx r12d r14d
..B1.92:                        # Preds ..B1.91 ..B1.89
                                # Execution count [1.00e+00]
        mov       r8d, ecx                                      #154.3 c1
        sub       r8d, eax                                      #154.3 c3
        and       r8d, 15                                       #154.3 c5
        neg       r8d                                           #154.3 c7
        add       r8d, ecx                                      #154.3 c9
        cmp       eax, 1                                        #154.3 c9
        jb        ..B1.96       # Prob 50%                      #154.3 c11
                                # LOE rdx rbx rdi r9 eax ecx r8d r12d r14d
..B1.93:                        # Preds ..B1.92
                                # Execution count [9.00e-01]
        mov       r10d, 8                                       #154.3 c1
        vmovd     xmm0, eax                                     #154.3 c1
        mov       esi, 255                                      #154.3 c1
        vmovdqu   ymm2, YMMWORD PTR .L_2il0floatpacket.19[rip]  #154.3 c1
        vmovd     xmm1, r10d                                    #154.3 c3
        vpbroadcastd ymm0, xmm0                                 #154.3 c3
        xor       r13d, r13d                                    #154.3 c3
        vpbroadcastd ymm3, xmm1                                 #154.3 c5
        vmovups   zmm1, ZMMWORD PTR .L_2il0floatpacket.17[rip]  #154.46 c5
        movsxd    r11, eax                                      #154.3 c5
        xor       r10d, r10d                                    #154.3 c7
        kmovw     k1, esi                                       #154.3 c7
                                # LOE rdx rbx rdi r9 r10 r11 r13 eax ecx r8d r12d r14d ymm2 ymm3 zmm0 zmm1 k1
..B1.94:                        # Preds ..B1.94 ..B1.93
                                # Execution count [5.00e+00]
        add       r13, 8                                        #154.3 c1
        vpcmpgtd  k2{k1}, zmm0, zmm2                            #154.3 c3
        vpaddd    ymm2, ymm2, ymm3                              #154.3 c3
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r10+rdi]            #154.3 c5
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r10+rdx]            #154.3 c5
        vfmadd231pd zmm5, zmm4, zmm1                            #154.3 c11 stall 2
        vmovupd   ZMMWORD PTR [r10+r9]{k2}, zmm5                #154.3 c17 stall 2
        add       r10, 64                                       #154.3 c17
        cmp       r13, r11                                      #154.3 c17
        jb        ..B1.94       # Prob 82%                      #154.3 c19
                                # LOE rdx rbx rdi r9 r10 r11 r13 eax ecx r8d r12d r14d ymm2 ymm3 zmm0 zmm1 k1
..B1.95:                        # Preds ..B1.94
                                # Execution count [9.00e-01]
        cmp       ecx, eax                                      #154.3 c1
        je        ..B1.104      # Prob 10%                      #154.3 c3
                                # LOE rdx rbx rdi r9 eax ecx r8d r12d r14d
..B1.96:                        # Preds ..B1.95 ..B1.92 ..B1.188
                                # Execution count [0.00e+00]
        lea       r10d, DWORD PTR [16+rax]                      #154.3 c1
        cmp       r8d, r10d                                     #154.3 c3
        jl        ..B1.100      # Prob 50%                      #154.3 c5
                                # LOE rdx rbx rdi r9 eax ecx r8d r12d r14d
..B1.97:                        # Preds ..B1.96
                                # Execution count [9.00e-01]
        movsxd    rax, eax                                      #154.3 c1
        vmovups   zmm0, ZMMWORD PTR .L_2il0floatpacket.17[rip]  #154.46 c1
        movsxd    r10, r8d                                      #154.3 c1
                                # LOE rax rdx rbx rdi r9 r10 ecx r8d r12d r14d zmm0
..B1.98:                        # Preds ..B1.98 ..B1.97
                                # Execution count [5.00e+00]
        vmovups   zmm1, ZMMWORD PTR [rdi+rax*8]                 #154.3 c1
        vmovups   zmm2, ZMMWORD PTR [64+rdi+rax*8]              #154.3 c1
        vfmadd213pd zmm1, zmm0, ZMMWORD PTR [rdx+rax*8]         #154.3 c7 stall 2
        vmovupd   ZMMWORD PTR [r9+rax*8], zmm1                  #154.3 c13 stall 2
        vfmadd213pd zmm2, zmm0, ZMMWORD PTR [64+rdx+rax*8]      #154.3 c13
        vmovupd   ZMMWORD PTR [64+r9+rax*8], zmm2               #154.3 c19 stall 2
        add       rax, 16                                       #154.3 c19
        cmp       rax, r10                                      #154.3 c21
        jb        ..B1.98       # Prob 82%                      #154.3 c23
                                # LOE rax rdx rbx rdi r9 r10 ecx r8d r12d r14d zmm0
..B1.100:                       # Preds ..B1.98 ..B1.96 ..B1.187
                                # Execution count [1.00e+00]
        lea       eax, DWORD PTR [1+r8]                         #154.3 c1
        cmp       eax, ecx                                      #154.3 c3
        ja        ..B1.104      # Prob 50%                      #154.3 c5
                                # LOE rdx rbx rdi r9 ecx r8d r12d r14d
..B1.101:                       # Preds ..B1.100
                                # Execution count [9.00e-01]
        sub       ecx, r8d                                      #154.3 c1
        mov       eax, 8                                        #154.3 c1
        vmovdqu   ymm2, YMMWORD PTR .L_2il0floatpacket.19[rip]  #154.3 c1
        vmovd     xmm0, ecx                                     #154.3 c3
        vmovd     xmm1, eax                                     #154.3 c3
        movsxd    r8, r8d                                       #154.3 c3
        movsxd    rcx, ebx                                      #154.3 c3
        vpbroadcastd ymm0, xmm0                                 #154.3 c5
        mov       ebx, 255                                      #154.3 c5
        lea       r10, QWORD PTR [r9+r8*8]                      #154.3 c5
        vpbroadcastd ymm3, xmm1                                 #154.3 c7
        xor       eax, eax                                      #154.3 c7
        vmovups   zmm1, ZMMWORD PTR .L_2il0floatpacket.17[rip]  #154.46 c7
        lea       r9, QWORD PTR [rdx+r8*8]                      #154.3 c7
        lea       rdi, QWORD PTR [rdi+r8*8]                     #154.3 c9
        sub       rcx, r8                                       #154.3 c9
        xor       edx, edx                                      #154.3 c9
        kmovw     k1, ebx                                       #154.3 c11
                                # LOE rax rdx rcx rdi r9 r10 r12d r14d ymm2 ymm3 zmm0 zmm1 k1
..B1.102:                       # Preds ..B1.102 ..B1.101
                                # Execution count [5.00e+00]
        add       rax, 8                                        #154.3 c1
        vpcmpgtd  k2{k1}, zmm0, zmm2                            #154.3 c3
        vpaddd    ymm2, ymm2, ymm3                              #154.3 c3
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rdx+rdi]            #154.3 c5
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [rdx+r9]             #154.3 c5
        vfmadd231pd zmm5, zmm4, zmm1                            #154.3 c11 stall 2
        vmovupd   ZMMWORD PTR [rdx+r10]{k2}, zmm5               #154.3 c17 stall 2
        add       rdx, 64                                       #154.3 c17
        cmp       rax, rcx                                      #154.3 c17
        jb        ..B1.102      # Prob 82%                      #154.3 c19
                                # LOE rax rdx rcx rdi r9 r10 r12d r14d ymm2 ymm3 zmm0 zmm1 k1
..B1.104:                       # Preds ..B1.102 ..B1.100 ..B1.87 ..B1.95
                                # Execution count [1.00e+00]
..___tag_value_main.55:
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #157.3
..___tag_value_main.56:
                                # LOE rax r12d r14d
..B1.259:                       # Preds ..B1.104
                                # Execution count [1.00e+00]
        mov       QWORD PTR [8+rsp], rax                        #157.3 c1
                                # LOE r12d r14d
..B1.105:                       # Preds ..B1.259
                                # Execution count [1.00e+00]
        mov       rdx, QWORD PTR [5320+rsp]                     #157.3 c1
        mov       DWORD PTR [5440+rsp], r14d                    #157.3 c1
        mov       r8, 0x4000000000000000                        #157.3 c1
        mov       QWORD PTR [5408+rsp], r8                      #157.3 c3
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1070 #157.3 c3
        mov       QWORD PTR [5384+rsp], rdx                     #157.3 c5
        mov       rcx, QWORD PTR [5328+rsp]                     #157.3 c5
        mov       QWORD PTR [5392+rsp], rcx                     #157.3 c9 stall 1
        mov       rbx, QWORD PTR [5336+rsp]                     #157.3 c9
        mov       QWORD PTR [5400+rsp], rbx                     #157.3 c13 stall 1
        xor       eax, eax                                      #157.3 c13
..___tag_value_main.57:
        call      __kmpc_ok_to_fork                             #157.3
..___tag_value_main.58:
                                # LOE eax r12d r14d
..B1.106:                       # Preds ..B1.105
                                # Execution count [1.00e+00]
        test      eax, eax                                      #157.3 c1
        je        ..B1.108      # Prob 50%                      #157.3 c3
                                # LOE r12d r14d
..B1.107:                       # Preds ..B1.106
                                # Execution count [0.00e+00]
        add       rsp, -48                                      #157.3 c1
	.cfi_escape 0x2e, 0x30
        mov       edx, offset flat: L_main_157__par_region1_2.12 #157.3 c1
        lea       rcx, QWORD PTR [5488+rsp]                     #157.3 c3
        lea       r11, QWORD PTR [48+rsp]                       #157.3 c3
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1070 #157.3 c3
        mov       esi, 9                                        #157.3 c3
        lea       rbx, QWORD PTR [-48+rcx]                      #157.3 c5
        mov       QWORD PTR [rsp], rbx                          #157.3 c7
        lea       r8, QWORD PTR [-32+rcx]                       #157.3 c7
        xor       eax, eax                                      #157.3 c7
        lea       r9, QWORD PTR [-56+rcx]                       #157.3 c9
        lea       r10, QWORD PTR [-40+rcx]                      #157.3 c9
        mov       QWORD PTR [8+rsp], r10                        #157.3 c11
        lea       r13, QWORD PTR [64+r11]                       #157.3 c11
        mov       QWORD PTR [16+rsp], r11                       #157.3 c13
        lea       r15, QWORD PTR [-5312+rcx]                    #157.3 c13
        mov       QWORD PTR [24+rsp], r13                       #157.3 c15
        lea       rbx, QWORD PTR [-5248+rcx]                    #157.3 c15
        mov       QWORD PTR [32+rsp], r15                       #157.3 c17
        mov       QWORD PTR [40+rsp], rbx                       #157.3 c17
..___tag_value_main.60:
        call      __kmpc_fork_call                              #157.3
..___tag_value_main.61:
                                # LOE r12d r14d
..B1.261:                       # Preds ..B1.107
                                # Execution count [0.00e+00]
        add       rsp, 48                                       #157.3 c1
	.cfi_escape 0x2e, 0x00
        jmp       ..B1.111      # Prob 100%                     #157.3 c1
                                # LOE r12d r14d
..B1.108:                       # Preds ..B1.106
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1070 #157.3 c1
        mov       esi, DWORD PTR [5424+rsp]                     #157.3 c1
        xor       eax, eax                                      #157.3 c1
..___tag_value_main.63:
        call      __kmpc_serialized_parallel                    #157.3
..___tag_value_main.64:
                                # LOE r12d r14d
..B1.109:                       # Preds ..B1.108
                                # Execution count [0.00e+00]
        add       rsp, -48                                      #157.3 c1
	.cfi_escape 0x2e, 0x30
        mov       esi, offset flat: ___kmpv_zeromain_1          #157.3 c1
        lea       rdi, QWORD PTR [5472+rsp]                     #157.3 c3
        lea       rbx, QWORD PTR [48+rsp]                       #157.3 c3
        lea       rdx, QWORD PTR [16+rdi]                       #157.3 c5
        lea       r10, QWORD PTR [64+rbx]                       #157.3 c5
        lea       rax, QWORD PTR [-40+rdx]                      #157.3 c7
        mov       QWORD PTR [rsp], rax                          #157.3 c9
        lea       rcx, QWORD PTR [-32+rdx]                      #157.3 c9
        mov       QWORD PTR [8+rsp], rbx                        #157.3 c11
        lea       r8, QWORD PTR [-56+rdx]                       #157.3 c11
        mov       QWORD PTR [16+rsp], r10                       #157.3 c13
        lea       r9, QWORD PTR [-48+rdx]                       #157.3 c13
        lea       r11, QWORD PTR [-5272+rax]                    #157.3 c15
        mov       QWORD PTR [24+rsp], r11                       #157.3 c17
        lea       r13, QWORD PTR [-5208+rax]                    #157.3 c17
        mov       QWORD PTR [32+rsp], r13                       #157.3 c19
..___tag_value_main.66:
        call      L_main_157__par_region1_2.12                  #157.3
..___tag_value_main.67:
                                # LOE r12d r14d
..B1.262:                       # Preds ..B1.109
                                # Execution count [0.00e+00]
        add       rsp, 48                                       #157.3 c1
	.cfi_escape 0x2e, 0x00
                                # LOE r12d r14d
..B1.110:                       # Preds ..B1.262
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1070 #157.3 c1
        mov       esi, DWORD PTR [5424+rsp]                     #157.3 c1
        xor       eax, eax                                      #157.3 c1
..___tag_value_main.69:
        call      __kmpc_end_serialized_parallel                #157.3
..___tag_value_main.70:
                                # LOE r12d r14d
..B1.111:                       # Preds ..B1.261 ..B1.110
                                # Execution count [1.00e+00]
..___tag_value_main.71:
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #157.3
..___tag_value_main.72:
                                # LOE rax r12d r14d
..B1.263:                       # Preds ..B1.111
                                # Execution count [1.00e+00]
        mov       QWORD PTR [5416+rsp], rax                     #157.3 c1
                                # LOE r12d r14d
..B1.112:                       # Preds ..B1.263
                                # Execution count [1.00e+00]
        mov       edi, offset flat: _ZSt4cerr                   #157.3 c1
        mov       esi, offset flat: .L_2__STRING.2              #157.3 c1
..___tag_value_main.73:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #157.3
..___tag_value_main.74:
                                # LOE rax r12d r14d
..B1.114:                       # Preds ..B1.112
                                # Execution count [1.00e+00]
        mov       rdi, rax                                      #157.3 c1
        mov       esi, r14d                                     #157.3 c1
..___tag_value_main.75:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, int)
        call      _ZNSolsEi                                     #157.3
..___tag_value_main.76:
                                # LOE rax r12d
..B1.116:                       # Preds ..B1.114
                                # Execution count [1.00e+00]
        mov       rdi, rax                                      #157.3 c1
        mov       esi, offset flat: .L_2__STRING.1              #157.3 c1
..___tag_value_main.77:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #157.3
..___tag_value_main.78:
                                # LOE rax r12d
..B1.117:                       # Preds ..B1.116
                                # Execution count [1.00e+00]
        mov       rdi, rax                                      #157.3 c1
                                # LOE rdi r12d
..B1.118:                       # Preds ..B1.117
                                # Execution count [1.00e+00]
        mov       rcx, QWORD PTR [5416+rsp]                     #157.3 c1
        mov       rax, 0x20c49ba5e353f7cf                       #157.3 c1
        sub       rcx, QWORD PTR [8+rsp]                        #157.3 c5 stall 1
        imul      rcx                                           #157.3 c7
        sar       rcx, 63                                       #157.3 c7
        sar       rdx, 7                                        #157.3 c11 stall 1
        sub       rdx, rcx                                      #157.3 c13
        mov       rsi, rdx                                      #157.3 c15
..___tag_value_main.79:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, long)
        call      _ZNSolsEl                                     #157.3
..___tag_value_main.80:
                                # LOE rax r12d
..B1.120:                       # Preds ..B1.118
                                # Execution count [1.00e+00]
        mov       rdi, rax                                      #157.3 c1
        mov       esi, offset flat: .L_2__STRING.3              #157.3 c1
..___tag_value_main.81:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #157.3
..___tag_value_main.82:
                                # LOE r12d
..B1.122:                       # Preds ..B1.120
                                # Execution count [1.00e+00]
        mov       rdx, QWORD PTR [256+rsp]                      #160.9 c1
        mov       rax, QWORD PTR [264+rsp]                      #160.9 c1
        xor       ebx, ebx                                      #160.3 c1
        sub       rax, rdx                                      #160.9 c5 stall 1
        mov       r13, QWORD PTR [5336+rsp]                     #160.20 c5
        sar       rax, 3                                        #160.3 c7
        test      rax, rax                                      #160.3 c9
        jbe       ..B1.127      # Prob 4%                       #160.3 c11
                                # LOE rax rdx rbx r13 r12d
..B1.124:                       # Preds ..B1.122 ..B1.125
                                # Execution count [2.79e+00]
        vmovsd    xmm0, QWORD PTR [rdx+rbx*8]                   #160.3 c1
        vcmpsd    k0, xmm0, QWORD PTR [r13+rbx*8], 4            #160.3 c7 stall 2
        kortestw  k0, k0                                        #160.3 c9
        jne       ..B1.176      # Prob 20%                      #160.3 c11
                                # LOE rax rdx rbx r13 r12d
..B1.125:                       # Preds ..B1.124
                                # Execution count [2.23e+00]
        add       rbx, 1                                        #160.3 c1
        cmp       rbx, rax                                      #160.3 c3
        jb        ..B1.124      # Prob 82%                      #160.3 c5
                                # LOE rax rdx rbx r13 r12d
..B1.127:                       # Preds ..B1.125 ..B1.122
                                # Execution count [1.00e+00]
        test      r12d, r12d                                    #162.7 c1
        je        ..B1.132      # Prob 50%                      #162.7 c3
                                # LOE r13
..B1.128:                       # Preds ..B1.127
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5320+rsp]                     #163.5 c1
..___tag_value_main.83:
#       hbw_free(void *)
        call      hbw_free                                      #163.5
..___tag_value_main.84:
                                # LOE
..B1.129:                       # Preds ..B1.128
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5328+rsp]                     #164.5 c1
..___tag_value_main.85:
#       hbw_free(void *)
        call      hbw_free                                      #164.5
..___tag_value_main.86:
                                # LOE
..B1.130:                       # Preds ..B1.129
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5336+rsp]                     #165.5 c1
..___tag_value_main.87:
#       hbw_free(void *)
        call      hbw_free                                      #165.5
..___tag_value_main.88:
                                # LOE
..B1.131:                       # Preds ..B1.130
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5344+rsp]                     #166.5 c1
..___tag_value_main.89:
#       hbw_free(void *)
        call      hbw_free                                      #166.5
..___tag_value_main.90:
        jmp       ..B1.136      # Prob 100%                     #166.5 c3
                                # LOE
..B1.132:                       # Preds ..B1.127
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5320+rsp]                     #168.5 c1
#       free(void *)
        call      free                                          #168.5 c3
                                # LOE r13
..B1.133:                       # Preds ..B1.132
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5328+rsp]                     #169.5 c1
#       free(void *)
        call      free                                          #169.5 c3
                                # LOE r13
..B1.134:                       # Preds ..B1.133
                                # Execution count [5.00e-01]
        mov       rdi, r13                                      #170.5 c1
#       free(void *)
        call      free                                          #170.5 c3
                                # LOE
..B1.135:                       # Preds ..B1.134
                                # Execution count [5.00e-01]
        mov       rdi, QWORD PTR [5344+rsp]                     #171.5 c1
#       free(void *)
        call      free                                          #171.5 c3
                                # LOE
..B1.136:                       # Preds ..B1.135 ..B1.131
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [256+rsp]                      #162.3 c1
..___tag_value_main.91:
#       std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *)
        call      _ZNSt12_Vector_baseIdSaIdEED1Ev               #162.3
..___tag_value_main.92:
                                # LOE
..B1.137:                       # Preds ..B1.136
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [40+rsp]                       #162.3 c1
..___tag_value_main.93:
#       std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *)
        call      _ZNSt12_Vector_baseIdSaIdEED1Ev               #162.3
..___tag_value_main.94:
                                # LOE
..B1.138:                       # Preds ..B1.137
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [16+rsp]                       #162.3 c1
..___tag_value_main.95:
#       std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *)
        call      _ZNSt12_Vector_baseIdSaIdEED1Ev               #162.3
..___tag_value_main.96:
                                # LOE
..B1.139:                       # Preds ..B1.138
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.976 #173.1 c1
        xor       eax, eax                                      #173.1 c1
..___tag_value_main.97:
        call      __kmpc_end                                    #173.1
..___tag_value_main.98:
                                # LOE
..B1.140:                       # Preds ..B1.139
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [5280+rsp]                     #173.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [5288+rsp]                     #173.1[spill] c1
	.cfi_restore 14
        xor       eax, eax                                      #173.1 c1
        mov       r13, QWORD PTR [5296+rsp]                     #173.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [5304+rsp]                     #173.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [5312+rsp]                     #173.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #173.1 c11
        pop       rbp                                           #173.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #173.1
	.cfi_def_cfa 6, 16
                                # LOE
L_main_157__par_region1_2.12:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 16 + rbp
# parameter 8: 24 + rbp
# parameter 9: 32 + rbp
# parameter 10: 40 + rbp
# parameter 11: 48 + rbp
..B1.141:                       # Preds ..B1.0
                                # Execution count [1.00e+00]
        push      rbp                                           #157.3
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #157.3
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #157.3
        sub       rsp, 5504                                     #157.3 c1
        mov       QWORD PTR [5312+rsp], rbx                     #157.3[spill] c3
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x40, 0xff, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdx]                          #157.3 c3
        mov       QWORD PTR [5280+rsp], r15                     #157.3[spill] c5
        vbroadcastsd zmm0, QWORD PTR [rcx]                      #157.3 c7
        mov       QWORD PTR [5288+rsp], r14                     #157.3[spill] c7
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xff, 0xff, 0xff, 0x22
        mov       r14d, DWORD PTR [rdi]                         #157.3 c9
        mov       QWORD PTR [5296+rsp], r13                     #157.3[spill] c13 stall 1
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x30, 0xff, 0xff, 0xff, 0x22
        mov       r13, r9                                       #157.3 c13
        mov       QWORD PTR [5304+rsp], r12                     #157.3[spill] c13
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x38, 0xff, 0xff, 0xff, 0x22
        mov       r12, r8                                       #157.3 c13
        vmovups   ZMMWORD PTR [rsp], zmm0                       #157.3[spill] c15
        test      ebx, ebx                                      #157.3 c15
        jle       ..B1.149      # Prob 10%                      #157.3 c17
                                # LOE r12 r13 ebx r14d
..B1.142:                       # Preds ..B1.141
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #157.3 c1
        mov       DWORD PTR [64+rsp], eax                       #157.3 c3
        add       ebx, -1                                       #157.3 c3
        mov       DWORD PTR [72+rsp], eax                       #157.3 c3
        mov       r11d, 8                                       #157.3 c3
        mov       DWORD PTR [68+rsp], ebx                       #157.3 c5
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1041 #157.3 c5
        mov       DWORD PTR [76+rsp], r11d                      #157.3 c5
        add       rsp, -32                                      #157.3 c5
	.cfi_escape 0x2e, 0x20
        lea       r10, QWORD PTR [108+rsp]                      #157.3 c7
        mov       QWORD PTR [rsp], r10                          #157.3 c9
        mov       esi, r14d                                     #157.3 c9
        mov       DWORD PTR [8+rsp], r11d                       #157.3 c9
        mov       edx, 34                                       #157.3 c9
        mov       DWORD PTR [16+rsp], 1                         #157.3 c11
        lea       rcx, QWORD PTR [104+rsp]                      #157.3 c11
        lea       r8, QWORD PTR [96+rsp]                        #157.3 c13
        lea       r9, QWORD PTR [100+rsp]                       #157.3 c13
        call      __kmpc_for_static_init_4                      #157.3 c15
                                # LOE r12 r13 ebx r14d
..B1.264:                       # Preds ..B1.142
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #157.3 c1
	.cfi_escape 0x2e, 0x00
                                # LOE r12 r13 ebx r14d
..B1.143:                       # Preds ..B1.264
                                # Execution count [0.00e+00]
        movsxd    rdi, DWORD PTR [64+rsp]                       #157.3 c1
        movsxd    rbx, ebx                                      #157.3 c1
        mov       eax, DWORD PTR [68+rsp]                       #157.3 c1
        cmp       rdi, rbx                                      #157.3 c5 stall 1
        jg        ..B1.148      # Prob 50%                      #157.3 c7
                                # LOE rdi r12 r13 eax ebx r14d
..B1.144:                       # Preds ..B1.143
                                # Execution count [0.00e+00]
        cmp       eax, ebx                                      #157.3 c1
        cmovl     ebx, eax                                      #157.3 c3
        movsxd    rbx, ebx                                      #157.3 c5
        cmp       rdi, rbx                                      #157.3 c7
        jg        ..B1.148      # Prob 50%                      #157.3 c9
                                # LOE rbx rdi r12 r13 r14d
..B1.145:                       # Preds ..B1.144
                                # Execution count [9.00e-01]
        mov       rax, QWORD PTR [16+rbp]                       #157.3 c1
        mov       rcx, QWORD PTR [r12]                          #157.3 c1
        mov       rdx, QWORD PTR [r13]                          #157.3 c5 stall 1
        mov       rax, QWORD PTR [rax]                          #157.3 c5
        vmovups   zmm1, ZMMWORD PTR [rsp]                       #157.3[spill] c9 stall 1
                                # LOE rax rdx rcx rbx rdi r14d zmm1
..B1.146:                       # Preds ..B1.146 ..B1.145
                                # Execution count [5.00e+00]
        vmovups   zmm0, ZMMWORD PTR [rcx+rdi*8]                 #157.3 c1
        vfmadd213pd zmm0, zmm1, ZMMWORD PTR [rdx+rdi*8]         #157.3 c7 stall 2
        vmovups   ZMMWORD PTR [rax+rdi*8], zmm0                 #157.3 c13 stall 2
        add       rdi, 8                                        #157.3 c13
        cmp       rdi, rbx                                      #157.3 c15
        jle       ..B1.146      # Prob 82%                      #157.3 c17
                                # LOE rax rdx rcx rbx rdi r14d zmm1
..B1.148:                       # Preds ..B1.146 ..B1.143 ..B1.144
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1041 #157.3 c1
        mov       esi, r14d                                     #157.3 c1
        call      __kmpc_for_static_fini                        #157.3 c3
                                # LOE r14d
..B1.149:                       # Preds ..B1.148 ..B1.141
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1062 #157.3 c1
        mov       esi, r14d                                     #157.3 c1
        xor       eax, eax                                      #157.3 c3
..___tag_value_main.118:
        call      __kmpc_barrier                                #157.3
..___tag_value_main.119:
                                # LOE
..B1.150:                       # Preds ..B1.149
                                # Execution count [0.00e+00]
        xor       eax, eax                                      #157.3 c1
        mov       r15, QWORD PTR [5280+rsp]                     #157.3[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [5288+rsp]                     #157.3[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [5296+rsp]                     #157.3[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [5304+rsp]                     #157.3[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [5312+rsp]                     #157.3[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #157.3 c11
        pop       rbp                                           #157.3
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #157.3
	.cfi_def_cfa 6, 16
                                # LOE
L_main_135__par_loop0_2.11:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 16 + rbp
..B1.151:                       # Preds ..B1.0
                                # Execution count [1.00e+00]
        push      rbp                                           #135.3
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #135.3
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #135.3
        sub       rsp, 5504                                     #135.3 c1
        mov       QWORD PTR [5280+rsp], r15                     #135.3[spill] c3
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xff, 0xff, 0xff, 0x22
        mov       r15d, DWORD PTR [rdx]                         #135.3 c3
        mov       QWORD PTR [5312+rsp], rbx                     #135.3[spill] c5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x40, 0xff, 0xff, 0xff, 0x22
        mov       rbx, r9                                       #135.3 c5
        mov       QWORD PTR [5288+rsp], r14                     #135.3[spill] c7
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xff, 0xff, 0xff, 0x22
        mov       r14d, DWORD PTR [rdi]                         #135.3 c7
        mov       QWORD PTR [5296+rsp], r13                     #135.3[spill] c9
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x30, 0xff, 0xff, 0xff, 0x22
        mov       r13, rcx                                      #135.3 c9
        mov       QWORD PTR [5304+rsp], r12                     #135.3[spill] c11
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x38, 0xff, 0xff, 0xff, 0x22
        mov       r12, r8                                       #135.3 c11
        test      r15d, r15d                                    #135.3 c11
        jle       ..B1.162      # Prob 10%                      #135.3 c13
                                # LOE rbx r12 r13 r14d r15d
..B1.152:                       # Preds ..B1.151
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #135.3 c1
        mov       DWORD PTR [8+rsp], eax                        #135.3 c3
        add       r15d, -1                                      #135.3 c3
        mov       DWORD PTR [16+rsp], eax                       #135.3 c3
        mov       r11d, 1                                       #135.3 c3
        mov       DWORD PTR [12+rsp], r15d                      #135.3 c5
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1016 #135.3 c5
        mov       DWORD PTR [20+rsp], r11d                      #135.3 c5
        add       rsp, -32                                      #135.3 c5
	.cfi_escape 0x2e, 0x20
        lea       r10, QWORD PTR [52+rsp]                       #135.3 c7
        mov       QWORD PTR [rsp], r10                          #135.3 c9
        mov       esi, r14d                                     #135.3 c9
        mov       DWORD PTR [8+rsp], r11d                       #135.3 c9
        mov       edx, 34                                       #135.3 c9
        mov       DWORD PTR [16+rsp], r11d                      #135.3 c11
        lea       rcx, QWORD PTR [48+rsp]                       #135.3 c11
        lea       r8, QWORD PTR [40+rsp]                        #135.3 c13
        lea       r9, QWORD PTR [44+rsp]                        #135.3 c13
        call      __kmpc_for_static_init_4                      #135.3 c15
                                # LOE rbx r12 r13 r14d r15d
..B1.265:                       # Preds ..B1.152
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #135.3 c1
	.cfi_escape 0x2e, 0x00
                                # LOE rbx r12 r13 r14d r15d
..B1.153:                       # Preds ..B1.265
                                # Execution count [0.00e+00]
        mov       r9d, DWORD PTR [8+rsp]                        #135.3 c1
        mov       eax, DWORD PTR [12+rsp]                       #135.3 c1
        cmp       r9d, r15d                                     #135.3 c5 stall 1
        jg        ..B1.161      # Prob 50%                      #135.3 c7
                                # LOE rbx r12 r13 eax r9d r14d r15d
..B1.154:                       # Preds ..B1.153
                                # Execution count [0.00e+00]
        cmp       eax, r15d                                     #135.3 c1
        cmovl     r15d, eax                                     #135.3 c3
        cmp       r9d, r15d                                     #135.3 c5
        jg        ..B1.161      # Prob 50%                      #135.3 c7
                                # LOE rbx r12 r13 r9d r14d r15d
..B1.155:                       # Preds ..B1.154
                                # Execution count [9.00e-01]
        sub       r15d, r9d                                     #135.3 c1
        mov       rdx, QWORD PTR [16+rbp]                       #135.3 c1
        mov       r8, QWORD PTR [rbx]                           #135.3 c1
        mov       r10d, 1                                       #135.3 c1
        xor       ebx, ebx                                      #135.3 c3
        lea       eax, DWORD PTR [1+r15]                        #135.3 c5
        mov       rdi, QWORD PTR [r12]                          #135.3 c5
        mov       r11d, eax                                     #135.3 c7
        mov       rcx, QWORD PTR [r13]                          #135.3 c7
        shr       r11d, 31                                      #135.3 c9
        mov       rdx, QWORD PTR [rdx]                          #135.3 c9
        lea       r15d, DWORD PTR [1+r15+r11]                   #135.3 c11
        sar       r15d, 1                                       #135.3 c13
        test      r15d, r15d                                    #135.3 c15
        jbe       ..B1.159      # Prob 0%                       #135.3 c17
                                # LOE rdx rcx rdi r8 eax ebx r9d r10d r14d r15d
..B1.156:                       # Preds ..B1.155
                                # Execution count [9.00e-01]
        mov       DWORD PTR [rsp], r14d                         #135.3[spill] c1
        movsxd    r9, r9d                                       #135.3 c1
        vxorpd    xmm0, xmm0, xmm0                              #135.3 c1
        mov       r13, r9                                       #135.3 c3
        lea       r12, QWORD PTR [r8+r9*8]                      #135.3 c3
        lea       r11, QWORD PTR [rdi+r9*8]                     #135.3 c3
        shl       r13, 4                                        #135.3 c5
        lea       r10, QWORD PTR [rcx+r9*8]                     #135.3 c5
        add       r13, rdx                                      #135.3 c7
        .align    16,0x90
                                # LOE rdx rcx rdi r8 r10 r11 r12 r13 eax ebx r9d r15d xmm0
..B1.157:                       # Preds ..B1.157 ..B1.156
                                # Execution count [2.50e+00]
        lea       esi, DWORD PTR [rbx+rbx]                      #135.3 c1
        add       ebx, 1                                        #135.3 c1
        movsxd    rsi, esi                                      #135.3 c3
        vmovsd    QWORD PTR [r12+rsi*8], xmm0                   #135.3 c5
        mov       r14, rsi                                      #135.3 c5
        vmovsd    QWORD PTR [r11+rsi*8], xmm0                   #135.3 c5
        shl       r14, 4                                        #135.3 c7
        vmovsd    QWORD PTR [r10+rsi*8], xmm0                   #135.3 c11 stall 1
        cmp       ebx, r15d                                     #135.3 c11
        vmovsd    QWORD PTR [8+r13+r14], xmm0                   #135.3 c11
        vmovsd    QWORD PTR [r13+r14], xmm0                     #135.3 c17 stall 2
        vmovsd    QWORD PTR [8+r12+rsi*8], xmm0                 #135.3 c17
        vmovsd    QWORD PTR [8+r11+rsi*8], xmm0                 #135.3 c23 stall 2
        vmovsd    QWORD PTR [8+r10+rsi*8], xmm0                 #135.3 c23
        vmovsd    QWORD PTR [24+r13+r14], xmm0                  #135.3 c29 stall 2
        vmovsd    QWORD PTR [16+r13+r14], xmm0                  #135.3 c29
        jb        ..B1.157      # Prob 63%                      #135.3 c29
                                # LOE rdx rcx rdi r8 r10 r11 r12 r13 eax ebx r9d r15d xmm0
..B1.158:                       # Preds ..B1.157
                                # Execution count [9.00e-01]
        mov       r14d, DWORD PTR [rsp]                         #[spill] c1
        lea       r10d, DWORD PTR [1+rbx+rbx]                   #135.3 c1
                                # LOE rdx rcx rdi r8 eax r9d r10d r14d
..B1.159:                       # Preds ..B1.158 ..B1.155
                                # Execution count [9.00e-01]
        lea       ebx, DWORD PTR [-1+r10]                       #135.3 c1
        cmp       ebx, eax                                      #135.3 c3
        jae       ..B1.161      # Prob 0%                       #135.3 c5
                                # LOE rdx rcx rdi r8 r9d r10d r14d
..B1.160:                       # Preds ..B1.159
                                # Execution count [9.00e-01]
        movsxd    r9, r9d                                       #135.3 c1
        movsxd    r10, r10d                                     #135.3 c1
        xor       eax, eax                                      #135.3 c3
        add       r9, r10                                       #135.3 c3
        mov       QWORD PTR [-8+r8+r9*8], rax                   #135.3 c5
        mov       QWORD PTR [-8+rdi+r9*8], rax                  #135.3 c5
        mov       QWORD PTR [-8+rcx+r9*8], rax                  #135.3 c7
        shl       r9, 4                                         #135.3 c7
        mov       QWORD PTR [-8+r9+rdx], rax                    #135.3 c9
        mov       QWORD PTR [-16+r9+rdx], rax                   #135.3 c9
                                # LOE r14d
..B1.161:                       # Preds ..B1.153 ..B1.154 ..B1.159 ..B1.160
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.1016 #135.3 c1
        mov       esi, r14d                                     #135.3 c1
        call      __kmpc_for_static_fini                        #135.3 c3
                                # LOE
..B1.162:                       # Preds ..B1.161 ..B1.151
                                # Execution count [0.00e+00]
        xor       eax, eax                                      #135.3 c1
        mov       r15, QWORD PTR [5280+rsp]                     #135.3[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [5288+rsp]                     #135.3[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [5296+rsp]                     #135.3[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [5304+rsp]                     #135.3[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [5312+rsp]                     #135.3[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #135.3 c11
        pop       rbp                                           #135.3
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #135.3
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x40, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x38, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x30, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.163:                       # Preds ..B1.4
                                # Execution count [1.60e-01]: Infreq
        mov       rcx, QWORD PTR [16+r15]                       #113.31 c1
        call      __intel_sse4_atol                             #113.31 c3
                                # LOE rax rbx r14d
..B1.164:                       # Preds ..B1.163
                                # Execution count [1.60e-01]: Infreq
        mov       r12d, eax                                     #113.31 c1
        mov       edx, 1                                        #113.18 c1
        test      r12d, r12d                                    #113.18 c3
        mov       ecx, 0                                        #117.17 c3
        mov       QWORD PTR [5320+rsp], rcx                     #117.17 c5
        cmovne    r12d, edx                                     #113.18 c5
        mov       QWORD PTR [5328+rsp], rcx                     #118.17 c5
        test      r12d, r12d                                    #123.7 c7
        mov       QWORD PTR [5336+rsp], rcx                     #119.17 c7
        mov       QWORD PTR [5344+rsp], rcx                     #121.19 c7
        jne       ..B1.6        # Prob 50%                      #123.7 c9
                                # LOE rbx r12d r14d
..B1.165:                       # Preds ..B1.164
                                # Execution count [5.00e-01]: Infreq
        movsxd    rbx, ebx                                      #129.40 c1
        lea       rdi, QWORD PTR [5320+rsp]                     #129.5 c1
        mov       esi, 64                                       #129.5 c1
        lea       r13, QWORD PTR [rbx*8]                        #129.51 c3
        mov       rdx, r13                                      #129.5 c5
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #129.5 c7
                                # LOE rbx r13 r12d r14d
..B1.166:                       # Preds ..B1.165
                                # Execution count [5.00e-01]: Infreq
        lea       rdi, QWORD PTR [5328+rsp]                     #130.5 c1
        mov       esi, 64                                       #130.5 c1
        mov       rdx, r13                                      #130.5 c1
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #130.5 c3
                                # LOE rbx r13 r12d r14d
..B1.167:                       # Preds ..B1.166
                                # Execution count [5.00e-01]: Infreq
        lea       rdi, QWORD PTR [5336+rsp]                     #131.5 c1
        mov       esi, 64                                       #131.5 c1
        mov       rdx, r13                                      #131.5 c1
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #131.5 c3
                                # LOE rbx r13 r12d r14d
..B1.168:                       # Preds ..B1.167
                                # Execution count [5.00e-01]: Infreq
        mov       rdx, rbx                                      #132.5 c1
        lea       rdi, QWORD PTR [5344+rsp]                     #132.5 c1
        mov       esi, 64                                       #132.5 c1
        shl       rdx, 4                                        #132.5 c3
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #132.5 c5
        jmp       ..B1.10       # Prob 100%                     #132.5 c5
                                # LOE rbx r13 r12d r14d
..___tag_value_main.4:
..B1.169:                       # Preds ..B1.131 ..B1.130 ..B1.129 ..B1.128 ..B1.184
                                #       ..B1.182 ..B1.180 ..B1.178 ..B1.176 ..B1.120
                                #       ..B1.118 ..B1.116 ..B1.114 ..B1.112
                                # Execution count [0.00e+00]: Infreq
        mov       QWORD PTR [8+rsp], rax                        #143.75 c1
                                # LOE
..B1.170:                       # Preds ..B1.169
                                # Execution count [0.00e+00]: Infreq
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.872 #143.75 c1
        call      __kmpc_global_thread_num                      #143.75 c3
                                # LOE eax
..B1.267:                       # Preds ..B1.170
                                # Execution count [0.00e+00]: Infreq
        lea       rdi, QWORD PTR [256+rsp]                      #143.75 c1
        mov       DWORD PTR [5424+rsp], eax                     #143.75 c1
#       std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
        call      _ZNSt6vectorIdSaIdEED1Ev                      #143.75 c3
                                # LOE
..B1.172:                       # Preds ..B1.267 ..B1.268
                                # Execution count [0.00e+00]: Infreq
        lea       rdi, QWORD PTR [40+rsp]                       #143.54 c1
#       std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
        call      _ZNSt6vectorIdSaIdEED1Ev                      #143.54 c3
                                # LOE
..B1.174:                       # Preds ..B1.172 ..B1.269
                                # Execution count [0.00e+00]: Infreq
        lea       rdi, QWORD PTR [16+rsp]                       #143.33 c1
#       std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
        call      _ZNSt6vectorIdSaIdEED1Ev                      #143.33 c3
                                # LOE
..B1.175:                       # Preds ..B1.174
                                # Execution count [0.00e+00]: Infreq
        mov       rdi, QWORD PTR [8+rsp]                        #143.33 c1
..___tag_value_main.153:
        call      _Unwind_Resume                                #143.33
..___tag_value_main.154:
                                # LOE
..B1.176:                       # Preds ..B1.124
                                # Execution count [5.57e-01]: Infreq
        mov       edi, offset flat: _ZSt4cout                   #160.3 c1
        mov       esi, offset flat: .L_2__STRING.0              #160.3 c1
..___tag_value_main.155:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #160.3
..___tag_value_main.156:
                                # LOE rbx r13
..B1.178:                       # Preds ..B1.176
                                # Execution count [5.57e-01]: Infreq
        mov       rax, QWORD PTR [256+rsp]                      #160.3 c1
        mov       edi, offset flat: _ZSt4cout                   #160.3 c1
        vmovsd    xmm0, QWORD PTR [rax+rbx*8]                   #160.3 c5 stall 1
..___tag_value_main.157:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #160.3
..___tag_value_main.158:
                                # LOE rax rbx r13
..B1.180:                       # Preds ..B1.178
                                # Execution count [5.57e-01]: Infreq
        mov       rdi, rax                                      #160.3 c1
        mov       esi, offset flat: .L_2__STRING.1              #160.3 c1
..___tag_value_main.159:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #160.3
..___tag_value_main.160:
                                # LOE rax rbx r13
..B1.182:                       # Preds ..B1.180
                                # Execution count [5.57e-01]: Infreq
        vmovsd    xmm0, QWORD PTR [r13+rbx*8]                   #160.3 c1
        mov       rdi, rax                                      #160.3 c1
..___tag_value_main.161:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #160.3
..___tag_value_main.162:
                                # LOE rax
..B1.184:                       # Preds ..B1.182
                                # Execution count [5.57e-01]: Infreq
        mov       rdi, rax                                      #160.3 c1
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #160.3 c1
..___tag_value_main.163:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #160.3
..___tag_value_main.164:
                                # LOE
..B1.186:                       # Preds ..B1.184
                                # Execution count [5.57e-01]: Infreq
        mov       edi, 1                                        #160.3 c1
#       exit(int)
        call      exit                                          #160.3 c3
                                # LOE
..B1.187:                       # Preds ..B1.90
                                # Execution count [9.00e-02]: Infreq
        xor       r8d, r8d                                      #154.3 c1
        jmp       ..B1.100      # Prob 100%                     #154.3 c1
                                # LOE rdx rbx rdi r9 ecx r8d r12d r14d
..B1.188:                       # Preds ..B1.88
                                # Execution count [9.00e-02]: Infreq
        mov       r8d, ecx                                      #154.3 c1
        xor       eax, eax                                      #154.3 c1
        and       r8d, -16                                      #154.3 c3
        jmp       ..B1.96       # Prob 100%                     #154.3 c3
                                # LOE rdx rbx rdi r9 eax ecx r8d r12d r14d
..B1.189:                       # Preds ..B1.74
                                # Execution count [1.00e+00]: Infreq
        cmp       rbx, 8                                        #143.75 c1
        jl        ..B1.197      # Prob 10%                      #143.75 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.190:                       # Preds ..B1.189
                                # Execution count [1.00e+00]: Infreq
        mov       rax, rbx                                      #143.75 c1
        xor       ecx, ecx                                      #143.75 c1
        vpxorq    zmm0, zmm0, zmm0                              #143.75 c1
        and       rax, -8                                       #143.75 c3
                                # LOE rax rcx rbx rdi r13 r15 r12d r14d zmm0
..B1.191:                       # Preds ..B1.191 ..B1.190
                                # Execution count [5.56e+00]: Infreq
        vmovupd   ZMMWORD PTR [rdi+rcx*8], zmm0                 #143.75 c1
        add       rcx, 8                                        #143.75 c1
        cmp       rcx, rax                                      #143.75 c3
        jb        ..B1.191      # Prob 82%                      #143.75 c5
                                # LOE rax rcx rbx rdi r13 r15 r12d r14d zmm0
..B1.193:                       # Preds ..B1.191 ..B1.197
                                # Execution count [1.11e+00]: Infreq
        lea       rcx, QWORD PTR [1+rax]                        #143.75 c1
        xor       r8d, r8d                                      #143.75 c1
        cmp       rcx, rbx                                      #143.75 c3
        ja        ..B1.76       # Prob 10%                      #143.75 c5
                                # LOE rax rbx rdi r8 r13 r15 r12d r14d
..B1.194:                       # Preds ..B1.193
                                # Execution count [1.00e+00]: Infreq
        lea       rcx, QWORD PTR [rdi+rax*8]                    #143.75 c1
        sub       rbx, rax                                      #143.75 c1
        xor       r9d, r9d                                      #143.75 c1
                                # LOE rcx rbx r8 r9 r13 r15 r12d r14d
..B1.195:                       # Preds ..B1.195 ..B1.194
                                # Execution count [5.56e+00]: Infreq
        mov       QWORD PTR [rcx+r8*8], r9                      #143.75 c1
        add       r8, 1                                         #143.75 c1
        cmp       r8, rbx                                       #143.75 c3
        jb        ..B1.195      # Prob 82%                      #143.75 c5
        jmp       ..B1.76       # Prob 100%                     #143.75 c5
                                # LOE rcx rbx r8 r9 r13 r15 r12d r14d
..B1.197:                       # Preds ..B1.189
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #143.75 c1
        jmp       ..B1.193      # Prob 100%                     #143.75 c1
                                # LOE rax rbx rdi r13 r15 r12d r14d
..B1.198:                       # Preds ..B1.71
                                # Execution count [5.00e-02]: Infreq
        mov       r8, 0x1fffffffffffffff                        #143.75 c1
        xor       ecx, ecx                                      #143.65 c1
        mov       QWORD PTR [272+rsp], rcx                      #143.65 c3
        cmp       rbx, r8                                       #143.75 c3
        mov       QWORD PTR [264+rsp], rcx                      #143.65 c3
        mov       QWORD PTR [256+rsp], rcx                      #143.65 c5
        ja        ..B1.204      # Prob 0%                       #143.75 c5
                                # LOE rbx r13 r12d r14d
..B1.199:                       # Preds ..B1.198
                                # Execution count [4.98e-02]: Infreq
        mov       rdi, r13                                      #143.75 c1
..___tag_value_main.165:
#       operator new(std::size_t)
        call      _Znwm                                         #143.75
..___tag_value_main.166:
                                # LOE rax rbx r13 r12d r14d
..B1.200:                       # Preds ..B1.199
                                # Execution count [4.98e-02]: Infreq
        mov       rdi, rax                                      #143.75 c1
        jmp       ..B1.73       # Prob 100%                     #143.75 c1
                                # LOE rbx rdi r13 r12d r14d
..___tag_value_main.3:
..B1.202:                       # Preds ..B1.199 ..B1.204
                                # Execution count [0.00e+00]: Infreq
        mov       QWORD PTR [8+rsp], rax                        #143.75 c1
                                # LOE
..B1.203:                       # Preds ..B1.202
                                # Execution count [0.00e+00]: Infreq
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.904 #143.75 c1
        call      __kmpc_global_thread_num                      #143.75 c3
                                # LOE eax
..B1.268:                       # Preds ..B1.203
                                # Execution count [0.00e+00]: Infreq
        mov       DWORD PTR [5424+rsp], eax                     #143.75 c1
        jmp       ..B1.172      # Prob 100%                     #143.75 c1
                                # LOE
..B1.204:                       # Preds ..B1.198
                                # Execution count [2.50e-04]: Infreq
..___tag_value_main.167:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #143.75
..___tag_value_main.168:
                                # LOE
..B1.205:                       # Preds ..B1.69
                                # Execution count [1.00e+00]: Infreq
        cmp       rbx, 8                                        #143.54 c1
        jl        ..B1.213      # Prob 10%                      #143.54 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.206:                       # Preds ..B1.205
                                # Execution count [1.00e+00]: Infreq
        mov       rax, rbx                                      #143.54 c1
        xor       ecx, ecx                                      #143.54 c1
        vpxorq    zmm0, zmm0, zmm0                              #143.54 c1
        and       rax, -8                                       #143.54 c3
                                # LOE rax rcx rbx rdi r13 r15 r12d r14d zmm0
..B1.207:                       # Preds ..B1.207 ..B1.206
                                # Execution count [5.56e+00]: Infreq
        vmovupd   ZMMWORD PTR [rdi+rcx*8], zmm0                 #143.54 c1
        add       rcx, 8                                        #143.54 c1
        cmp       rcx, rax                                      #143.54 c3
        jb        ..B1.207      # Prob 82%                      #143.54 c5
                                # LOE rax rcx rbx rdi r13 r15 r12d r14d zmm0
..B1.209:                       # Preds ..B1.207 ..B1.213
                                # Execution count [1.11e+00]: Infreq
        lea       rcx, QWORD PTR [1+rax]                        #143.54 c1
        xor       r8d, r8d                                      #143.54 c1
        cmp       rcx, rbx                                      #143.54 c3
        ja        ..B1.71       # Prob 10%                      #143.54 c5
                                # LOE rax rbx rdi r8 r13 r15 r12d r14d
..B1.210:                       # Preds ..B1.209
                                # Execution count [1.00e+00]: Infreq
        lea       rcx, QWORD PTR [rdi+rax*8]                    #143.54 c1
        neg       rax                                           #143.54 c1
        xor       r9d, r9d                                      #143.54 c1
        add       rax, rbx                                      #143.54 c3
                                # LOE rax rcx rbx r8 r9 r13 r15 r12d r14d
..B1.211:                       # Preds ..B1.211 ..B1.210
                                # Execution count [5.56e+00]: Infreq
        mov       QWORD PTR [rcx+r8*8], r9                      #143.54 c1
        add       r8, 1                                         #143.54 c1
        cmp       r8, rax                                       #143.54 c3
        jb        ..B1.211      # Prob 82%                      #143.54 c5
        jmp       ..B1.71       # Prob 100%                     #143.54 c5
                                # LOE rax rcx rbx r8 r9 r13 r15 r12d r14d
..B1.213:                       # Preds ..B1.205
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #143.54 c1
        jmp       ..B1.209      # Prob 100%                     #143.54 c1
                                # LOE rax rbx rdi r13 r15 r12d r14d
..B1.214:                       # Preds ..B1.66
                                # Execution count [5.00e-02]: Infreq
        mov       r8, 0x1fffffffffffffff                        #143.54 c1
        xor       ecx, ecx                                      #143.44 c1
        mov       QWORD PTR [56+rsp], rcx                       #143.44 c3
        cmp       rbx, r8                                       #143.54 c3
        mov       QWORD PTR [48+rsp], rcx                       #143.44 c3
        mov       QWORD PTR [40+rsp], rcx                       #143.44 c5
        ja        ..B1.220      # Prob 0%                       #143.54 c5
                                # LOE rbx r13 r12d r14d
..B1.215:                       # Preds ..B1.214
                                # Execution count [4.98e-02]: Infreq
        mov       rdi, r13                                      #143.54 c1
..___tag_value_main.169:
#       operator new(std::size_t)
        call      _Znwm                                         #143.54
..___tag_value_main.170:
                                # LOE rax rbx r13 r12d r14d
..B1.216:                       # Preds ..B1.215
                                # Execution count [4.98e-02]: Infreq
        mov       rdi, rax                                      #143.54 c1
        jmp       ..B1.68       # Prob 100%                     #143.54 c1
                                # LOE rbx rdi r13 r12d r14d
..___tag_value_main.2:
..B1.218:                       # Preds ..B1.215 ..B1.220
                                # Execution count [0.00e+00]: Infreq
        mov       QWORD PTR [8+rsp], rax                        #143.54 c1
                                # LOE
..B1.219:                       # Preds ..B1.218
                                # Execution count [0.00e+00]: Infreq
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.928 #143.54 c1
        call      __kmpc_global_thread_num                      #143.54 c3
                                # LOE eax
..B1.269:                       # Preds ..B1.219
                                # Execution count [0.00e+00]: Infreq
        mov       DWORD PTR [5424+rsp], eax                     #143.54 c1
        jmp       ..B1.174      # Prob 100%                     #143.54 c1
                                # LOE
..B1.220:                       # Preds ..B1.214
                                # Execution count [2.50e-04]: Infreq
..___tag_value_main.171:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #143.54
..___tag_value_main.172:
                                # LOE
..B1.221:                       # Preds ..B1.64
                                # Execution count [1.00e+00]: Infreq
        cmp       rbx, 8                                        #143.33 c1
        jl        ..B1.229      # Prob 10%                      #143.33 c3
                                # LOE rbx rdi r13 r15 r12d r14d
..B1.222:                       # Preds ..B1.221
                                # Execution count [1.00e+00]: Infreq
        mov       rax, rbx                                      #143.33 c1
        xor       ecx, ecx                                      #143.33 c1
        vpxorq    zmm0, zmm0, zmm0                              #143.33 c1
        and       rax, -8                                       #143.33 c3
                                # LOE rax rcx rbx rdi r13 r15 r12d r14d zmm0
..B1.223:                       # Preds ..B1.223 ..B1.222
                                # Execution count [5.56e+00]: Infreq
        vmovupd   ZMMWORD PTR [rdi+rcx*8], zmm0                 #143.33 c1
        add       rcx, 8                                        #143.33 c1
        cmp       rcx, rax                                      #143.33 c3
        jb        ..B1.223      # Prob 82%                      #143.33 c5
                                # LOE rax rcx rbx rdi r13 r15 r12d r14d zmm0
..B1.225:                       # Preds ..B1.223 ..B1.229
                                # Execution count [1.11e+00]: Infreq
        lea       rcx, QWORD PTR [1+rax]                        #143.33 c1
        xor       r8d, r8d                                      #143.33 c1
        cmp       rcx, rbx                                      #143.33 c3
        ja        ..B1.66       # Prob 10%                      #143.33 c5
                                # LOE rax rbx rdi r8 r13 r15 r12d r14d
..B1.226:                       # Preds ..B1.225
                                # Execution count [1.00e+00]: Infreq
        lea       rcx, QWORD PTR [rdi+rax*8]                    #143.33 c1
        neg       rax                                           #143.33 c1
        xor       r9d, r9d                                      #143.33 c1
        add       rax, rbx                                      #143.33 c3
                                # LOE rax rcx rbx r8 r9 r13 r15 r12d r14d
..B1.227:                       # Preds ..B1.227 ..B1.226
                                # Execution count [5.56e+00]: Infreq
        mov       QWORD PTR [rcx+r8*8], r9                      #143.33 c1
        add       r8, 1                                         #143.33 c1
        cmp       r8, rax                                       #143.33 c3
        jb        ..B1.227      # Prob 82%                      #143.33 c5
        jmp       ..B1.66       # Prob 100%                     #143.33 c5
                                # LOE rax rcx rbx r8 r9 r13 r15 r12d r14d
..B1.229:                       # Preds ..B1.221
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #143.33 c1
        jmp       ..B1.225      # Prob 100%                     #143.33 c1
                                # LOE rax rbx rdi r13 r15 r12d r14d
..B1.230:                       # Preds ..B1.61
                                # Execution count [5.00e-02]: Infreq
        mov       r8, 0x1fffffffffffffff                        #143.33 c1
        xor       ecx, ecx                                      #143.23 c1
        mov       QWORD PTR [32+rsp], rcx                       #143.23 c3
        cmp       rbx, r8                                       #143.33 c3
        mov       QWORD PTR [24+rsp], rcx                       #143.23 c3
        mov       QWORD PTR [16+rsp], rcx                       #143.23 c5
        ja        ..B1.236      # Prob 0%                       #143.33 c5
                                # LOE rbx r13 r12d r14d
..B1.231:                       # Preds ..B1.230
                                # Execution count [4.98e-02]: Infreq
        mov       rdi, r13                                      #143.33 c1
..___tag_value_main.173:
#       operator new(std::size_t)
        call      _Znwm                                         #143.33
..___tag_value_main.174:
                                # LOE rax rbx r13 r12d r14d
..B1.232:                       # Preds ..B1.231
                                # Execution count [4.98e-02]: Infreq
        mov       rdi, rax                                      #143.33 c1
        jmp       ..B1.63       # Prob 100%                     #143.33 c1
                                # LOE rbx rdi r13 r12d r14d
..___tag_value_main.1:
..B1.234:                       # Preds ..B1.231 ..B1.236
                                # Execution count [0.00e+00]: Infreq
        mov       QWORD PTR [8+rsp], rax                        #143.33 c1
                                # LOE
..B1.235:                       # Preds ..B1.234
                                # Execution count [0.00e+00]: Infreq
        mov       edi, offset flat: .2.213_2_kmpc_loc_struct_pack.952 #143.33 c1
        call      __kmpc_global_thread_num                      #143.33 c3
                                # LOE eax
..B1.270:                       # Preds ..B1.235
                                # Execution count [0.00e+00]: Infreq
        mov       rdi, QWORD PTR [8+rsp]                        #143.33 c1
        mov       DWORD PTR [5424+rsp], eax                     #143.33 c1
..___tag_value_main.175:
        call      _Unwind_Resume                                #143.33
..___tag_value_main.176:
                                # LOE
..B1.236:                       # Preds ..B1.230
                                # Execution count [2.50e-04]: Infreq
..___tag_value_main.177:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #143.33
..___tag_value_main.178:
                                # LOE
..B1.237:                       # Preds ..B1.59
                                # Execution count [1.00e+00]: Infreq
        cmp       r14d, 8                                       #141.3 c1
        jl        ..B1.245      # Prob 10%                      #141.3 c3
                                # LOE rbx rdi r13 r12d r14d
..B1.238:                       # Preds ..B1.237
                                # Execution count [1.00e+00]: Infreq
        mov       eax, r14d                                     #141.3 c1
        xor       r8d, r8d                                      #141.3 c1
        vpxorq    zmm0, zmm0, zmm0                              #141.36 c1
        and       eax, -8                                       #141.3 c3
        xor       ecx, ecx                                      #141.3 c3
                                # LOE rbx rdi r13 eax ecx r8d r12d r14d zmm0
..B1.239:                       # Preds ..B1.239 ..B1.238
                                # Execution count [5.56e+00]: Infreq
        add       r8d, 8                                        #141.3 c1
        vmovupd   ZMMWORD PTR [rdi], zmm0                       #141.3 c1
        add       rdi, 64                                       #141.3 c1
        cmp       r8d, eax                                      #141.3 c3
        jb        ..B1.239      # Prob 82%                      #141.3 c5
                                # LOE rbx rdi r13 eax ecx r8d r12d r14d zmm0
..B1.241:                       # Preds ..B1.239 ..B1.245
                                # Execution count [1.02e+00]: Infreq
        lea       r8d, DWORD PTR [1+rax]                        #141.3 c1
        cmp       r8d, r14d                                     #141.3 c3
        ja        ..B1.61       # Prob 2%                       #141.3 c5
                                # LOE rbx rdi r13 eax ecx r12d r14d
..B1.242:                       # Preds ..B1.241
                                # Execution count [1.00e+00]: Infreq
        neg       eax                                           #141.3 c1
        xor       r8d, r8d                                      #141.3 c1
        add       eax, r14d                                     #141.3 c3
                                # LOE rbx rdi r8 r13 eax ecx r12d r14d
..B1.243:                       # Preds ..B1.243 ..B1.242
                                # Execution count [5.56e+00]: Infreq
        add       ecx, 1                                        #141.3 c1
        mov       QWORD PTR [rdi], r8                           #141.3 c1
        add       rdi, 8                                        #141.3 c1
        cmp       ecx, eax                                      #141.3 c3
        jb        ..B1.243      # Prob 82%                      #141.3 c5
        jmp       ..B1.61       # Prob 100%                     #141.3 c5
                                # LOE rbx rdi r8 r13 eax ecx r12d r14d
..B1.245:                       # Preds ..B1.237
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #141.3 c1
        xor       ecx, ecx                                      #141.3 c1
        jmp       ..B1.241      # Prob 100%                     #141.3 c1
                                # LOE rbx rdi r13 eax ecx r12d r14d
..B1.246:                       # Preds ..B1.38
                                # Execution count [2.07e-02]: Infreq
        mov       rcx, QWORD PTR [56+rsp]                       #137.16[spill] c1
        mov       QWORD PTR [5272+rsp], rcx                     #137.16 c5 stall 1
        jmp       ..B1.58       # Prob 100%                     #137.16 c5 stall 1
        .align    16,0x90
                                # LOE rbx r13 r15 r12d r14d
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.183 - ..___tag_value_main.182
..___tag_value_main.182:
	.byte	1
	.uleb128	..___tag_value_main.181 - ..___tag_value_main.180
..___tag_value_main.180:
	.uleb128	..___tag_value_main.15 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.24 - ..___tag_value_main.15
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.41 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.54 - ..___tag_value_main.41
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.55 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.56 - ..___tag_value_main.55
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.5
	.byte	0
	.uleb128	..___tag_value_main.71 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.90 - ..___tag_value_main.71
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.5
	.byte	0
	.uleb128	..___tag_value_main.91 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.98 - ..___tag_value_main.91
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.153 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.154 - ..___tag_value_main.153
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.155 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.164 - ..___tag_value_main.155
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.5
	.byte	0
	.uleb128	..___tag_value_main.165 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.168 - ..___tag_value_main.165
	.uleb128	..___tag_value_main.3 - ..___tag_value_main.5
	.byte	0
	.uleb128	..___tag_value_main.169 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.172 - ..___tag_value_main.169
	.uleb128	..___tag_value_main.2 - ..___tag_value_main.5
	.byte	0
	.uleb128	..___tag_value_main.173 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.174 - ..___tag_value_main.173
	.uleb128	..___tag_value_main.1 - ..___tag_value_main.5
	.byte	0
	.uleb128	..___tag_value_main.175 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.176 - ..___tag_value_main.175
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.177 - ..___tag_value_main.5
	.uleb128	..___tag_value_main.178 - ..___tag_value_main.177
	.uleb128	..___tag_value_main.1 - ..___tag_value_main.5
	.byte	0
..___tag_value_main.181:
	.byte	127
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value_main.183:
	.byte	0
	.data
	.align 4
	.align 4
.2.213_2_kmpc_loc_struct_pack.765:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.764
	.align 4
.2.213_2__kmpc_loc_pack.764:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	48
	.byte	57
	.byte	59
	.byte	49
	.byte	48
	.byte	57
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.776:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.775
	.align 4
.2.213_2__kmpc_loc_pack.775:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	51
	.byte	53
	.byte	59
	.byte	49
	.byte	51
	.byte	53
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.1016:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.1015
	.align 4
.2.213_2__kmpc_loc_pack.1015:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	51
	.byte	53
	.byte	59
	.byte	49
	.byte	51
	.byte	53
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.1070:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.1069
	.align 4
.2.213_2__kmpc_loc_pack.1069:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.976:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.975
	.align 4
.2.213_2__kmpc_loc_pack.975:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	55
	.byte	51
	.byte	59
	.byte	49
	.byte	55
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.1041:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.1040
	.align 4
.2.213_2__kmpc_loc_pack.1040:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.1062:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.1061
	.align 4
.2.213_2__kmpc_loc_pack.1061:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.872:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.871
	.align 4
.2.213_2__kmpc_loc_pack.871:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.904:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.903
	.align 4
.2.213_2__kmpc_loc_pack.903:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.928:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.927
	.align 4
.2.213_2__kmpc_loc_pack.927:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.213_2_kmpc_loc_struct_pack.952:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.213_2__kmpc_loc_pack.951
	.align 4
.2.213_2__kmpc_loc_pack.951:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	49
	.byte	52
	.byte	51
	.byte	59
	.byte	59
	.data
# -- End  main, L_main_135__par_loop0_2.11, L_main_157__par_region1_2.12
	.section .text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, "xaG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
..TXTST1:
# -- Begin  _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section .text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, "xaG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
# --- std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL>::_M_gen_rand(std::mersenne_twister_engine<uint_fast32_t, 32UL, 624UL, 397UL, 31UL, 2567483615UL, 11UL, 4294967295UL, 7UL, 2636928640UL, 15UL, 4022730752UL, 18UL, 1812433253UL> *)
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
# parameter 1: rdi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.184:
..L185:
                                                        #400.5
        mov       rcx, rdi                                      #404.7 c1
        and       rcx, 63                                       #404.7 c3
        jne       ..B2.3        # Prob 50%                      #404.7 c5
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [5.00e-01]
        vmovups   zmm6, ZMMWORD PTR .L_2il0floatpacket.21[rip]  #406.34 c1
        vmovups   zmm5, ZMMWORD PTR .L_2il0floatpacket.22[rip]  #407.26 c1
        xor       r8d, r8d                                      #409.28 c1
        vmovups   zmm4, ZMMWORD PTR .L_2il0floatpacket.23[rip]  #409.20 c7 stall 2
        vmovups   zmm3, ZMMWORD PTR .L_2il0floatpacket.24[rip]  #409.28 c7
        jmp       ..B2.6        # Prob 100%                     #409.28 c7
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 zmm3 zmm4 zmm5 zmm6
..B2.3:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        neg       rcx                                           #404.7 c1
        vpbroadcastq zmm2, QWORD PTR .L_2il0floatpacket.20[rip] #404.7 c1
        vmovdqu32 zmm1, ZMMWORD PTR .L_2il0floatpacket.25[rip]  #404.7 c1
        xor       edx, edx                                      #404.7 c1
        add       rcx, 64                                       #404.7 c3
        xor       r8d, r8d                                      #404.7 c3
        shr       rcx, 3                                        #404.7 c5
        xor       eax, eax                                      #407.26 c5
        vmovups   zmm6, ZMMWORD PTR .L_2il0floatpacket.21[rip]  #406.34 c7
        vmovups   zmm5, ZMMWORD PTR .L_2il0floatpacket.22[rip]  #407.26 c7
        vmovups   zmm4, ZMMWORD PTR .L_2il0floatpacket.23[rip]  #409.20 c13 stall 2
        vmovups   zmm3, ZMMWORD PTR .L_2il0floatpacket.24[rip]  #409.28 c13
        vpbroadcastq zmm0, rcx                                  #404.7 c19 stall 2
                                # LOE rax rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B2.4:                         # Preds ..B2.4 ..B2.3
                                # Execution count [2.27e+02]
        vpcmpuq   k4, zmm0, zmm1, 6                             #404.7 c1
        vpaddq    zmm1, zmm1, zmm2                              #404.7 c1
        vmovdqu64 zmm7{k4}{z}, ZMMWORD PTR [8+rdi+rdx*8]        #407.10 c3
        vmovdqu64 zmm8{k4}{z}, ZMMWORD PTR [rdi+rdx*8]          #406.22 c3
        vpandq    zmm11, zmm7, zmm5                             #407.26 c9 stall 2
        vmovdqu64 zmm12{k4}{z}, ZMMWORD PTR [3176+rdi+rdx*8]    #408.4 c9
        add       rdx, 8                                        #404.7 c9
        vpternlogq zmm11, zmm8, zmm6, 248                       #407.26 c11
        vpandq    zmm9, zmm11, zmm4                             #409.20 c13
        vpsrlq    zmm13, zmm11, 1                               #408.4 c13
        vptestnmq k0, zmm9, zmm9                                #409.20 c15
        kandnw    k1, k0, k4                                    #409.28 c19 stall 1
        kandw     k2, k4, k0                                    #409.20 c19
        vmovdqa64 zmm10{k1}{z}, zmm3                            #409.28 c21
        knotw     k3, k2                                        #409.20 c21
        vmovdqa64 zmm14{k3}{z}, zmm10                           #409.20 c23
        vpternlogq zmm14, zmm12, zmm13, 150                     #408.4 c25
        vmovdqu64 ZMMWORD PTR [rax+rdi]{k4}, zmm14              #408.4 c27
        add       rax, 64                                       #404.7 c27
        cmp       rdx, rcx                                      #404.7 c27
        jb        ..B2.4        # Prob 99%                      #404.7 c29
                                # LOE rax rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B2.6:                         # Preds ..B2.4 ..B2.2
                                # Execution count [1.00e+00]
        mov       rsi, rcx                                      #404.7 c1
        lea       rdx, QWORD PTR [rcx*8]                        #404.7 c1
        neg       rsi                                           #404.7 c3
        add       rsi, 227                                      #404.7 c5
        and       rsi, 7                                        #404.7 c7
        neg       rsi                                           #404.7 c9
        lea       rax, QWORD PTR [227+rsi]                      #404.7 c11
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15 zmm3 zmm4 zmm5 zmm6
..B2.7:                         # Preds ..B2.7 ..B2.6
                                # Execution count [2.27e+02]
        vmovdqu64 zmm0, ZMMWORD PTR [64+rdx+rdi]                #407.26 c1
        valignd   zmm1, zmm0, ZMMWORD PTR [rdx+rdi], 2          #407.26 c7 stall 2
        vpandq    zmm7, zmm1, zmm5                              #407.26 c9
        vpternlogq zmm7, zmm6, ZMMWORD PTR [rdx+rdi], 248       #407.26 c11
        vpandq    zmm2, zmm4, zmm7                              #409.20 c13
        vpsrlq    zmm8, zmm7, 1                                 #408.43 c13
        vptestmq  k1, zmm2, zmm2                                #409.20 c15
        vmovdqa64 zmm9{k1}{z}, zmm3                             #409.28 c19 stall 1
        vpternlogq zmm9, zmm8, ZMMWORD PTR [3176+rdi+rcx*8], 150 #409.20 c21
        vmovdqu64 ZMMWORD PTR [rdx+rdi], zmm9                   #408.4 c23
        add       rcx, 8                                        #404.7 c23
        add       rdx, 64                                       #404.7 c23
        cmp       rcx, rax                                      #404.7 c25
        jb        ..B2.7        # Prob 99%                      #404.7 c27
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15 zmm3 zmm4 zmm5 zmm6
..B2.8:                         # Preds ..B2.7
                                # Execution count [1.00e+00]
        lea       rdx, QWORD PTR [228+rsi]                      #404.7 c1
        cmp       rdx, 227                                      #404.7 c3
        ja        ..B2.12       # Prob 50%                      #404.7 c5
                                # LOE rax rbx rbp rsi rdi r8 r12 r13 r14 r15 zmm3 zmm4 zmm5 zmm6
..B2.9:                         # Preds ..B2.8
                                # Execution count [1.00e+00]
        neg       rax                                           #404.7 c1
        mov       r9, r8                                        #404.7 c1
        vpbroadcastq zmm2, QWORD PTR .L_2il0floatpacket.20[rip] #404.7 c1
        vmovdqu32 zmm1, ZMMWORD PTR .L_2il0floatpacket.25[rip]  #404.7 c1
        add       rax, 227                                      #404.7 c3
        mov       rdx, r9                                       #404.7 c3
        vpbroadcastq zmm0, rax                                  #404.7 c7 stall 1
        lea       rcx, QWORD PTR [1816+rdi+rsi*8]               #407.10 c7
                                # LOE rax rdx rcx rbx rbp rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B2.10:                        # Preds ..B2.10 ..B2.9
                                # Execution count [2.27e+02]
        vpcmpuq   k4, zmm0, zmm1, 6                             #404.7 c1
        vpaddq    zmm1, zmm1, zmm2                              #404.7 c1
        vmovdqu64 zmm7{k4}{z}, ZMMWORD PTR [8+rcx+r9*8]         #407.10 c3
        vmovdqu64 zmm8{k4}{z}, ZMMWORD PTR [rcx+r9*8]           #406.22 c3
        vpandq    zmm11, zmm7, zmm5                             #407.26 c9 stall 2
        vmovdqu64 zmm12{k4}{z}, ZMMWORD PTR [3176+rcx+r9*8]     #408.4 c9
        add       r9, 8                                         #404.7 c9
        vpternlogq zmm11, zmm8, zmm6, 248                       #407.26 c11
        vpandq    zmm9, zmm4, zmm11                             #409.20 c13
        vpsrlq    zmm13, zmm11, 1                               #408.4 c13
        vptestnmq k0, zmm9, zmm9                                #409.20 c15
        kandnw    k1, k0, k4                                    #409.28 c19 stall 1
        kandw     k2, k4, k0                                    #409.20 c19
        vmovdqa64 zmm10{k1}{z}, zmm3                            #409.28 c21
        knotw     k3, k2                                        #409.20 c21
        vmovdqa64 zmm14{k3}{z}, zmm10                           #409.20 c23
        vpternlogq zmm14, zmm12, zmm13, 150                     #408.4 c25
        vmovdqa64 ZMMWORD PTR [rdx+rcx]{k4}, zmm14              #408.4 c27
        add       rdx, 64                                       #404.7 c27
        cmp       r9, rax                                       #404.7 c27
        jb        ..B2.10       # Prob 99%                      #404.7 c29
                                # LOE rax rdx rcx rbx rbp rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B2.12:                        # Preds ..B2.10 ..B2.8
                                # Execution count [1.00e+00]
        xor       ecx, ecx                                      #412.7 c1
        mov       rsi, r8                                       #415.26 c1
        mov       rdx, 0x09908b0df                              #415.26 c3
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx
..B2.13:                        # Preds ..B2.13 ..B2.12
                                # Execution count [1.98e+02]
        mov       rax, QWORD PTR [1824+rsi+rdi]                 #415.10 c1
        mov       r10, QWORD PTR [1816+rsi+rdi]                 #414.22 c1
        mov       r11, r8                                       #416.4 c1
        add       ecx, 1                                        #412.7 c1
        mov       r9, rax                                       #415.26 c5 stall 1
        and       r10, -2147483648                              #414.34 c5
        and       r9, 2147483647                                #415.26 c7
        and       rax, -2147483648                              #414.34 c7
        or        r10, r9                                       #415.26 c9
        mov       r9, r10                                       #416.51 c11
        test      r10, 1                                        #417.20 c11
        mov       r10, QWORD PTR [1832+rsi+rdi]                 #415.10 c11
        cmovne    r11, rdx                                      #416.4 c13
        shr       r9, 1                                         #416.51 c13
        xor       r9, QWORD PTR [rsi+rdi]                       #416.51 c15
        and       r10, 2147483647                               #415.26 c15
        xor       r9, r11                                       #417.20 c17
        mov       QWORD PTR [1816+rsi+rdi], r9                  #416.4 c19
        or        rax, r10                                      #415.26 c19
        mov       r9, rax                                       #416.51 c21
        test      rax, 1                                        #417.20 c21
        mov       rax, r8                                       #416.4 c23
        cmovne    rax, rdx                                      #416.4 c25
        shr       r9, 1                                         #416.51 c25
        xor       r9, QWORD PTR [8+rsi+rdi]                     #416.51 c27
        xor       r9, rax                                       #417.20 c29
        mov       QWORD PTR [1824+rsi+rdi], r9                  #416.4 c31
        add       rsi, 16                                       #412.7 c31
        cmp       ecx, 198                                      #412.7 c31
        jb        ..B2.13       # Prob 99%                      #412.7 c33
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx
..B2.14:                        # Preds ..B2.13
                                # Execution count [1.00e+00]
        mov       rcx, QWORD PTR [4984+rdi]                     #420.25 c1
        mov       QWORD PTR [4992+rdi], r8                      #424.7 c1
        mov       rax, QWORD PTR [rdi]                          #421.13 c3
        and       rcx, -2147483648                              #420.41 c5
        and       rax, 2147483647                               #421.23 c7
        or        rcx, rax                                      #421.23 c9
        mov       rsi, rcx                                      #422.48 c11
        test      rcx, 1                                        #423.20 c11
        cmove     rdx, r8                                       #422.7 c13
        shr       rsi, 1                                        #422.48 c13
        xor       rsi, QWORD PTR [3168+rdi]                     #422.48 c15
        xor       rsi, rdx                                      #423.20 c17
        mov       QWORD PTR [4984+rdi], rsi                     #422.7 c19
        ret                                                     #425.5 c21
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,@function
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,.-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.data
# -- End  _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST2:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.187:
..L188:
                                                        #259.7
        push      rsi                                           #259.7 c1
	.cfi_def_cfa_offset 16
        mov       rdx, rdi                                      #259.16 c1
        mov       rcx, rdx                                      #259.16 c3
        and       rdx, -16                                      #259.16
        vpxor     xmm0, xmm0, xmm0                              #259.16
        vpcmpeqb  xmm0, xmm0, XMMWORD PTR [rdx]                 #259.16
        vpmovmskb eax, xmm0                                     #259.16
        and       ecx, 15                                       #259.16
        shr       eax, cl                                       #259.16
        bsf       eax, eax                                      #259.16
        jne       ..L190        # Prob 60%                      #259.16
        mov       rax, rdx                                      #259.16
        add       rdx, rcx                                      #259.16
        call      __intel_sse4_strlen                           #259.16
..L190:                                                         #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B3.4:                         # Preds ..B3.1
                                # Execution count [1.00e+00]
        pop       rcx                                           #259.16 c1
	.cfi_def_cfa_offset 8
        ret                                                     #259.16 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt12_Vector_baseIdSaIdEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEED2Ev,comdat
..TXTST3:
# -- Begin  _ZNSt12_Vector_baseIdSaIdEED2Ev
	.section .text._ZNSt12_Vector_baseIdSaIdEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEED2Ev,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt12_Vector_baseIdSaIdEED2Ev
# --- std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *const)
_ZNSt12_Vector_baseIdSaIdEED2Ev:
# parameter 1: rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.193:
..L194:
                                                        #159.7
#       std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *)
        jmp       _ZNSt12_Vector_baseIdSaIdEED1Ev               #159.7 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev,@function
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev,.-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.data
# -- End  _ZNSt12_Vector_baseIdSaIdEED2Ev
	.section .text._ZNSt12_Vector_baseIdSaIdEED1Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEED1Ev,comdat
..TXTST4:
# -- Begin  _ZNSt12_Vector_baseIdSaIdEED1Ev
	.section .text._ZNSt12_Vector_baseIdSaIdEED1Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEED1Ev,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt12_Vector_baseIdSaIdEED1Ev
# --- std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *)
_ZNSt12_Vector_baseIdSaIdEED1Ev:
# parameter 1: rdi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIdSaIdEED1Ev.196:
..L197:
                                                        #160.7
        mov       rdi, QWORD PTR [rdi]                          #160.23 c1
        test      rdi, rdi                                      #160.9 c5 stall 1
        je        ..B5.3        # Prob 72%                      #160.9 c7
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B5.2:                         # Preds ..B5.1
                                # Execution count [2.78e-01]
#       operator delete(void *)
        jmp       _ZdlPv                                        #160.9 c1
                                # LOE
..B5.3:                         # Preds ..B5.1
                                # Execution count [1.00e+00]
        ret                                                     #161.36 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_ZNSt12_Vector_baseIdSaIdEED1Ev,@function
	.size	_ZNSt12_Vector_baseIdSaIdEED1Ev,.-_ZNSt12_Vector_baseIdSaIdEED1Ev
	.data
# -- End  _ZNSt12_Vector_baseIdSaIdEED1Ev
	.section .text._ZNSt6vectorIdSaIdEED1Ev, "xaG",@progbits,_ZNSt6vectorIdSaIdEED1Ev,comdat
..TXTST5:
# -- Begin  _ZNSt6vectorIdSaIdEED1Ev
	.section .text._ZNSt6vectorIdSaIdEED1Ev, "xaG",@progbits,_ZNSt6vectorIdSaIdEED1Ev,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt6vectorIdSaIdEED1Ev
# --- std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
_ZNSt6vectorIdSaIdEED1Ev:
# parameter 1: rdi
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIdSaIdEED1Ev$$LSDA
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.199:
..L200:
                                                        #415.7
#       std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *)
        jmp       _ZNSt12_Vector_baseIdSaIdEED1Ev               #416.33 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_ZNSt6vectorIdSaIdEED1Ev,@function
	.size	_ZNSt6vectorIdSaIdEED1Ev,.-_ZNSt6vectorIdSaIdEED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIdSaIdEED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEED1Ev.205 - ..___tag_value__ZNSt6vectorIdSaIdEED1Ev.204
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.204:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEED1Ev.203 - ..___tag_value__ZNSt6vectorIdSaIdEED1Ev.202
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.202:
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.203:
	.byte	127
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.205:
	.byte	0
	.data
# -- End  _ZNSt6vectorIdSaIdEED1Ev
	.text
# -- Begin  _Z5daxpyPKdS0_Pddi, L__Z5daxpyPKdS0_Pddi_14__par_region0_2.26
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z5daxpyPKdS0_Pddi
# --- daxpy(const double *, const double *, double *, double, int)
_Z5daxpyPKdS0_Pddi:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: xmm0
# parameter 5: ecx
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z5daxpyPKdS0_Pddi.206:
..L207:
                                                        #13.32
        push      rbp                                           #13.32
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #13.32
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #13.32
        sub       rsp, 320                                      #13.32 c1
        mov       QWORD PTR [8+rsp], rdi                        #13.32 c3
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.12 #14.1 c3
        mov       QWORD PTR [288+rsp], rbx                      #13.32[spill] c3
        mov       QWORD PTR [256+rsp], r15                      #13.32[spill] c5
        mov       QWORD PTR [264+rsp], r14                      #13.32[spill] c5
        mov       QWORD PTR [272+rsp], r13                      #13.32[spill] c7
        mov       QWORD PTR [280+rsp], r12                      #13.32[spill] c7
        mov       QWORD PTR [16+rsp], rsi                       #13.32 c9
        mov       QWORD PTR [24+rsp], rdx                       #13.32 c9
        vmovsd    QWORD PTR [32+rsp], xmm0                      #13.32 c11
        mov       DWORD PTR [40+rsp], ecx                       #13.32 c11
        call      __kmpc_global_thread_num                      #14.1 c11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
                                # LOE eax
..B7.21:                        # Preds ..B7.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [4+rsp], eax                        #14.1 c1
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.49 #14.1 c1
        xor       eax, eax                                      #14.1 c1
..___tag_value__Z5daxpyPKdS0_Pddi.216:
        call      __kmpc_ok_to_fork                             #14.1
..___tag_value__Z5daxpyPKdS0_Pddi.217:
                                # LOE eax
..B7.2:                         # Preds ..B7.21
                                # Execution count [1.00e+00]
        test      eax, eax                                      #14.1 c1
        je        ..B7.4        # Prob 50%                      #14.1 c3
                                # LOE
..B7.3:                         # Preds ..B7.2
                                # Execution count [0.00e+00]
        add       rsp, -48                                      #14.1 c1
        mov       edx, offset flat: L__Z5daxpyPKdS0_Pddi_14__par_region0_2.26 #14.1 c1
        lea       rcx, QWORD PTR [88+rsp]                       #14.1 c3
        lea       r10, QWORD PTR [48+rsp]                       #14.1 c3
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.49 #14.1 c3
        mov       esi, 9                                        #14.1 c3
        lea       rax, QWORD PTR [-24+rcx]                      #14.1 c5
        mov       QWORD PTR [rsp], rax                          #14.1 c7
        lea       r8, QWORD PTR [-8+rcx]                        #14.1 c7
        lea       r9, QWORD PTR [-32+rcx]                       #14.1 c9
        lea       rbx, QWORD PTR [8+rax]                        #14.1 c9
        mov       QWORD PTR [8+rsp], rbx                        #14.1 c11
        lea       r11, QWORD PTR [48+rax]                       #14.1 c11
        mov       QWORD PTR [16+rsp], r10                       #14.1 c13
        lea       r12, QWORD PTR [112+rax]                      #14.1 c13
        mov       QWORD PTR [24+rsp], r11                       #14.1 c15
        lea       r13, QWORD PTR [176+rax]                      #14.1 c15
        mov       QWORD PTR [32+rsp], r12                       #14.1 c17
        xor       eax, eax                                      #14.1 c17
        mov       QWORD PTR [40+rsp], r13                       #14.1 c17
..___tag_value__Z5daxpyPKdS0_Pddi.218:
        call      __kmpc_fork_call                              #14.1
..___tag_value__Z5daxpyPKdS0_Pddi.219:
                                # LOE
..B7.22:                        # Preds ..B7.3
                                # Execution count [0.00e+00]
        add       rsp, 48                                       #14.1 c1
        jmp       ..B7.7        # Prob 100%                     #14.1 c1
                                # LOE
..B7.4:                         # Preds ..B7.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.49 #14.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #14.1 c1
        xor       eax, eax                                      #14.1 c1
..___tag_value__Z5daxpyPKdS0_Pddi.220:
        call      __kmpc_serialized_parallel                    #14.1
..___tag_value__Z5daxpyPKdS0_Pddi.221:
                                # LOE
..B7.5:                         # Preds ..B7.4
                                # Execution count [0.00e+00]
        add       rsp, -48                                      #14.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z5daxpyPKdS0_Pddi_0 #14.1 c1
        lea       rdi, QWORD PTR [52+rsp]                       #14.1 c3
        lea       rbx, QWORD PTR [48+rsp]                       #14.1 c3
        lea       rdx, QWORD PTR [36+rdi]                       #14.1 c5
        lea       rax, QWORD PTR [-16+rdx]                      #14.1 c7
        mov       QWORD PTR [rsp], rax                          #14.1 c9
        lea       rcx, QWORD PTR [-8+rdx]                       #14.1 c9
        mov       QWORD PTR [8+rsp], rbx                        #14.1 c11
        lea       r8, QWORD PTR [-32+rdx]                       #14.1 c11
        lea       r9, QWORD PTR [-24+rdx]                       #14.1 c13
        lea       r10, QWORD PTR [40+rax]                       #14.1 c13
        mov       QWORD PTR [16+rsp], r10                       #14.1 c15
        lea       r11, QWORD PTR [104+rax]                      #14.1 c15
        mov       QWORD PTR [24+rsp], r11                       #14.1 c17
        lea       r12, QWORD PTR [168+rax]                      #14.1 c17
        mov       QWORD PTR [32+rsp], r12                       #14.1 c19
..___tag_value__Z5daxpyPKdS0_Pddi.222:
        call      L__Z5daxpyPKdS0_Pddi_14__par_region0_2.26     #14.1
..___tag_value__Z5daxpyPKdS0_Pddi.223:
                                # LOE
..B7.23:                        # Preds ..B7.5
                                # Execution count [0.00e+00]
        add       rsp, 48                                       #14.1 c1
                                # LOE
..B7.6:                         # Preds ..B7.23
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.49 #14.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #14.1 c1
        xor       eax, eax                                      #14.1 c1
..___tag_value__Z5daxpyPKdS0_Pddi.224:
        call      __kmpc_end_serialized_parallel                #14.1
..___tag_value__Z5daxpyPKdS0_Pddi.225:
                                # LOE
..B7.7:                         # Preds ..B7.22 ..B7.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [256+rsp]                      #26.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [264+rsp]                      #26.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [272+rsp]                      #26.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [280+rsp]                      #26.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [288+rsp]                      #26.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #26.1 c11
        pop       rbp                                           #26.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #26.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z5daxpyPKdS0_Pddi_14__par_region0_2.26:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 16 + rbp
# parameter 8: 24 + rbp
# parameter 9: 32 + rbp
# parameter 10: 40 + rbp
# parameter 11: 48 + rbp
..B7.8:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
        push      rbp                                           #14.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #14.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #14.1
        sub       rsp, 320                                      #14.1 c1
        mov       QWORD PTR [288+rsp], rbx                      #14.1[spill] c3
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdx]                          #14.1 c3
        mov       QWORD PTR [256+rsp], r15                      #14.1[spill] c5
        vbroadcastsd zmm0, QWORD PTR [rcx]                      #17.24 c7
        mov       QWORD PTR [264+rsp], r14                      #14.1[spill] c7
        mov       rax, QWORD PTR [16+rbp]                       #14.1 c9
        mov       QWORD PTR [272+rsp], r13                      #14.1[spill] c13 stall 1
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
        mov       r15d, DWORD PTR [rdi]                         #14.1 c13
        mov       QWORD PTR [280+rsp], r12                      #14.1[spill] c15
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
        mov       r14, QWORD PTR [rax]                          #14.1 c17
        vmovups   ZMMWORD PTR [rsp], zmm0                       #17.24[spill] c17
        mov       r13, QWORD PTR [r9]                           #14.1 c21 stall 1
        mov       r12, QWORD PTR [r8]                           #14.1 c23
        test      ebx, ebx                                      #19.39 c23
        jle       ..B7.16       # Prob 10%                      #19.39 c25
                                # LOE r12 r13 r14 ebx r15d
..B7.9:                         # Preds ..B7.8
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #18.1 c1
        mov       DWORD PTR [64+rsp], eax                       #18.1 c3
        add       ebx, -1                                       #18.1 c3
        mov       DWORD PTR [72+rsp], eax                       #18.1 c3
        mov       r11d, 8                                       #18.1 c3
        mov       DWORD PTR [68+rsp], ebx                       #18.1 c5
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.20 #18.1 c5
        mov       DWORD PTR [76+rsp], r11d                      #18.1 c5
        add       rsp, -32                                      #18.1 c5
        lea       r10, QWORD PTR [108+rsp]                      #18.1 c7
        mov       QWORD PTR [rsp], r10                          #18.1 c9
        mov       esi, r15d                                     #18.1 c9
        mov       DWORD PTR [8+rsp], r11d                       #18.1 c9
        mov       edx, 34                                       #18.1 c9
        mov       DWORD PTR [16+rsp], 1                         #18.1 c11
        lea       rcx, QWORD PTR [104+rsp]                      #18.1 c11
        lea       r8, QWORD PTR [96+rsp]                        #18.1 c13
        lea       r9, QWORD PTR [100+rsp]                       #18.1 c13
        call      __kmpc_for_static_init_4                      #18.1 c15
                                # LOE r12 r13 r14 ebx r15d
..B7.24:                        # Preds ..B7.9
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #18.1 c1
                                # LOE r12 r13 r14 ebx r15d
..B7.10:                        # Preds ..B7.24
                                # Execution count [0.00e+00]
        movsxd    rax, DWORD PTR [64+rsp]                       #18.1 c1
        movsxd    rbx, ebx                                      #18.1 c1
        mov       edx, DWORD PTR [68+rsp]                       #18.1 c1
        cmp       rax, rbx                                      #18.1 c5 stall 1
        jg        ..B7.15       # Prob 50%                      #18.1 c7
                                # LOE rax r12 r13 r14 edx ebx r15d
..B7.11:                        # Preds ..B7.10
                                # Execution count [0.00e+00]
        cmp       edx, ebx                                      #18.1 c1
        cmovl     ebx, edx                                      #18.1 c3
        movsxd    rbx, ebx                                      #18.1 c5
        cmp       rax, rbx                                      #19.39 c7
        jg        ..B7.15       # Prob 50%                      #19.39 c9
                                # LOE rax rbx r12 r13 r14 r15d
..B7.12:                        # Preds ..B7.11
                                # Execution count [9.00e-01]
        vmovups   zmm1, ZMMWORD PTR [rsp]                       #[spill] c1
                                # LOE rax rbx r12 r13 r14 r15d zmm1
..B7.13:                        # Preds ..B7.13 ..B7.12
                                # Execution count [5.00e+00]
        vmovups   zmm0, ZMMWORD PTR [r12+rax*8]                 #22.26 c1
        vfmadd213pd zmm0, zmm1, ZMMWORD PTR [r13+rax*8]         #22.26 c7 stall 2
        vmovups   ZMMWORD PTR [r14+rax*8], zmm0                 #23.23 c13 stall 2
        add       rax, 8                                        #19.31 c13
        cmp       rax, rbx                                      #19.39 c15
        jle       ..B7.13       # Prob 82%                      #19.39 c17
                                # LOE rax rbx r12 r13 r14 r15d zmm1
..B7.15:                        # Preds ..B7.13 ..B7.11 ..B7.10
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.20 #18.1 c1
        mov       esi, r15d                                     #18.1 c1
        call      __kmpc_for_static_fini                        #18.1 c3
                                # LOE r15d
..B7.16:                        # Preds ..B7.15 ..B7.8
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.219_2_kmpc_loc_struct_pack.41 #24.5 c1
        mov       esi, r15d                                     #24.5 c1
        xor       eax, eax                                      #24.5 c3
..___tag_value__Z5daxpyPKdS0_Pddi.243:
        call      __kmpc_barrier                                #24.5
..___tag_value__Z5daxpyPKdS0_Pddi.244:
                                # LOE
..B7.17:                        # Preds ..B7.16
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [256+rsp]                      #14.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [264+rsp]                      #14.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [272+rsp]                      #14.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [280+rsp]                      #14.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [288+rsp]                      #14.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #14.1 c11
        pop       rbp                                           #14.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #14.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z5daxpyPKdS0_Pddi,@function
	.size	_Z5daxpyPKdS0_Pddi,.-_Z5daxpyPKdS0_Pddi
	.data
	.space 1, 0x00 	# pad
	.align 4
.2.219_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.219_2__kmpc_loc_pack.11
	.align 4
.2.219_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
	.align 4
.2.219_2_kmpc_loc_struct_pack.49:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.219_2__kmpc_loc_pack.48
	.align 4
.2.219_2__kmpc_loc_pack.48:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	50
	.byte	53
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
	.align 4
.2.219_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.219_2__kmpc_loc_pack.19
	.align 4
.2.219_2__kmpc_loc_pack.19:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	59
	.byte	49
	.byte	56
	.byte	59
	.byte	50
	.byte	52
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
	.align 4
.2.219_2_kmpc_loc_struct_pack.41:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.219_2__kmpc_loc_pack.40
	.align 4
.2.219_2__kmpc_loc_pack.40:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	59
	.byte	50
	.byte	52
	.byte	59
	.byte	50
	.byte	52
	.byte	59
	.byte	59
	.data
# -- End  _Z5daxpyPKdS0_Pddi, L__Z5daxpyPKdS0_Pddi_14__par_region0_2.26
	.text
# -- Begin  _Z6daxpy2PKdS0_Pddi, L__Z6daxpy2PKdS0_Pddi_33__par_region0_2.27
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z6daxpy2PKdS0_Pddi
# --- daxpy2(const double *, const double *, double *, double, int)
_Z6daxpy2PKdS0_Pddi:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: xmm0
# parameter 5: ecx
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z6daxpy2PKdS0_Pddi.253:
..L254:
                                                        #32.33
        push      rbp                                           #32.33
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #32.33
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #32.33
        sub       rsp, 192                                      #32.33 c1
        mov       QWORD PTR [8+rsp], rdi                        #32.33 c3
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.12 #33.1 c3
        mov       QWORD PTR [160+rsp], rbx                      #32.33[spill] c3
        mov       QWORD PTR [128+rsp], r15                      #32.33[spill] c5
        mov       QWORD PTR [136+rsp], r14                      #32.33[spill] c5
        mov       QWORD PTR [144+rsp], r13                      #32.33[spill] c7
        mov       QWORD PTR [152+rsp], r12                      #32.33[spill] c7
        mov       QWORD PTR [16+rsp], rsi                       #32.33 c9
        mov       QWORD PTR [24+rsp], rdx                       #32.33 c9
        vmovsd    QWORD PTR [32+rsp], xmm0                      #32.33 c11
        mov       DWORD PTR [40+rsp], ecx                       #32.33 c11
        call      __kmpc_global_thread_num                      #33.1 c11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
                                # LOE eax
..B8.21:                        # Preds ..B8.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [4+rsp], eax                        #33.1 c1
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.47 #33.1 c1
        xor       eax, eax                                      #33.1 c1
..___tag_value__Z6daxpy2PKdS0_Pddi.263:
        call      __kmpc_ok_to_fork                             #33.1
..___tag_value__Z6daxpy2PKdS0_Pddi.264:
                                # LOE eax
..B8.2:                         # Preds ..B8.21
                                # Execution count [1.00e+00]
        test      eax, eax                                      #33.1 c1
        je        ..B8.4        # Prob 50%                      #33.1 c3
                                # LOE
..B8.3:                         # Preds ..B8.2
                                # Execution count [0.00e+00]
        add       rsp, -32                                      #33.1 c1
        mov       edx, offset flat: L__Z6daxpy2PKdS0_Pddi_33__par_region0_2.27 #33.1 c1
        lea       rcx, QWORD PTR [72+rsp]                       #33.1 c3
        lea       r10, QWORD PTR [32+rsp]                       #33.1 c3
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.47 #33.1 c3
        mov       esi, 7                                        #33.1 c3
        lea       rax, QWORD PTR [-24+rcx]                      #33.1 c5
        mov       QWORD PTR [rsp], rax                          #33.1 c7
        lea       r8, QWORD PTR [-8+rcx]                        #33.1 c7
        lea       r9, QWORD PTR [-32+rcx]                       #33.1 c9
        lea       rbx, QWORD PTR [8+rax]                        #33.1 c9
        mov       QWORD PTR [8+rsp], rbx                        #33.1 c11
        lea       r11, QWORD PTR [48+rax]                       #33.1 c11
        mov       QWORD PTR [16+rsp], r10                       #33.1 c13
        xor       eax, eax                                      #33.1 c13
        mov       QWORD PTR [24+rsp], r11                       #33.1 c13
..___tag_value__Z6daxpy2PKdS0_Pddi.265:
        call      __kmpc_fork_call                              #33.1
..___tag_value__Z6daxpy2PKdS0_Pddi.266:
                                # LOE
..B8.22:                        # Preds ..B8.3
                                # Execution count [0.00e+00]
        add       rsp, 32                                       #33.1 c1
        jmp       ..B8.7        # Prob 100%                     #33.1 c1
                                # LOE
..B8.4:                         # Preds ..B8.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.47 #33.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #33.1 c1
        xor       eax, eax                                      #33.1 c1
..___tag_value__Z6daxpy2PKdS0_Pddi.267:
        call      __kmpc_serialized_parallel                    #33.1
..___tag_value__Z6daxpy2PKdS0_Pddi.268:
                                # LOE
..B8.5:                         # Preds ..B8.4
                                # Execution count [0.00e+00]
        add       rsp, -32                                      #33.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z6daxpy2PKdS0_Pddi_0 #33.1 c1
        lea       rdi, QWORD PTR [36+rsp]                       #33.1 c3
        lea       rbx, QWORD PTR [32+rsp]                       #33.1 c3
        lea       rdx, QWORD PTR [36+rdi]                       #33.1 c5
        lea       rax, QWORD PTR [-16+rdx]                      #33.1 c7
        mov       QWORD PTR [rsp], rax                          #33.1 c9
        lea       rcx, QWORD PTR [-8+rdx]                       #33.1 c9
        mov       QWORD PTR [8+rsp], rbx                        #33.1 c11
        lea       r8, QWORD PTR [-32+rdx]                       #33.1 c11
        lea       r9, QWORD PTR [-24+rdx]                       #33.1 c13
        lea       r10, QWORD PTR [40+rax]                       #33.1 c13
        mov       QWORD PTR [16+rsp], r10                       #33.1 c15
..___tag_value__Z6daxpy2PKdS0_Pddi.269:
        call      L__Z6daxpy2PKdS0_Pddi_33__par_region0_2.27    #33.1
..___tag_value__Z6daxpy2PKdS0_Pddi.270:
                                # LOE
..B8.23:                        # Preds ..B8.5
                                # Execution count [0.00e+00]
        add       rsp, 32                                       #33.1 c1
                                # LOE
..B8.6:                         # Preds ..B8.23
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.47 #33.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #33.1 c1
        xor       eax, eax                                      #33.1 c1
..___tag_value__Z6daxpy2PKdS0_Pddi.271:
        call      __kmpc_end_serialized_parallel                #33.1
..___tag_value__Z6daxpy2PKdS0_Pddi.272:
                                # LOE
..B8.7:                         # Preds ..B8.22 ..B8.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [128+rsp]                      #45.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [136+rsp]                      #45.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [144+rsp]                      #45.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [152+rsp]                      #45.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [160+rsp]                      #45.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #45.1 c11
        pop       rbp                                           #45.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #45.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z6daxpy2PKdS0_Pddi_33__par_region0_2.27:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 16 + rbp
# parameter 8: 24 + rbp
# parameter 9: 32 + rbp
..B8.8:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
        push      rbp                                           #33.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #33.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #33.1
        sub       rsp, 192                                      #33.1 c1
        mov       QWORD PTR [160+rsp], rbx                      #33.1[spill] c3
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdx]                          #33.1 c3
        mov       QWORD PTR [128+rsp], r15                      #33.1[spill] c5
        vbroadcastsd zmm0, QWORD PTR [rcx]                      #36.24 c7
        mov       QWORD PTR [136+rsp], r14                      #33.1[spill] c7
        mov       rax, QWORD PTR [16+rbp]                       #33.1 c9
        mov       QWORD PTR [144+rsp], r13                      #33.1[spill] c13 stall 1
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
        mov       r15d, DWORD PTR [rdi]                         #33.1 c13
        mov       QWORD PTR [152+rsp], r12                      #33.1[spill] c15
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
        mov       r14, QWORD PTR [rax]                          #33.1 c17
        vmovups   ZMMWORD PTR [rsp], zmm0                       #36.24[spill] c17
        mov       r13, QWORD PTR [r9]                           #33.1 c21 stall 1
        mov       r12, QWORD PTR [r8]                           #33.1 c23
        test      ebx, ebx                                      #38.39 c23
        jle       ..B8.16       # Prob 10%                      #38.39 c25
                                # LOE r12 r13 r14 ebx r15d
..B8.9:                         # Preds ..B8.8
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #37.1 c1
        mov       DWORD PTR [64+rsp], eax                       #37.1 c3
        add       ebx, -1                                       #37.1 c3
        mov       DWORD PTR [72+rsp], eax                       #37.1 c3
        mov       r11d, 8                                       #37.1 c3
        mov       DWORD PTR [68+rsp], ebx                       #37.1 c5
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.20 #37.1 c5
        mov       DWORD PTR [76+rsp], r11d                      #37.1 c5
        add       rsp, -32                                      #37.1 c5
        lea       r10, QWORD PTR [108+rsp]                      #37.1 c7
        mov       QWORD PTR [rsp], r10                          #37.1 c9
        mov       esi, r15d                                     #37.1 c9
        mov       DWORD PTR [8+rsp], r11d                       #37.1 c9
        mov       edx, 34                                       #37.1 c9
        mov       DWORD PTR [16+rsp], 1                         #37.1 c11
        lea       rcx, QWORD PTR [104+rsp]                      #37.1 c11
        lea       r8, QWORD PTR [96+rsp]                        #37.1 c13
        lea       r9, QWORD PTR [100+rsp]                       #37.1 c13
        call      __kmpc_for_static_init_4                      #37.1 c15
                                # LOE r12 r13 r14 ebx r15d
..B8.24:                        # Preds ..B8.9
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #37.1 c1
                                # LOE r12 r13 r14 ebx r15d
..B8.10:                        # Preds ..B8.24
                                # Execution count [0.00e+00]
        movsxd    rdx, DWORD PTR [64+rsp]                       #37.1 c1
        movsxd    rbx, ebx                                      #37.1 c1
        mov       eax, DWORD PTR [68+rsp]                       #37.1 c1
        cmp       rdx, rbx                                      #37.1 c5 stall 1
        jg        ..B8.15       # Prob 50%                      #37.1 c7
                                # LOE rdx r12 r13 r14 eax ebx r15d
..B8.11:                        # Preds ..B8.10
                                # Execution count [0.00e+00]
        cmp       eax, ebx                                      #37.1 c1
        cmovl     ebx, eax                                      #37.1 c3
        lea       rax, QWORD PTR [rdx*8]                        #37.1 c3
        movsxd    rbx, ebx                                      #37.1 c5
        cmp       rdx, rbx                                      #38.39 c7
        jg        ..B8.15       # Prob 50%                      #38.39 c9
                                # LOE rax rdx rbx r12 r13 r14 r15d
..B8.12:                        # Preds ..B8.11
                                # Execution count [9.00e-01]
        vmovups   zmm1, ZMMWORD PTR [rsp]                       #[spill] c1
                                # LOE rax rdx rbx r12 r13 r14 r15d zmm1
..B8.13:                        # Preds ..B8.13 ..B8.12
                                # Execution count [5.00e+00]
        vmovups   zmm0, ZMMWORD PTR [rax+r12]                   #39.24 c1
        add       rdx, 8                                        #38.31 c1
        vfmadd213pd zmm0, zmm1, ZMMWORD PTR [rax+r13]           #39.24 c7 stall 2
        vmovntpd  ZMMWORD PTR [rax+r14], zmm0                   #42.7 c13 stall 2
        add       rax, 64                                       #38.31 c13
        cmp       rdx, rbx                                      #38.39 c13
        jle       ..B8.13       # Prob 82%                      #38.39 c15
                                # LOE rax rdx rbx r12 r13 r14 r15d zmm1
..B8.15:                        # Preds ..B8.13 ..B8.11 ..B8.10
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.20 #37.1 c1
        mov       esi, r15d                                     #37.1 c1
        call      __kmpc_for_static_fini                        #37.1 c3
                                # LOE r15d
..B8.16:                        # Preds ..B8.15 ..B8.8
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.220_2_kmpc_loc_struct_pack.39 #43.5 c1
        mov       esi, r15d                                     #43.5 c1
        xor       eax, eax                                      #43.5 c3
..___tag_value__Z6daxpy2PKdS0_Pddi.290:
        call      __kmpc_barrier                                #43.5
..___tag_value__Z6daxpy2PKdS0_Pddi.291:
                                # LOE
..B8.17:                        # Preds ..B8.16
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [128+rsp]                      #33.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [136+rsp]                      #33.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [144+rsp]                      #33.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [152+rsp]                      #33.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [160+rsp]                      #33.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #33.1 c11
        pop       rbp                                           #33.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #33.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z6daxpy2PKdS0_Pddi,@function
	.size	_Z6daxpy2PKdS0_Pddi,.-_Z6daxpy2PKdS0_Pddi
	.data
	.space 2, 0x00 	# pad
	.align 4
.2.220_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.220_2__kmpc_loc_pack.11
	.align 4
.2.220_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	50
	.byte	59
	.byte	51
	.byte	51
	.byte	59
	.byte	51
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.220_2_kmpc_loc_struct_pack.47:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.220_2__kmpc_loc_pack.46
	.align 4
.2.220_2__kmpc_loc_pack.46:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	50
	.byte	59
	.byte	51
	.byte	51
	.byte	59
	.byte	52
	.byte	52
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.220_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.220_2__kmpc_loc_pack.19
	.align 4
.2.220_2__kmpc_loc_pack.19:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	50
	.byte	59
	.byte	51
	.byte	55
	.byte	59
	.byte	52
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.220_2_kmpc_loc_struct_pack.39:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.220_2__kmpc_loc_pack.38
	.align 4
.2.220_2__kmpc_loc_pack.38:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	50
	.byte	59
	.byte	52
	.byte	51
	.byte	59
	.byte	52
	.byte	51
	.byte	59
	.byte	59
	.data
# -- End  _Z6daxpy2PKdS0_Pddi, L__Z6daxpy2PKdS0_Pddi_33__par_region0_2.27
	.text
# -- Begin  _Z6daxpy3PK7double2Pddi, L__Z6daxpy3PK7double2Pddi_53__par_region0_2.28
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z6daxpy3PK7double2Pddi
# --- daxpy3(const double2 *, double *, double, int)
_Z6daxpy3PK7double2Pddi:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: xmm0
# parameter 4: edx
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z6daxpy3PK7double2Pddi.300:
..L301:
                                                        #52.33
        push      rbp                                           #52.33
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #52.33
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #52.33
        sub       rsp, 128                                      #52.33 c1
        mov       QWORD PTR [48+rsp], rdi                       #52.33 c3
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.12 #53.1 c3
        mov       QWORD PTR [40+rsp], rbx                       #52.33[spill] c3
        mov       QWORD PTR [8+rsp], r15                        #52.33[spill] c5
        mov       QWORD PTR [16+rsp], r14                       #52.33[spill] c5
        mov       QWORD PTR [24+rsp], r13                       #52.33[spill] c7
        mov       QWORD PTR [32+rsp], r12                       #52.33[spill] c7
        mov       QWORD PTR [56+rsp], rsi                       #52.33 c9
        vmovsd    QWORD PTR [64+rsp], xmm0                      #52.33 c9
        mov       DWORD PTR [72+rsp], edx                       #52.33 c11
        call      __kmpc_global_thread_num                      #53.1 c11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xff, 0xff, 0xff, 0x22
                                # LOE eax
..B9.39:                        # Preds ..B9.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [4+rsp], eax                        #53.1 c1
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.46 #53.1 c1
        xor       eax, eax                                      #53.1 c1
..___tag_value__Z6daxpy3PK7double2Pddi.310:
        call      __kmpc_ok_to_fork                             #53.1
..___tag_value__Z6daxpy3PK7double2Pddi.311:
                                # LOE eax
..B9.2:                         # Preds ..B9.39
                                # Execution count [1.00e+00]
        test      eax, eax                                      #53.1 c1
        je        ..B9.4        # Prob 50%                      #53.1 c3
                                # LOE
..B9.3:                         # Preds ..B9.2
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #53.1 c1
        mov       edx, offset flat: L__Z6daxpy3PK7double2Pddi_53__par_region0_2.28 #53.1 c1
        lea       rcx, QWORD PTR [88+rsp]                       #53.1 c3
        lea       rbx, QWORD PTR [16+rsp]                       #53.1 c3
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.46 #53.1 c3
        mov       esi, 5                                        #53.1 c3
        lea       rax, QWORD PTR [-24+rcx]                      #53.1 c5
        mov       QWORD PTR [rsp], rax                          #53.1 c7
        lea       r8, QWORD PTR [-8+rcx]                        #53.1 c7
        mov       QWORD PTR [8+rsp], rbx                        #53.1 c9
        lea       r9, QWORD PTR [-16+rcx]                       #53.1 c9
        xor       eax, eax                                      #53.1 c9
..___tag_value__Z6daxpy3PK7double2Pddi.312:
        call      __kmpc_fork_call                              #53.1
..___tag_value__Z6daxpy3PK7double2Pddi.313:
                                # LOE
..B9.40:                        # Preds ..B9.3
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #53.1 c1
        jmp       ..B9.7        # Prob 100%                     #53.1 c1
                                # LOE
..B9.4:                         # Preds ..B9.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.46 #53.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #53.1 c1
        xor       eax, eax                                      #53.1 c1
..___tag_value__Z6daxpy3PK7double2Pddi.314:
        call      __kmpc_serialized_parallel                    #53.1
..___tag_value__Z6daxpy3PK7double2Pddi.315:
                                # LOE
..B9.5:                         # Preds ..B9.4
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #53.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z6daxpy3PK7double2Pddi_0 #53.1 c1
        lea       rdi, QWORD PTR [20+rsp]                       #53.1 c3
        lea       rax, QWORD PTR [16+rsp]                       #53.1 c3
        mov       QWORD PTR [rsp], rax                          #53.1 c5
        lea       rdx, QWORD PTR [68+rdi]                       #53.1 c5
        lea       rcx, QWORD PTR [-8+rdx]                       #53.1 c7
        lea       r8, QWORD PTR [-16+rdx]                       #53.1 c7
        lea       r9, QWORD PTR [-24+rdx]                       #53.1 c9
..___tag_value__Z6daxpy3PK7double2Pddi.316:
        call      L__Z6daxpy3PK7double2Pddi_53__par_region0_2.28 #53.1
..___tag_value__Z6daxpy3PK7double2Pddi.317:
                                # LOE
..B9.41:                        # Preds ..B9.5
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #53.1 c1
                                # LOE
..B9.6:                         # Preds ..B9.41
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.46 #53.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #53.1 c1
        xor       eax, eax                                      #53.1 c1
..___tag_value__Z6daxpy3PK7double2Pddi.318:
        call      __kmpc_end_serialized_parallel                #53.1
..___tag_value__Z6daxpy3PK7double2Pddi.319:
                                # LOE
..B9.7:                         # Preds ..B9.40 ..B9.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #62.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #62.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #62.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #62.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #62.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #62.1 c11
        pop       rbp                                           #62.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #62.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z6daxpy3PK7double2Pddi_53__par_region0_2.28:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 16 + rbp
..B9.8:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
        push      rbp                                           #53.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #53.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #53.1
        sub       rsp, 128                                      #53.1 c1
        mov       QWORD PTR [16+rsp], r14                       #53.1[spill] c3
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xff, 0xff, 0xff, 0x22
        mov       r14d, DWORD PTR [rdx]                         #53.1 c3
        mov       QWORD PTR [40+rsp], rbx                       #53.1[spill] c5
        vmovsd    xmm0, QWORD PTR [rcx]                         #53.1 c7
        mov       QWORD PTR [8+rsp], r15                        #53.1[spill] c7
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xff, 0xff, 0xff, 0x22
        mov       r15, QWORD PTR [r8]                           #53.1 c9
        mov       QWORD PTR [24+rsp], r13                       #53.1[spill] c13 stall 1
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xff, 0xff, 0xff, 0x22
        mov       r13d, DWORD PTR [rdi]                         #53.1 c13
        mov       QWORD PTR [32+rsp], r12                       #53.1[spill] c15
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xff, 0xff, 0xff, 0x22
        mov       r12, QWORD PTR [r9]                           #53.1 c17
        vmovsd    QWORD PTR [rsp], xmm0                         #53.1[spill] c17
        test      r14d, r14d                                    #58.36 c17
        jle       ..B9.30       # Prob 10%                      #58.36 c19
                                # LOE r12 r15 r13d r14d
..B9.9:                         # Preds ..B9.8
                                # Execution count [5.00e+00]
        xor       ebx, ebx                                      #57.1 c1
        mov       DWORD PTR [48+rsp], ebx                       #57.1 c3
        add       r14d, -1                                      #57.1 c3
        mov       DWORD PTR [56+rsp], ebx                       #57.1 c3
        mov       r10d, 1                                       #57.1 c3
        mov       DWORD PTR [52+rsp], r14d                      #57.1 c5
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.20 #57.1 c5
        mov       DWORD PTR [60+rsp], r10d                      #57.1 c5
        add       rsp, -32                                      #57.1 c5
        lea       rax, QWORD PTR [92+rsp]                       #57.1 c7
        mov       QWORD PTR [rsp], rax                          #57.1 c9
        mov       esi, r13d                                     #57.1 c9
        mov       DWORD PTR [8+rsp], r10d                       #57.1 c9
        mov       edx, 34                                       #57.1 c9
        mov       DWORD PTR [16+rsp], r10d                      #57.1 c11
        lea       rcx, QWORD PTR [88+rsp]                       #57.1 c11
        lea       r8, QWORD PTR [80+rsp]                        #57.1 c13
        lea       r9, QWORD PTR [84+rsp]                        #57.1 c13
        call      __kmpc_for_static_init_4                      #57.1 c15
                                # LOE r12 r15 ebx r13d r14d
..B9.42:                        # Preds ..B9.9
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #57.1 c1
                                # LOE r12 r15 ebx r13d r14d
..B9.10:                        # Preds ..B9.42
                                # Execution count [0.00e+00]
        movsxd    rdx, DWORD PTR [48+rsp]                       #57.1 c1
        movsxd    r14, r14d                                     #57.1 c1
        mov       eax, DWORD PTR [52+rsp]                       #57.1 c1
        cmp       rdx, r14                                      #57.1 c5 stall 1
        jg        ..B9.29       # Prob 50%                      #57.1 c7
                                # LOE rdx r12 r15 eax ebx r13d r14d
..B9.11:                        # Preds ..B9.10
                                # Execution count [0.00e+00]
        cmp       eax, r14d                                     #57.1 c1
        cmovl     r14d, eax                                     #57.1 c3
        movsxd    r14, r14d                                     #57.1 c5
        cmp       rdx, r14                                      #58.36 c7
        jg        ..B9.29       # Prob 50%                      #58.36 c9
                                # LOE rdx r12 r15 ebx r13d r14d
..B9.12:                        # Preds ..B9.11
                                # Execution count [9.00e-01]
        sub       r14d, edx                                     #57.1 c1
        add       r14d, 1                                       #57.1 c3
        cmp       r14d, 16                                      #57.1 c5
        jl        ..B9.25       # Prob 10%                      #57.1 c7
                                # LOE rdx r12 r15 ebx r13d r14d
..B9.13:                        # Preds ..B9.12
                                # Execution count [9.00e-01]
        lea       rax, QWORD PTR [r15+rdx*8]                    #59.7 c1
        cmp       r14d, 345                                     #57.1 c1
        jl        ..B9.34       # Prob 10%                      #57.1 c3
                                # LOE rax rdx r12 r15 ebx r13d r14d
..B9.14:                        # Preds ..B9.13
                                # Execution count [9.00e-01]
        mov       r10, rax                                      #57.1 c1
        and       r10, 63                                       #57.1 c3
        test      r10d, r10d                                    #57.1 c3
        je        ..B9.17       # Prob 50%                      #57.1 c5
                                # LOE rax rdx r12 r15 ebx r10d r13d r14d
..B9.15:                        # Preds ..B9.14
                                # Execution count [9.00e-01]
        test      r10d, 7                                       #57.1 c1
        jne       ..B9.25       # Prob 10%                      #57.1 c3
                                # LOE rax rdx r12 r15 ebx r10d r13d r14d
..B9.16:                        # Preds ..B9.15
                                # Execution count [4.50e-01]
        neg       r10d                                          #57.1 c1
        add       r10d, 64                                      #57.1 c3
        shr       r10d, 3                                       #57.1 c5
                                # LOE rax rdx r12 r15 ebx r10d r13d r14d
..B9.17:                        # Preds ..B9.16 ..B9.14
                                # Execution count [9.00e-01]
        lea       ecx, DWORD PTR [16+r10]                       #57.1 c1
        cmp       r14d, ecx                                     #57.1 c3
        jl        ..B9.25       # Prob 10%                      #57.1 c5
                                # LOE rax rdx r12 r15 ebx r10d r13d r14d
..B9.18:                        # Preds ..B9.17
                                # Execution count [9.00e-01]
        mov       ebx, r14d                                     #57.1 c1
        mov       rcx, rdx                                      #59.19 c1
        sub       ebx, r10d                                     #57.1 c3
        shl       rcx, 4                                        #59.19 c3
        and       ebx, 15                                       #57.1 c5
        add       rcx, r12                                      #59.28 c5
        neg       ebx                                           #57.1 c7
        xor       r9d, r9d                                      #57.1 c7
        add       ebx, r14d                                     #57.1 c9
        xor       r8d, r8d                                      #57.1 c9
        mov       edi, r10d                                     #57.1 c11
        cmp       r10d, 1                                       #57.1 c11
        jb        ..B9.22       # Prob 0%                       #57.1 c13
                                # LOE rax rdx rcx rdi r8 r9 r12 r15 ebx r13d r14d
..B9.19:                        # Preds ..B9.18
                                # Execution count [9.00e-01]
        vmovsd    xmm1, QWORD PTR [rsp]                         #[spill] c1
                                # LOE rax rdx rcx rdi r8 r9 r12 r15 ebx r13d r14d xmm1
..B9.20:                        # Preds ..B9.19 ..B9.20
                                # Execution count [5.00e+00]
        vmovsd    xmm0, QWORD PTR [r8+rcx]                      #59.19 c1
        vfmadd213sd xmm0, xmm1, QWORD PTR [8+r8+rcx]            #59.7 c7 stall 2
        vmovsd    QWORD PTR [rax+r9*8], xmm0                    #59.7 c13 stall 2
        add       r9, 1                                         #57.1 c13
        add       r8, 16                                        #57.1 c13
        cmp       r9, rdi                                       #57.1 c15
        jb        ..B9.20       # Prob 82%                      #57.1 c17
                                # LOE rax rdx rcx rdi r8 r9 r12 r15 ebx r13d r14d xmm1
..B9.22:                        # Preds ..B9.20 ..B9.18 ..B9.34
                                # Execution count [9.00e-01]
        mov       r9, rdi                                       #57.1 c1
        vbroadcastsd zmm2, QWORD PTR [rsp]                      #59.19[spill] c1
        vmovups   zmm1, ZMMWORD PTR .L_2il0floatpacket.29[rip]  #59.19 c1
        movsxd    r8, ebx                                       #57.1 c1
        shl       r9, 4                                         #57.1 c3
        vmovups   zmm0, ZMMWORD PTR .L_2il0floatpacket.30[rip]  #59.19 c7 stall 1
        .align    16,0x90
                                # LOE rax rdx rcx rdi r8 r9 r12 r15 ebx r13d r14d zmm0 zmm1 zmm2
..B9.23:                        # Preds ..B9.23 ..B9.22
                                # Execution count [5.00e+00]
        vmovups   zmm5, ZMMWORD PTR [r9+rcx]                    #59.19 c1
        vmovups   zmm6, ZMMWORD PTR [128+r9+rcx]                #59.19 c1
        vmovaps   zmm3, zmm1                                    #59.19 c1
        vmovaps   zmm4, zmm1                                    #59.19 c1
        vpermi2pd zmm3, zmm5, ZMMWORD PTR [64+r9+rcx]           #59.19 c7 stall 2
        vpermt2pd zmm5, zmm0, ZMMWORD PTR [64+r9+rcx]           #59.19 c7
        vpermi2pd zmm4, zmm6, ZMMWORD PTR [192+r9+rcx]          #59.19 c9
        vpermt2pd zmm6, zmm0, ZMMWORD PTR [192+r9+rcx]          #59.19 c9
        vfmadd231pd zmm5, zmm3, zmm2                            #59.28 c9
        vmovupd   ZMMWORD PTR [rax+rdi*8], zmm5                 #59.7 c15 stall 2
        vfmadd231pd zmm6, zmm4, zmm2                            #59.28 c15
        vmovupd   ZMMWORD PTR [64+rax+rdi*8], zmm6              #59.7 c21 stall 2
        add       rdi, 16                                       #57.1 c21
        add       r9, 256                                       #57.1 c21
        cmp       rdi, r8                                       #57.1 c23
        jb        ..B9.23       # Prob 82%                      #57.1 c25
                                # LOE rax rdx rcx rdi r8 r9 r12 r15 ebx r13d r14d zmm0 zmm1 zmm2
..B9.25:                        # Preds ..B9.12 ..B9.15 ..B9.17 ..B9.23
                                # Execution count [9.00e-01]
        lea       eax, DWORD PTR [1+rbx]                        #57.1 c1
        cmp       eax, r14d                                     #57.1 c3
        ja        ..B9.29       # Prob 50%                      #57.1 c5
                                # LOE rdx r12 r15 ebx r13d r14d
..B9.26:                        # Preds ..B9.25
                                # Execution count [9.00e-01]
        mov       eax, r14d                                     #57.1 c1
        mov       ecx, 8                                        #57.1 c1
        vmovdqu   ymm4, YMMWORD PTR .L_2il0floatpacket.19[rip]  #57.1 c1
        vbroadcastsd zmm3, QWORD PTR [rsp]                      #59.19[spill] c1
        sub       eax, ebx                                      #57.1 c3
        movsxd    rbx, ebx                                      #59.19 c3
        vmovd     xmm1, ecx                                     #57.1 c3
        add       rdx, rbx                                      #59.19 c5
        vmovd     xmm0, eax                                     #57.1 c5
        movsxd    r14, r14d                                     #57.1 c5
        mov       rdi, rdx                                      #59.19 c7
        vpbroadcastd ymm0, xmm0                                 #57.1 c7
        lea       rax, QWORD PTR [r15+rdx*8]                    #59.7 c7
        vmovups   zmm2, ZMMWORD PTR .L_2il0floatpacket.29[rip]  #59.19 c7
        shl       rdi, 4                                        #59.19 c9
        mov       edx, 255                                      #57.1 c9
        vpbroadcastd ymm5, xmm1                                 #57.1 c11
        xor       ecx, ecx                                      #57.1 c11
        vmovups   zmm1, ZMMWORD PTR .L_2il0floatpacket.30[rip]  #59.19 c11
        add       r12, rdi                                      #59.19 c13
        sub       r14, rbx                                      #57.1 c13
        kmovw     k1, edx                                       #57.1 c15
        .align    16,0x90
                                # LOE rax rcx r12 r14 r13d ymm4 ymm5 zmm0 zmm1 zmm2 zmm3 k1
..B9.27:                        # Preds ..B9.27 ..B9.26
                                # Execution count [5.00e+00]
        vmovaps   zmm8, zmm2                                    #59.19 c1
        add       rcx, 8                                        #57.1 c1
        vpcmpgtd  k4{k1}, zmm0, zmm4                            #57.1 c3
        vpaddd    ymm4, ymm4, ymm5                              #57.1 c3
        vpternlogq zmm6{k4}{z}, zmm6, zmm6, 255                 #59.19 c5
        vptestmd  k2, zmm6, zmm6                                #59.19 c7
        kshiftrw  k3, k2, 8                                     #59.19 c11 stall 1
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [r12]                #59.19 c11
        vmovupd   zmm7{k3}{z}, ZMMWORD PTR [64+r12]             #59.19 c13
        add       r12, 128                                      #57.1 c13
        vpermi2pd zmm8, zmm9, zmm7                              #59.19 c19 stall 2
        vpermt2pd zmm9, zmm1, zmm7                              #59.19 c19
        vfmadd231pd zmm9, zmm8, zmm3                            #59.28 c21
        vmovupd   ZMMWORD PTR [rax]{k4}, zmm9                   #59.7 c27 stall 2
        add       rax, 64                                       #57.1 c27
        cmp       rcx, r14                                      #57.1 c27
        jb        ..B9.27       # Prob 82%                      #57.1 c29
                                # LOE rax rcx r12 r14 r13d ymm4 ymm5 zmm0 zmm1 zmm2 zmm3 k1
..B9.29:                        # Preds ..B9.27 ..B9.10 ..B9.11 ..B9.25
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.20 #57.1 c1
        mov       esi, r13d                                     #57.1 c1
        call      __kmpc_for_static_fini                        #57.1 c3
                                # LOE r13d
..B9.30:                        # Preds ..B9.29 ..B9.8
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.221_2_kmpc_loc_struct_pack.38 #60.5 c1
        mov       esi, r13d                                     #60.5 c1
        xor       eax, eax                                      #60.5 c3
..___tag_value__Z6daxpy3PK7double2Pddi.337:
        call      __kmpc_barrier                                #60.5
..___tag_value__Z6daxpy3PK7double2Pddi.338:
                                # LOE
..B9.31:                        # Preds ..B9.30
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #53.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #53.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #53.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #53.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #53.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #53.1 c11
        pop       rbp                                           #53.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #53.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B9.34:                        # Preds ..B9.13
                                # Execution count [9.00e-02]: Infreq
        mov       rcx, rdx                                      #59.19 c1
        mov       ebx, r14d                                     #57.1 c1
        shl       rcx, 4                                        #59.19 c3
        and       ebx, -16                                      #57.1 c3
        add       rcx, r12                                      #59.19 c5
        xor       edi, edi                                      #57.1 c5
        jmp       ..B9.22       # Prob 100%                     #57.1 c5
        .align    16,0x90
                                # LOE rax rdx rcx rdi r12 r15 ebx r13d r14d
	.cfi_endproc
# mark_end;
	.type	_Z6daxpy3PK7double2Pddi,@function
	.size	_Z6daxpy3PK7double2Pddi,.-_Z6daxpy3PK7double2Pddi
	.data
	.space 1, 0x00 	# pad
	.align 4
.2.221_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.221_2__kmpc_loc_pack.11
	.align 4
.2.221_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	51
	.byte	59
	.byte	53
	.byte	51
	.byte	59
	.byte	53
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.221_2_kmpc_loc_struct_pack.46:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.221_2__kmpc_loc_pack.45
	.align 4
.2.221_2__kmpc_loc_pack.45:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	51
	.byte	59
	.byte	53
	.byte	51
	.byte	59
	.byte	54
	.byte	49
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.221_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.221_2__kmpc_loc_pack.19
	.align 4
.2.221_2__kmpc_loc_pack.19:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	51
	.byte	59
	.byte	53
	.byte	55
	.byte	59
	.byte	54
	.byte	48
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.221_2_kmpc_loc_struct_pack.38:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.221_2__kmpc_loc_pack.37
	.align 4
.2.221_2__kmpc_loc_pack.37:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	100
	.byte	97
	.byte	120
	.byte	112
	.byte	121
	.byte	51
	.byte	59
	.byte	54
	.byte	48
	.byte	59
	.byte	54
	.byte	48
	.byte	59
	.byte	59
	.data
# -- End  _Z6daxpy3PK7double2Pddi, L__Z6daxpy3PK7double2Pddi_53__par_region0_2.28
	.text
# -- Begin  _Z9referenceRKSt6vectorIdSaIdEES3_RS1_d
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z9referenceRKSt6vectorIdSaIdEES3_RS1_d
# --- reference(const std::vector<double, std::allocator<double>> &, const std::vector<double, std::allocator<double>> &, std::vector<double, std::allocator<double>> &, double)
_Z9referenceRKSt6vectorIdSaIdEES3_RS1_d:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: xmm0
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z9referenceRKSt6vectorIdSaIdEES3_RS1_d.354:
..L355:
                                                        #67.32
        mov       QWORD PTR [-8+rsp], rbx                       #67.32[spill] c3
        mov       rax, rsi                                      #67.32 c3
        mov       rsi, QWORD PTR [rdi]                          #68.22 c3
        mov       r8, QWORD PTR [8+rdi]                         #68.22 c5
        sub       r8, rsi                                       #68.22 c9 stall 1
        shr       r8, 3                                         #68.22 c11
	.cfi_offset 3, -16
        mov       ebx, r8d                                      #68.22 c13
        test      ebx, ebx                                      #69.23 c15
        jle       ..B10.32      # Prob 50%                      #69.23 c17
                                # LOE rax rdx rbp rsi r8 r12 r13 r14 r15 ebx xmm0
..B10.2:                        # Preds ..B10.1
                                # Execution count [0.00e+00]
        mov       rdi, QWORD PTR [rdx]                          #70.6 c1
        mov       rcx, QWORD PTR [rax]                          #70.24 c1
        cmp       rdi, rsi                                      #70.17 c5 stall 1
        jbe       ..B10.4       # Prob 50%                      #70.17 c7
                                # LOE rcx rbp rsi rdi r8 r12 r13 r14 r15 ebx xmm0
..B10.3:                        # Preds ..B10.2
                                # Execution count [0.00e+00]
        movsxd    rdx, r8d                                      #68.18 c1
        mov       rax, rdi                                      #70.17 c1
        lea       r8, QWORD PTR [rdx*8]                         #70.17 c3
        sub       rax, rsi                                      #70.17 c3
        cmp       rax, r8                                       #70.17 c5
        jge       ..B10.6       # Prob 50%                      #70.17 c7
        jmp       ..B10.26      # Prob 100%                     #70.17 c7
                                # LOE rdx rcx rbp rsi rdi r8 r12 r13 r14 r15 ebx xmm0
..B10.4:                        # Preds ..B10.2
                                # Execution count [0.00e+00]
        cmp       rsi, rdi                                      #70.17 c1
        jbe       ..B10.26      # Prob 50%                      #70.17 c3
                                # LOE rcx rbp rsi rdi r8 r12 r13 r14 r15 ebx xmm0
..B10.5:                        # Preds ..B10.4
                                # Execution count [0.00e+00]
        movsxd    rdx, r8d                                      #68.18 c1
        mov       rax, rsi                                      #70.17 c1
        lea       r8, QWORD PTR [rdx*8]                         #70.17 c3
        sub       rax, rdi                                      #70.17 c3
        cmp       rax, r8                                       #70.17 c5
        jl        ..B10.26      # Prob 50%                      #70.17 c7
                                # LOE rdx rcx rbp rsi rdi r8 r12 r13 r14 r15 ebx xmm0
..B10.6:                        # Preds ..B10.5 ..B10.3
                                # Execution count [0.00e+00]
        cmp       rdi, rcx                                      #70.24 c1
        jbe       ..B10.8       # Prob 50%                      #70.24 c3
                                # LOE rdx rcx rbp rsi rdi r8 r12 r13 r14 r15 ebx xmm0
..B10.7:                        # Preds ..B10.6
                                # Execution count [0.00e+00]
        mov       rax, rdi                                      #70.24 c1
        sub       rax, rcx                                      #70.24 c3
        cmp       rax, r8                                       #70.24 c5
        jge       ..B10.10      # Prob 50%                      #70.24 c7
        jmp       ..B10.26      # Prob 100%                     #70.24 c7
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 ebx xmm0
..B10.8:                        # Preds ..B10.6
                                # Execution count [0.00e+00]
        cmp       rcx, rdi                                      #70.24 c1
        jbe       ..B10.26      # Prob 50%                      #70.24 c3
                                # LOE rdx rcx rbp rsi rdi r8 r12 r13 r14 r15 ebx xmm0
..B10.9:                        # Preds ..B10.8
                                # Execution count [0.00e+00]
        mov       rax, rcx                                      #70.24 c1
        sub       rax, rdi                                      #70.24 c3
        cmp       rax, r8                                       #70.24 c5
        jl        ..B10.26      # Prob 50%                      #70.24 c7
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 ebx xmm0
..B10.10:                       # Preds ..B10.7 ..B10.9
                                # Execution count [4.50e-01]
        cmp       ebx, 281                                      #69.3 c1
        jl        ..B10.34      # Prob 10%                      #69.3 c3
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 ebx xmm0
..B10.11:                       # Preds ..B10.10
                                # Execution count [4.50e-01]
        mov       rax, rdi                                      #69.3 c1
        and       rax, 63                                       #69.3 c3
        test      eax, eax                                      #69.3 c3
        je        ..B10.14      # Prob 50%                      #69.3 c5
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx xmm0
..B10.12:                       # Preds ..B10.11
                                # Execution count [4.50e-01]
        test      al, 7                                         #69.3 c1
        jne       ..B10.33      # Prob 10%                      #69.3 c3
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx xmm0
..B10.13:                       # Preds ..B10.12
                                # Execution count [0.00e+00]
        neg       eax                                           #69.3 c1
        add       eax, 64                                       #69.3 c3
        shr       eax, 3                                        #69.3 c5
        cmp       ebx, eax                                      #69.3 c7
        cmovl     eax, ebx                                      #69.3 c9
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx xmm0
..B10.14:                       # Preds ..B10.13 ..B10.11
                                # Execution count [5.00e-01]
        mov       r8d, ebx                                      #69.3 c1
        sub       r8d, eax                                      #69.3 c3
        and       r8d, 15                                       #69.3 c5
        neg       r8d                                           #69.3 c7
        add       r8d, ebx                                      #69.3 c9
        cmp       eax, 1                                        #69.3 c9
        jb        ..B10.18      # Prob 50%                      #69.3 c11
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx r8d xmm0
..B10.15:                       # Preds ..B10.14
                                # Execution count [4.50e-01]
        mov       r9d, 8                                        #69.3 c1
        vmovd     xmm1, eax                                     #69.3 c1
        vmovdqu   ymm3, YMMWORD PTR .L_2il0floatpacket.19[rip]  #69.3 c1
        xor       r11d, r11d                                    #69.3 c1
        vmovd     xmm2, r9d                                     #69.3 c3
        vpbroadcastd ymm1, xmm1                                 #69.3 c3
        mov       r9d, 255                                      #69.3 c3
        vpbroadcastd ymm4, xmm2                                 #69.3 c5
        vbroadcastsd zmm2, xmm0                                 #64.6 c5
        movsxd    r10, eax                                      #69.3 c5
        kmovw     k1, r9d                                       #69.3 c7
        xor       r9d, r9d                                      #69.3 c7
                                # LOE rdx rcx rbp rsi rdi r9 r10 r11 r12 r13 r14 r15 eax ebx r8d xmm0 ymm3 ymm4 zmm1 zmm2 k1
..B10.16:                       # Preds ..B10.16 ..B10.15
                                # Execution count [2.50e+00]
        add       r11, 8                                        #69.3 c1
        vpcmpgtd  k2{k1}, zmm1, zmm3                            #69.3 c3
        vpaddd    ymm3, ymm3, ymm4                              #69.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r9+rsi]             #70.17 c5
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r9+rcx]             #70.24 c5
        vfmadd231pd zmm6, zmm5, zmm2                            #70.24 c11 stall 2
        vmovupd   ZMMWORD PTR [r9+rdi]{k2}, zmm6                #70.6 c17 stall 2
        add       r9, 64                                        #69.3 c17
        cmp       r11, r10                                      #69.3 c17
        jb        ..B10.16      # Prob 82%                      #69.3 c19
                                # LOE rdx rcx rbp rsi rdi r9 r10 r11 r12 r13 r14 r15 eax ebx r8d xmm0 ymm3 ymm4 zmm1 zmm2 k1
..B10.17:                       # Preds ..B10.16
                                # Execution count [4.50e-01]
        cmp       ebx, eax                                      #69.3 c1
        je        ..B10.32      # Prob 10%                      #69.3 c3
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx r8d xmm0
..B10.18:                       # Preds ..B10.17 ..B10.14 ..B10.34
                                # Execution count [0.00e+00]
        lea       r9d, DWORD PTR [16+rax]                       #69.3 c1
        cmp       r8d, r9d                                      #69.3 c3
        jl        ..B10.22      # Prob 50%                      #69.3 c5
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx r8d xmm0
..B10.19:                       # Preds ..B10.18
                                # Execution count [4.50e-01]
        movsxd    rax, eax                                      #69.3 c1
        vbroadcastsd zmm1, xmm0                                 #64.6 c1
        movsxd    r9, r8d                                       #69.3 c1
                                # LOE rax rdx rcx rbp rsi rdi r9 r12 r13 r14 r15 ebx r8d xmm0 zmm1
..B10.20:                       # Preds ..B10.20 ..B10.19
                                # Execution count [2.50e+00]
        vmovups   zmm2, ZMMWORD PTR [rsi+rax*8]                 #70.17 c1
        vmovups   zmm3, ZMMWORD PTR [64+rsi+rax*8]              #70.17 c1
        vfmadd213pd zmm2, zmm1, ZMMWORD PTR [rcx+rax*8]         #70.24 c7 stall 2
        vmovupd   ZMMWORD PTR [rdi+rax*8], zmm2                 #70.6 c13 stall 2
        vfmadd213pd zmm3, zmm1, ZMMWORD PTR [64+rcx+rax*8]      #70.24 c13
        vmovupd   ZMMWORD PTR [64+rdi+rax*8], zmm3              #70.6 c19 stall 2
        add       rax, 16                                       #69.3 c19
        cmp       rax, r9                                       #69.3 c21
        jb        ..B10.20      # Prob 82%                      #69.3 c23
                                # LOE rax rdx rcx rbp rsi rdi r9 r12 r13 r14 r15 ebx r8d xmm0 zmm1
..B10.22:                       # Preds ..B10.20 ..B10.18 ..B10.33
                                # Execution count [5.00e-01]
        lea       eax, DWORD PTR [1+r8]                         #69.3 c1
        cmp       eax, ebx                                      #69.3 c3
        ja        ..B10.32      # Prob 50%                      #69.3 c5
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 ebx r8d xmm0
..B10.23:                       # Preds ..B10.22
                                # Execution count [4.50e-01]
        mov       eax, 8                                        #69.3 c1
        sub       ebx, r8d                                      #69.3 c1
        vmovdqu   ymm2, YMMWORD PTR .L_2il0floatpacket.19[rip]  #69.3 c1
        vmovd     xmm1, eax                                     #69.3 c3
        movsxd    r8, r8d                                       #70.18 c3
        xor       eax, eax                                      #69.3 c3
        vpbroadcastd ymm3, xmm1                                 #69.3 c5
        vbroadcastsd zmm1, xmm0                                 #64.6 c5
        vmovd     xmm0, ebx                                     #69.3 c5
        sub       rdx, r8                                       #69.3 c5
        vpbroadcastd ymm0, xmm0                                 #69.3 c7
        lea       rbx, QWORD PTR [rsi+r8*8]                     #70.17 c7
        mov       esi, 255                                      #69.3 c7
        lea       r9, QWORD PTR [rdi+r8*8]                      #70.6 c9
        kmovw     k1, esi                                       #69.3 c9
        lea       rdi, QWORD PTR [rcx+r8*8]                     #70.24 c11
        xor       ecx, ecx                                      #69.3 c11
                                # LOE rax rdx rcx rbx rbp rdi r9 r12 r13 r14 r15 ymm2 ymm3 zmm0 zmm1 k1
..B10.24:                       # Preds ..B10.24 ..B10.23
                                # Execution count [2.50e+00]
        add       rax, 8                                        #69.3 c1
        vpcmpgtd  k2{k1}, zmm0, zmm2                            #69.3 c3
        vpaddd    ymm2, ymm2, ymm3                              #69.3 c3
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rcx+rbx]            #70.17 c5
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [rcx+rdi]            #70.24 c5
        vfmadd231pd zmm5, zmm4, zmm1                            #70.24 c11 stall 2
        vmovupd   ZMMWORD PTR [rcx+r9]{k2}, zmm5                #70.6 c17 stall 2
        add       rcx, 64                                       #69.3 c17
        cmp       rax, rdx                                      #69.3 c17
        jb        ..B10.24      # Prob 82%                      #69.3 c19
        jmp       ..B10.32      # Prob 100%                     #69.3 c19
                                # LOE rax rdx rcx rbx rbp rdi r9 r12 r13 r14 r15 ymm2 ymm3 zmm0 zmm1 k1
..B10.26:                       # Preds ..B10.3 ..B10.4 ..B10.5 ..B10.7 ..B10.8
                                #       ..B10.9
                                # Execution count [5.00e-01]
        mov       eax, ebx                                      #69.3 c1
        mov       r8d, 1                                        #69.3 c1
        shr       eax, 31                                       #69.3 c3
        xor       edx, edx                                      #69.3 c3
        add       eax, ebx                                      #68.18 c5
        sar       eax, 1                                        #68.18 c7
        test      eax, eax                                      #69.3 c9
        jbe       ..B10.30      # Prob 9%                       #69.3 c11
                                # LOE rcx rbp rsi rdi r12 r13 r14 r15 eax edx ebx r8d xmm0
..B10.28:                       # Preds ..B10.26 ..B10.28
                                # Execution count [1.25e+00]
        lea       r8d, DWORD PTR [rdx+rdx]                      #70.18 c1
        add       edx, 1                                        #69.3 c1
        movsxd    r8, r8d                                       #70.25 c3
        vmovsd    xmm1, QWORD PTR [rsi+r8*8]                    #70.17 c5
        vfmadd213sd xmm1, xmm0, QWORD PTR [rcx+r8*8]            #70.6 c11 stall 2
        vmovsd    QWORD PTR [rdi+r8*8], xmm1                    #70.6 c17 stall 2
        vmovsd    xmm2, QWORD PTR [8+rsi+r8*8]                  #70.17 c17
        vfmadd213sd xmm2, xmm0, QWORD PTR [8+rcx+r8*8]          #70.6 c23 stall 2
        vmovsd    QWORD PTR [8+rdi+r8*8], xmm2                  #70.6 c29 stall 2
        cmp       edx, eax                                      #69.3 c29
        jb        ..B10.28      # Prob 63%                      #69.3 c31
                                # LOE rcx rbp rsi rdi r12 r13 r14 r15 eax edx ebx xmm0
..B10.29:                       # Preds ..B10.28
                                # Execution count [4.50e-01]
        lea       r8d, DWORD PTR [1+rdx+rdx]                    #70.6 c1
                                # LOE rcx rbp rsi rdi r12 r13 r14 r15 ebx r8d xmm0
..B10.30:                       # Preds ..B10.29 ..B10.26
                                # Execution count [5.00e-01]
        lea       eax, DWORD PTR [-1+r8]                        #69.3 c1
        cmp       eax, ebx                                      #69.3 c3
        jae       ..B10.32      # Prob 9%                       #69.3 c5
                                # LOE rcx rbp rsi rdi r12 r13 r14 r15 r8d xmm0
..B10.31:                       # Preds ..B10.30
                                # Execution count [4.50e-01]
        movsxd    r8, r8d                                       #70.18 c1
        vmovsd    xmm1, QWORD PTR [-8+rsi+r8*8]                 #70.17 c3
        vfmadd213sd xmm0, xmm1, QWORD PTR [-8+rcx+r8*8]         #70.6 c9 stall 2
        vmovsd    QWORD PTR [-8+rdi+r8*8], xmm0                 #70.6 c15 stall 2
                                # LOE rbp r12 r13 r14 r15
..B10.32:                       # Preds ..B10.24 ..B10.1 ..B10.22 ..B10.30 ..B10.17
                                #       ..B10.31
                                # Execution count [1.00e+00]
        mov       rbx, QWORD PTR [-8+rsp]                       #72.1[spill] c1
	.cfi_restore 3
        ret                                                     #72.1 c3
	.cfi_offset 3, -16
                                # LOE
..B10.33:                       # Preds ..B10.12
                                # Execution count [4.50e-02]: Infreq
        xor       r8d, r8d                                      #69.3 c1
        jmp       ..B10.22      # Prob 100%                     #69.3 c1
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 ebx r8d xmm0
..B10.34:                       # Preds ..B10.10
                                # Execution count [4.50e-02]: Infreq
        mov       r8d, ebx                                      #69.3 c1
        xor       eax, eax                                      #69.3 c1
        and       r8d, -16                                      #69.3 c3
        jmp       ..B10.18      # Prob 100%                     #69.3 c3
        .align    16,0x90
                                # LOE rdx rcx rbp rsi rdi r12 r13 r14 r15 eax ebx r8d xmm0
	.cfi_endproc
# mark_end;
	.type	_Z9referenceRKSt6vectorIdSaIdEES3_RS1_d,@function
	.size	_Z9referenceRKSt6vectorIdSaIdEES3_RS1_d,.-_Z9referenceRKSt6vectorIdSaIdEES3_RS1_d
	.data
# -- End  _Z9referenceRKSt6vectorIdSaIdEES3_RS1_d
	.text
# -- Begin  _Z11first_touchPdS_S_P7double2i, L__Z11first_touchPdS_S_P7double2i_79__par_loop0_2.31
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z11first_touchPdS_S_P7double2i
# --- first_touch(double *, double *, double *, double2 *, int)
_Z11first_touchPdS_S_P7double2i:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8d
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z11first_touchPdS_S_P7double2i.360:
..L361:
                                                        #78.38
        sub       rsp, 104                                      #78.38 c1
	.cfi_def_cfa_offset 112
        mov       QWORD PTR [48+rsp], rdi                       #78.38 c3
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.12 #79.1 c3
        mov       QWORD PTR [40+rsp], rbp                       #78.38[spill] c3
        mov       QWORD PTR [32+rsp], rbx                       #78.38[spill] c5
        mov       QWORD PTR [rsp], r15                          #78.38[spill] c5
        mov       QWORD PTR [8+rsp], r14                        #78.38[spill] c7
        mov       QWORD PTR [16+rsp], r13                       #78.38[spill] c7
        mov       QWORD PTR [24+rsp], r12                       #78.38[spill] c9
        mov       QWORD PTR [56+rsp], rsi                       #78.38 c9
        mov       QWORD PTR [64+rsp], rdx                       #78.38 c11
        mov       QWORD PTR [72+rsp], rcx                       #78.38 c11
        mov       DWORD PTR [88+rsp], r8d                       #78.38 c13
        call      __kmpc_global_thread_num                      #79.1 c13
	.cfi_offset 3, -80
	.cfi_offset 6, -72
	.cfi_offset 12, -88
	.cfi_offset 13, -96
	.cfi_offset 14, -104
	.cfi_offset 15, -112
                                # LOE eax
..B11.23:                       # Preds ..B11.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [80+rsp], eax                       #79.1 c1
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.20 #79.1 c1
        xor       eax, eax                                      #79.1 c1
..___tag_value__Z11first_touchPdS_S_P7double2i.369:
        call      __kmpc_ok_to_fork                             #79.1
..___tag_value__Z11first_touchPdS_S_P7double2i.370:
                                # LOE eax
..B11.2:                        # Preds ..B11.23
                                # Execution count [1.00e+00]
        test      eax, eax                                      #79.1 c1
        je        ..B11.4       # Prob 50%                      #79.1 c3
                                # LOE
..B11.3:                        # Preds ..B11.2
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #79.1 c1
	.cfi_def_cfa_offset 128
        mov       edx, offset flat: L__Z11first_touchPdS_S_P7double2i_79__par_loop0_2.31 #79.1 c1
        lea       rcx, QWORD PTR [104+rsp]                      #79.1 c3
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.20 #79.1 c3
        mov       esi, 5                                        #79.1 c3
        lea       rax, QWORD PTR [-24+rcx]                      #79.1 c5
        mov       QWORD PTR [rsp], rax                          #79.1 c7
        lea       r8, QWORD PTR [-40+rcx]                       #79.1 c7
        lea       r9, QWORD PTR [-32+rcx]                       #79.1 c9
        lea       rbx, QWORD PTR [8+rax]                        #79.1 c9
        mov       QWORD PTR [8+rsp], rbx                        #79.1 c11
        xor       eax, eax                                      #79.1 c11
..___tag_value__Z11first_touchPdS_S_P7double2i.372:
        call      __kmpc_fork_call                              #79.1
..___tag_value__Z11first_touchPdS_S_P7double2i.373:
                                # LOE
..B11.24:                       # Preds ..B11.3
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #79.1 c1
	.cfi_def_cfa_offset 112
        jmp       ..B11.7       # Prob 100%                     #79.1 c1
                                # LOE
..B11.4:                        # Preds ..B11.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.20 #79.1 c1
        mov       esi, DWORD PTR [80+rsp]                       #79.1 c1
        xor       eax, eax                                      #79.1 c1
..___tag_value__Z11first_touchPdS_S_P7double2i.375:
        call      __kmpc_serialized_parallel                    #79.1
..___tag_value__Z11first_touchPdS_S_P7double2i.376:
                                # LOE
..B11.5:                        # Preds ..B11.4
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #79.1 c1
	.cfi_def_cfa_offset 128
        mov       esi, offset flat: ___kmpv_zero_Z11first_touchPdS_S_P7double2i_0 #79.1 c1
        lea       rdi, QWORD PTR [96+rsp]                       #79.1 c3
        lea       rdx, QWORD PTR [8+rdi]                        #79.1 c5
        lea       rcx, QWORD PTR [-40+rdx]                      #79.1 c7
        lea       r8, QWORD PTR [-32+rdx]                       #79.1 c7
        lea       r9, QWORD PTR [-24+rdx]                       #79.1 c9
        lea       rax, QWORD PTR [-16+rdx]                      #79.1 c9
        mov       QWORD PTR [rsp], rax                          #79.1 c11
..___tag_value__Z11first_touchPdS_S_P7double2i.378:
        call      L__Z11first_touchPdS_S_P7double2i_79__par_loop0_2.31 #79.1
..___tag_value__Z11first_touchPdS_S_P7double2i.379:
                                # LOE
..B11.25:                       # Preds ..B11.5
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #79.1 c1
	.cfi_def_cfa_offset 112
                                # LOE
..B11.6:                        # Preds ..B11.25
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.20 #79.1 c1
        mov       esi, DWORD PTR [80+rsp]                       #79.1 c1
        xor       eax, eax                                      #79.1 c1
..___tag_value__Z11first_touchPdS_S_P7double2i.381:
        call      __kmpc_end_serialized_parallel                #79.1
..___tag_value__Z11first_touchPdS_S_P7double2i.382:
                                # LOE
..B11.7:                        # Preds ..B11.24 ..B11.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [rsp]                          #84.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [8+rsp]                        #84.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [16+rsp]                       #84.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [24+rsp]                       #84.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [32+rsp]                       #84.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rbp, QWORD PTR [40+rsp]                       #84.1[spill] c9
	.cfi_restore 6
        add       rsp, 104                                      #84.1 c9
	.cfi_def_cfa_offset 8
        ret                                                     #84.1 c11
	.cfi_def_cfa_offset 112
                                # LOE
L__Z11first_touchPdS_S_P7double2i_79__par_loop0_2.31:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 112 + rsp
..B11.8:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
        sub       rsp, 104                                      #79.1 c1
        mov       QWORD PTR [32+rsp], rbx                       #79.1[spill] c3
	.cfi_offset 3, -80
        mov       ebx, DWORD PTR [rdx]                          #79.1 c3
        mov       QWORD PTR [40+rsp], rbp                       #79.1[spill] c5
        mov       rax, QWORD PTR [112+rsp]                      #79.1 c7
        mov       QWORD PTR [rsp], r15                          #79.1[spill] c7
	.cfi_offset 6, -72
	.cfi_offset 15, -112
        mov       r15d, DWORD PTR [rdi]                         #79.1 c9
        mov       QWORD PTR [8+rsp], r14                        #79.1[spill] c11
	.cfi_offset 14, -104
        mov       r14, QWORD PTR [rax]                          #79.1 c13
        mov       QWORD PTR [16+rsp], r13                       #79.1[spill] c13
	.cfi_offset 13, -96
        mov       r13, QWORD PTR [r9]                           #79.1 c15
        mov       QWORD PTR [24+rsp], r12                       #79.1[spill] c17
	.cfi_offset 12, -88
        mov       r12, QWORD PTR [r8]                           #79.1 c19
        mov       rbp, QWORD PTR [rcx]                          #79.1 c19
        test      ebx, ebx                                      #80.38 c19
        jle       ..B11.19      # Prob 10%                      #80.38 c21
                                # LOE rbp r12 r13 r14 ebx r15d
..B11.9:                        # Preds ..B11.8
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #79.1 c1
        mov       DWORD PTR [48+rsp], eax                       #79.1 c3
        add       ebx, -1                                       #79.1 c3
        mov       DWORD PTR [56+rsp], eax                       #79.1 c3
        mov       r11d, 1                                       #79.1 c3
        mov       DWORD PTR [52+rsp], ebx                       #79.1 c5
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.20 #79.1 c5
        mov       DWORD PTR [60+rsp], r11d                      #79.1 c5
        add       rsp, -32                                      #79.1 c5
	.cfi_def_cfa_offset 144
        lea       r10, QWORD PTR [92+rsp]                       #79.1 c7
        mov       QWORD PTR [rsp], r10                          #79.1 c9
        mov       esi, r15d                                     #79.1 c9
        mov       DWORD PTR [8+rsp], r11d                       #79.1 c9
        mov       edx, 34                                       #79.1 c9
        mov       DWORD PTR [16+rsp], r11d                      #79.1 c11
        lea       rcx, QWORD PTR [88+rsp]                       #79.1 c11
        lea       r8, QWORD PTR [80+rsp]                        #79.1 c13
        lea       r9, QWORD PTR [84+rsp]                        #79.1 c13
        call      __kmpc_for_static_init_4                      #79.1 c15
                                # LOE rbp r12 r13 r14 ebx r15d
..B11.26:                       # Preds ..B11.9
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #79.1 c1
	.cfi_def_cfa_offset 112
                                # LOE rbp r12 r13 r14 ebx r15d
..B11.10:                       # Preds ..B11.26
                                # Execution count [0.00e+00]
        mov       r10d, DWORD PTR [48+rsp]                      #79.1 c1
        mov       eax, DWORD PTR [52+rsp]                       #79.1 c1
        cmp       r10d, ebx                                     #79.1 c5 stall 1
        jg        ..B11.18      # Prob 50%                      #79.1 c7
                                # LOE rbp r12 r13 r14 eax ebx r10d r15d
..B11.11:                       # Preds ..B11.10
                                # Execution count [0.00e+00]
        cmp       eax, ebx                                      #79.1 c1
        cmovl     ebx, eax                                      #79.1 c3
        cmp       r10d, ebx                                     #80.38 c5
        jg        ..B11.18      # Prob 50%                      #80.38 c7
                                # LOE rbp r12 r13 r14 ebx r10d r15d
..B11.12:                       # Preds ..B11.11
                                # Execution count [9.00e-01]
        sub       ebx, r10d                                     #79.1 c1
        mov       eax, 1                                        #79.1 c1
        lea       r9d, DWORD PTR [1+rbx]                        #79.1 c3
        xor       r8d, r8d                                      #79.1 c3
        mov       edx, r9d                                      #79.1 c5
        shr       edx, 31                                       #79.1 c7
        lea       edi, DWORD PTR [1+rbx+rdx]                    #79.1 c9
        sar       edi, 1                                        #79.1 c11
        test      edi, edi                                      #79.1 c13
        jbe       ..B11.16      # Prob 0%                       #79.1 c15
                                # LOE rbp r12 r13 r14 eax edi r8d r9d r10d r15d
..B11.13:                       # Preds ..B11.12
                                # Execution count [9.00e-01]
        movsxd    r10, r10d                                     #81.19 c1
        vxorpd    xmm0, xmm0, xmm0                              #81.19 c1
        mov       rbx, r10                                      #82.19 c3
        lea       rcx, QWORD PTR [r13+r10*8]                    #81.19 c3
        lea       rdx, QWORD PTR [r12+r10*8]                    #81.12 c3
        shl       rbx, 4                                        #82.19 c5
        lea       rax, QWORD PTR [rbp+r10*8]                    #81.5 c5
        add       rbx, r14                                      #82.19 c7
        .align    16,0x90
                                # LOE rax rdx rcx rbx rbp r12 r13 r14 edi r8d r9d r10d r15d xmm0
..B11.14:                       # Preds ..B11.14 ..B11.13
                                # Execution count [2.50e+00]
        lea       r11d, DWORD PTR [r8+r8]                       #81.19 c1
        add       r8d, 1                                        #79.1 c1
        movsxd    r11, r11d                                     #81.19 c3
        vmovsd    QWORD PTR [rcx+r11*8], xmm0                   #81.19 c5
        mov       rsi, r11                                      #82.19 c5
        vmovsd    QWORD PTR [rdx+r11*8], xmm0                   #81.12 c5
        shl       rsi, 4                                        #82.19 c7
        vmovsd    QWORD PTR [rax+r11*8], xmm0                   #81.5 c11 stall 1
        cmp       r8d, edi                                      #79.1 c11
        vmovsd    QWORD PTR [8+rbx+rsi], xmm0                   #82.19 c11
        vmovsd    QWORD PTR [rbx+rsi], xmm0                     #82.5 c17 stall 2
        vmovsd    QWORD PTR [8+rcx+r11*8], xmm0                 #81.19 c17
        vmovsd    QWORD PTR [8+rdx+r11*8], xmm0                 #81.12 c23 stall 2
        vmovsd    QWORD PTR [8+rax+r11*8], xmm0                 #81.5 c23
        vmovsd    QWORD PTR [24+rbx+rsi], xmm0                  #82.19 c29 stall 2
        vmovsd    QWORD PTR [16+rbx+rsi], xmm0                  #82.5 c29
        jb        ..B11.14      # Prob 63%                      #79.1 c29
                                # LOE rax rdx rcx rbx rbp r12 r13 r14 edi r8d r9d r10d r15d xmm0
..B11.15:                       # Preds ..B11.14
                                # Execution count [9.00e-01]
        lea       eax, DWORD PTR [1+r8+r8]                      #81.19 c1
                                # LOE rbp r12 r13 r14 eax r9d r10d r15d
..B11.16:                       # Preds ..B11.15 ..B11.12
                                # Execution count [9.00e-01]
        lea       edx, DWORD PTR [-1+rax]                       #79.1 c1
        cmp       edx, r9d                                      #79.1 c3
        jae       ..B11.18      # Prob 0%                       #79.1 c5
                                # LOE rbp r12 r13 r14 eax r10d r15d
..B11.17:                       # Preds ..B11.16
                                # Execution count [9.00e-01]
        movsxd    r10, r10d                                     #81.19 c1
        movsxd    rax, eax                                      #81.19 c1
        add       r10, rax                                      #79.1 c3
        xor       edx, edx                                      #81.19 c3
        mov       QWORD PTR [-8+r13+r10*8], rdx                 #81.19 c5
        mov       QWORD PTR [-8+r12+r10*8], rdx                 #81.12 c5
        mov       QWORD PTR [-8+rbp+r10*8], rdx                 #81.5 c7
        shl       r10, 4                                        #82.19 c7
        mov       QWORD PTR [-8+r10+r14], rdx                   #82.19 c9
        mov       QWORD PTR [-16+r10+r14], rdx                  #82.5 c9
                                # LOE r15d
..B11.18:                       # Preds ..B11.16 ..B11.11 ..B11.10 ..B11.17
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.223_2_kmpc_loc_struct_pack.20 #79.1 c1
        mov       esi, r15d                                     #79.1 c1
        call      __kmpc_for_static_fini                        #79.1 c3
                                # LOE
..B11.19:                       # Preds ..B11.18 ..B11.8
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [rsp]                          #79.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [8+rsp]                        #79.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [16+rsp]                       #79.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [24+rsp]                       #79.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [32+rsp]                       #79.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rbp, QWORD PTR [40+rsp]                       #79.1[spill] c9
	.cfi_restore 6
        add       rsp, 104                                      #79.1 c9
	.cfi_def_cfa_offset 8
        ret                                                     #79.1 c11
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z11first_touchPdS_S_P7double2i,@function
	.size	_Z11first_touchPdS_S_P7double2i,.-_Z11first_touchPdS_S_P7double2i
	.data
	.space 1, 0x00 	# pad
	.align 4
.2.223_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.223_2__kmpc_loc_pack.11
	.align 4
.2.223_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	102
	.byte	105
	.byte	114
	.byte	115
	.byte	116
	.byte	95
	.byte	116
	.byte	111
	.byte	117
	.byte	99
	.byte	104
	.byte	59
	.byte	55
	.byte	57
	.byte	59
	.byte	55
	.byte	57
	.byte	59
	.byte	59
	.align 4
.2.223_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.223_2__kmpc_loc_pack.19
	.align 4
.2.223_2__kmpc_loc_pack.19:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	102
	.byte	105
	.byte	114
	.byte	115
	.byte	116
	.byte	95
	.byte	116
	.byte	111
	.byte	117
	.byte	99
	.byte	104
	.byte	59
	.byte	55
	.byte	57
	.byte	59
	.byte	56
	.byte	51
	.byte	59
	.byte	59
	.data
# -- End  _Z11first_touchPdS_S_P7double2i, L__Z11first_touchPdS_S_P7double2i_79__par_loop0_2.31
	.text
# -- Begin  _Z5checkRKSt6vectorIdSaIdEEPKd
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z5checkRKSt6vectorIdSaIdEEPKd
# --- check(const std::vector<double, std::allocator<double>> &, const double *)
_Z5checkRKSt6vectorIdSaIdEEPKd:
# parameter 1: rdi
# parameter 2: rsi
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.408:
..L409:
                                                        #87.29
        sub       rsp, 24                                       #87.29 c1
	.cfi_def_cfa_offset 32
        mov       QWORD PTR [8+rsp], r12                        #87.29[spill] c3
	.cfi_offset 12, -24
        mov       r12, rdi                                      #87.29 c3
        mov       QWORD PTR [16+rsp], rbp                       #87.29[spill] c3
	.cfi_offset 6, -16
        xor       ebp, ebp                                      #89.17 c3
        mov       QWORD PTR [rsp], r13                          #87.29[spill] c5
        mov       rdx, QWORD PTR [r12]                          #88.27 c5
	.cfi_offset 13, -32
        mov       r13, rsi                                      #87.29 c5
        mov       rax, QWORD PTR [8+r12]                        #88.27 c7
        sub       rax, rdx                                      #88.27 c11 stall 1
        sar       rax, 3                                        #88.27 c13
        test      rax, rax                                      #89.26 c15
        jbe       ..B12.6       # Prob 4%                       #89.26 c17
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B12.3:                        # Preds ..B12.1 ..B12.4
                                # Execution count [2.79e+00]
        vmovsd    xmm0, QWORD PTR [rdx+rbp*8]                   #90.14 c1
        vcmpsd    k0, xmm0, QWORD PTR [r13+rbp*8], 4            #90.21 c7 stall 2
        kortestw  k0, k0                                        #90.21 c9
        jne       ..B12.7       # Prob 20%                      #90.21 c11
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B12.4:                        # Preds ..B12.3
                                # Execution count [2.23e+00]
        add       rbp, 1                                        #89.32 c1
        cmp       rbp, rax                                      #89.26 c3
        jb        ..B12.3       # Prob 82%                      #89.26 c5
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B12.6:                        # Preds ..B12.4 ..B12.1
                                # Execution count [4.43e-01]
        mov       rbp, QWORD PTR [16+rsp]                       #96.1[spill] c1
	.cfi_restore 6
        mov       r12, QWORD PTR [8+rsp]                        #96.1[spill] c1
	.cfi_restore 12
        mov       r13, QWORD PTR [rsp]                          #96.1[spill] c5 stall 1
	.cfi_restore 13
        add       rsp, 24                                       #96.1 c5
	.cfi_def_cfa_offset 8
        ret                                                     #96.1 c7
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -16
	.cfi_offset 12, -24
	.cfi_offset 13, -32
                                # LOE
..B12.7:                        # Preds ..B12.3
                                # Execution count [5.57e-01]: Infreq
        mov       edi, offset flat: _ZSt4cout                   #91.17 c1
        mov       esi, offset flat: .L_2__STRING.0              #91.17 c1
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.422:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #91.17
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.423:
                                # LOE rbx rbp r12 r13 r14 r15
..B12.8:                        # Preds ..B12.7
                                # Execution count [5.57e-01]: Infreq
        mov       rax, QWORD PTR [r12]                          #92.17 c1
        mov       edi, offset flat: _ZSt4cout                   #92.17 c1
        vmovsd    xmm0, QWORD PTR [rax+rbp*8]                   #92.17 c5 stall 1
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.424:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #92.17
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.425:
                                # LOE rax rbx rbp r13 r14 r15
..B12.9:                        # Preds ..B12.8
                                # Execution count [5.57e-01]: Infreq
        mov       rdi, rax                                      #92.29 c1
        mov       esi, offset flat: .L_2__STRING.1              #92.29 c1
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.426:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #92.29
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.427:
                                # LOE rax rbx rbp r13 r14 r15
..B12.10:                       # Preds ..B12.9
                                # Execution count [5.57e-01]: Infreq
        vmovsd    xmm0, QWORD PTR [r13+rbp*8]                   #92.36 c1
        mov       rdi, rax                                      #92.36 c1
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.428:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #92.36
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.429:
                                # LOE rax rbx r14 r15
..B12.11:                       # Preds ..B12.10
                                # Execution count [5.57e-01]: Infreq
        mov       rdi, rax                                      #92.44 c1
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #92.44 c1
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.430:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #92.44
..___tag_value__Z5checkRKSt6vectorIdSaIdEEPKd.431:
                                # LOE
..B12.12:                       # Preds ..B12.11
                                # Execution count [5.57e-01]: Infreq
        mov       edi, 1                                        #93.7 c1
#       exit(int)
        call      exit                                          #93.7 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z5checkRKSt6vectorIdSaIdEEPKd,@function
	.size	_Z5checkRKSt6vectorIdSaIdEEPKd,.-_Z5checkRKSt6vectorIdSaIdEEPKd
	.data
# -- End  _Z5checkRKSt6vectorIdSaIdEEPKd
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.433:
..L434:
                                                        #
        push      rsi                                           # c1
	.cfi_def_cfa_offset 16
        mov       edi, offset flat: _ZN35_INTERNAL_13_daxpy_knl_cpp_07017396St8__ioinitE #74.25 c1
..___tag_value___sti__$E.436:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.437:
                                # LOE rbx rbp r12 r13 r14 r15
..B13.2:                        # Preds ..B13.1
                                # Execution count [1.00e+00]
        mov       edi, offset flat: _ZNSt8ios_base4InitD1Ev     #74.25 c1
        mov       esi, offset flat: _ZN35_INTERNAL_13_daxpy_knl_cpp_07017396St8__ioinitE #74.25 c1
        mov       edx, offset flat: __dso_handle                #74.25 c3
        add       rsp, 8                                        #74.25 c3
	.cfi_def_cfa_offset 8
#       __cxa_atexit()
        jmp       __cxa_atexit                                  #74.25 c5
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 4
___kmpv_zeromain_0:
	.type	___kmpv_zeromain_0,@object
	.size	___kmpv_zeromain_0,4
	.space 4	# pad
	.align 4
___kmpv_zeromain_1:
	.type	___kmpv_zeromain_1,@object
	.size	___kmpv_zeromain_1,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z5daxpyPKdS0_Pddi_0:
	.type	___kmpv_zero_Z5daxpyPKdS0_Pddi_0,@object
	.size	___kmpv_zero_Z5daxpyPKdS0_Pddi_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z6daxpy2PKdS0_Pddi_0:
	.type	___kmpv_zero_Z6daxpy2PKdS0_Pddi_0,@object
	.size	___kmpv_zero_Z6daxpy2PKdS0_Pddi_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z6daxpy3PK7double2Pddi_0:
	.type	___kmpv_zero_Z6daxpy3PK7double2Pddi_0,@object
	.size	___kmpv_zero_Z6daxpy3PK7double2Pddi_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z11first_touchPdS_S_P7double2i_0:
	.type	___kmpv_zero_Z11first_touchPdS_S_P7double2i_0,@object
	.size	___kmpv_zero_Z11first_touchPdS_S_P7double2i_0,4
	.space 4	# pad
	.align 1
_ZN35_INTERNAL_13_daxpy_knl_cpp_07017396St8__ioinitE:
	.type	_ZN35_INTERNAL_13_daxpy_knl_cpp_07017396St8__ioinitE,@object
	.size	_ZN35_INTERNAL_13_daxpy_knl_cpp_07017396St8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.17:
	.long	0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000,0x00000000,0x40000000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,64
	.align 64
.L_2il0floatpacket.21:
	.long	0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff
	.type	.L_2il0floatpacket.21,@object
	.size	.L_2il0floatpacket.21,64
	.align 64
.L_2il0floatpacket.22:
	.long	0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000
	.type	.L_2il0floatpacket.22,@object
	.size	.L_2il0floatpacket.22,64
	.align 64
.L_2il0floatpacket.23:
	.long	0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000
	.type	.L_2il0floatpacket.23,@object
	.size	.L_2il0floatpacket.23,64
	.align 64
.L_2il0floatpacket.24:
	.long	0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000
	.type	.L_2il0floatpacket.24,@object
	.size	.L_2il0floatpacket.24,64
	.align 64
.L_2il0floatpacket.25:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.25,@object
	.size	.L_2il0floatpacket.25,64
	.align 64
.L_2il0floatpacket.29:
	.long	0x00000000,0x00000000,0x00000002,0x00000000,0x00000004,0x00000000,0x00000006,0x00000000,0x00000008,0x00000000,0x0000000a,0x00000000,0x0000000c,0x00000000,0x0000000e,0x00000000
	.type	.L_2il0floatpacket.29,@object
	.size	.L_2il0floatpacket.29,64
	.align 64
.L_2il0floatpacket.30:
	.long	0x00000001,0x00000000,0x00000003,0x00000000,0x00000005,0x00000000,0x00000007,0x00000000,0x00000009,0x00000000,0x0000000b,0x00000000,0x0000000d,0x00000000,0x0000000f,0x00000000
	.type	.L_2il0floatpacket.30,@object
	.size	.L_2il0floatpacket.30,64
	.align 32
.L_2il0floatpacket.19:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,32
	.align 16
.L_2il0floatpacket.13:
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x1f,0x40,0x00,0x00,0x00,0x00,0x00,0x00
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,16
	.align 16
.L_2il0floatpacket.14:
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,16
	.align 8
.L_2il0floatpacket.16:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,8
	.align 8
.L_2il0floatpacket.18:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,8
	.align 8
.L_2il0floatpacket.20:
	.long	0x00000008,0x00000000
	.type	.L_2il0floatpacket.20,@object
	.size	.L_2il0floatpacket.20,8
	.align 4
.L_2il0floatpacket.15:
	.long	0x5f000000
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.2:
	.long	1634890337
	.word	8313
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.word	32
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1768774432
	.long	1936683619
	.long	173892453
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,13
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.long	1836280173
	.long	1751348321
	.word	10
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,10
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
