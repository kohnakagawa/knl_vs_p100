# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "";
# mark_description "-O3 -std=c++11 -Wall -Wextra -qopenmp -xMIC-AVX512 -mkl=parallel -mmic -S -masm=intel -lmemkind -Wl,--start-";
# mark_description "group -Wl,--end-group -liomp5 -lpthread -lm -ldl -o dgemm_knl.s";
	.intel_syntax noprefix
	.file "dgemm_knl.cpp"
	.text
..TXTST0:
# -- Begin  main, L_main_223__par_loop0_2.4, L_main_238__par_loop1_2.5
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
..___tag_value_main.1:
..L2:
                                                          #207.46
        push      rbp                                           #207.46
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #207.46
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #207.46
        sub       rsp, 5248                                     #207.46 c1
        mov       QWORD PTR [56+rsp], rbx                       #207.46[spill] c3
        mov       rsi, 0x7389d9ffe                              #207.46 c3
        mov       QWORD PTR [24+rsp], r15                       #207.46[spill] c3
        mov       edi, 3                                        #207.46 c3
        mov       QWORD PTR [32+rsp], r14                       #207.46[spill] c5
        mov       QWORD PTR [40+rsp], r13                       #207.46[spill] c5
        mov       QWORD PTR [48+rsp], r12                       #207.46[spill] c7
        call      __intel_new_feature_proc_init                 #207.46 c7
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xeb, 0xff, 0xff, 0x22
                                # LOE
..B1.187:                       # Preds ..B1.1
                                # Execution count [0.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #207.46 c1
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.446 #207.46 c1
        or        DWORD PTR [rsp], 32832                        #207.46 c3
        xor       esi, esi                                      #207.46 c3
        xor       eax, eax                                      #207.46 c3
        vldmxcsr  DWORD PTR [rsp]                               #207.46 c5
..___tag_value_main.11:
        call      __kmpc_begin                                  #207.46
..___tag_value_main.12:
                                # LOE
..B1.2:                         # Preds ..B1.187
                                # Execution count [1.00e+00]
        xor       ebx, ebx                                      #208.17 c1
        mov       QWORD PTR [104+rsp], rbx                      #208.17 c3
        lea       rdi, QWORD PTR [104+rsp]                      #214.3 c3
        mov       QWORD PTR [112+rsp], rbx                      #209.17 c5
        mov       esi, 64                                       #214.3 c5
        mov       QWORD PTR [120+rsp], rbx                      #210.17 c5
        mov       edx, 8388608                                  #214.3 c5
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #214.3 c7
                                # LOE rbx
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [112+rsp]                      #215.3 c1
        mov       esi, 64                                       #215.3 c1
        mov       edx, 8388608                                  #215.3 c1
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #215.3 c3
                                # LOE rbx
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [120+rsp]                      #216.3 c1
        mov       esi, 64                                       #216.3 c1
        mov       edx, 8388608                                  #216.3 c1
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #216.3 c3
                                # LOE rbx
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       rax, QWORD PTR [104+rsp]                      #223.15 c1
        mov       DWORD PTR [96+rsp], 1048576                   #223.3 c1
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.457 #223.3 c1
        mov       QWORD PTR [64+rsp], rax                       #223.3 c5 stall 1
        mov       rdx, QWORD PTR [112+rsp]                      #223.22 c5
        mov       QWORD PTR [72+rsp], rdx                       #223.3 c9 stall 1
        mov       rcx, QWORD PTR [120+rsp]                      #223.29 c9
        mov       QWORD PTR [80+rsp], rcx                       #223.3 c13 stall 1
        call      __kmpc_global_thread_num                      #223.3 c13
                                # LOE rbx eax
..B1.189:                       # Preds ..B1.5
                                # Execution count [1.00e+00]
        mov       DWORD PTR [88+rsp], eax                       #223.3 c1
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.473 #223.3 c1
        xor       eax, eax                                      #223.3 c1
..___tag_value_main.13:
        call      __kmpc_ok_to_fork                             #223.3
..___tag_value_main.14:
                                # LOE rbx eax
..B1.6:                         # Preds ..B1.189
                                # Execution count [1.00e+00]
        test      eax, eax                                      #223.3 c1
        je        ..B1.8        # Prob 50%                      #223.3 c3
                                # LOE rbx
..B1.7:                         # Preds ..B1.6
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #223.3 c1
        mov       edx, offset flat: L_main_223__par_loop0_2.4   #223.3 c1
        lea       rcx, QWORD PTR [112+rsp]                      #223.3 c3
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.473 #223.3 c3
        mov       esi, 4                                        #223.3 c3
        lea       r8, QWORD PTR [-32+rcx]                       #223.3 c5
        lea       r9, QWORD PTR [-24+rcx]                       #223.3 c5
        xor       eax, eax                                      #223.3 c5
        lea       r10, QWORD PTR [-16+rcx]                      #223.3 c7
        mov       QWORD PTR [rsp], r10                          #223.3 c9
..___tag_value_main.15:
        call      __kmpc_fork_call                              #223.3
..___tag_value_main.16:
                                # LOE rbx
..B1.190:                       # Preds ..B1.7
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #223.3 c1
        jmp       ..B1.11       # Prob 100%                     #223.3 c1
                                # LOE rbx
..B1.8:                         # Preds ..B1.6
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.473 #223.3 c1
        mov       esi, DWORD PTR [88+rsp]                       #223.3 c1
        xor       eax, eax                                      #223.3 c1
..___tag_value_main.17:
        call      __kmpc_serialized_parallel                    #223.3
..___tag_value_main.18:
                                # LOE rbx
..B1.9:                         # Preds ..B1.8
                                # Execution count [0.00e+00]
        lea       rdi, QWORD PTR [88+rsp]                       #223.3 c1
        mov       esi, offset flat: ___kmpv_zeromain_0          #223.3 c1
        lea       rdx, QWORD PTR [8+rdi]                        #223.3 c3
        lea       rcx, QWORD PTR [-32+rdx]                      #223.3 c5
        lea       r8, QWORD PTR [-24+rdx]                       #223.3 c5
        lea       r9, QWORD PTR [-16+rdx]                       #223.3 c7
..___tag_value_main.19:
        call      L_main_223__par_loop0_2.4                     #223.3
..___tag_value_main.20:
                                # LOE rbx
..B1.10:                        # Preds ..B1.9
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.473 #223.3 c1
        mov       esi, DWORD PTR [88+rsp]                       #223.3 c1
        xor       eax, eax                                      #223.3 c1
..___tag_value_main.21:
        call      __kmpc_end_serialized_parallel                #223.3
..___tag_value_main.22:
                                # LOE rbx
..B1.11:                        # Preds ..B1.10 ..B1.190
                                # Execution count [1.00e+00]
        mov       QWORD PTR [128+rsp], 5489                     #225.16 c1
        mov       rsi, rbx                                      #225.16 c1
        mov       ecx, 5489                                     #225.16 c1
        mov       rax, 0xa41a41a41a41a41b                       #225.16 c3
        .align    16,0x90
                                # LOE rax rcx rbx rsi
..B1.12:                        # Preds ..B1.12 ..B1.11
                                # Execution count [6.23e+02]
        mov       r8, rcx                                       #225.16 c1
        lea       rdx, QWORD PTR [1+rsi]                        #225.16 c1
        shr       r8, 30                                        #225.16 c3
        mulx      r9, rdi, rax                                  #225.16 c3
        xor       rcx, r8                                       #225.16 c5
        imul      r10, rcx, 1812433253                          #225.16 c7
        mov       rcx, rsi                                      #225.16 c7
        sub       rcx, r9                                       #225.16 c9
        add       rcx, 1                                        #225.16 c11
        shr       rcx, 1                                        #225.16 c13
        add       r9, rcx                                       #225.16 c15
        shr       r9, 9                                         #225.16 c17
        imul      r11, r9, -624                                 #225.16 c19
        lea       r12, QWORD PTR [1+r10+r11]                    #225.16 c23 stall 1
        add       r12, rsi                                      #225.16 c25
        mov       ecx, r12d                                     #225.16 c27
        mov       QWORD PTR [136+rsp+rsi*8], rcx                #225.16 c29
        mov       rsi, rdx                                      #225.16 c29
        cmp       rdx, 623                                      #225.16 c29
        jb        ..B1.12       # Prob 99%                      #225.16 c31
                                # LOE rax rcx rbx rsi
..B1.13:                        # Preds ..B1.12
                                # Execution count [9.79e-01]
        fld       TBYTE PTR .L_2il0floatpacket.6[rip]           #227.3 c1
        mov       r12, QWORD PTR [104+rsp]                      #227.19 c1
        add       rsp, -16                                      #227.3 c1
        fstp      TBYTE PTR [rsp]                               #227.3 c3
        mov       r14d, 624                                     #225.16 c3
        xor       r13d, r13d                                    #227.3 c3
        call      logl                                          #227.3 c3
                                # LOE rbx r12 r14 r13d f1
..B1.192:                       # Preds ..B1.13
                                # Execution count [9.79e-01]
        fstp      TBYTE PTR [16+rsp]                            #227.3[spill] c1
        fld       TBYTE PTR .L_2il0floatpacket.7[rip]           #227.3 c1
        fstp      TBYTE PTR [rsp]                               #227.3 c5
        call      logl                                          #227.3 c5
                                # LOE rbx r12 r14 r13d f1
..B1.191:                       # Preds ..B1.192
                                # Execution count [9.79e-01]
        add       rsp, 16                                       #227.3 c1
        mov       rsi, 0x8000000000000000                       #227.3 c1
        vmovups   zmm0, ZMMWORD PTR .L_2il0floatpacket.9[rip]   #227.3 c1
        vmovups   zmm3, ZMMWORD PTR .L_2il0floatpacket.10[rip]  #227.3 c1
        vxorpd    xmm5, xmm5, xmm5                              #227.3 c1
        xor       edx, edx                                      #227.3 c3
        fld       TBYTE PTR [rsp]                               #227.3[spill] c7 stall 1
        vmovups   zmm2, ZMMWORD PTR .L_2il0floatpacket.11[rip]  #227.3 c7
        fdivrp    st(1), st                                     #227.3 c9
        fld       DWORD PTR .L_2il0floatpacket.8[rip]           #227.3 c9
        fxch      st(1)                                         #227.3 c9
        vmovups   zmm1, ZMMWORD PTR .L_2il0floatpacket.12[rip]  #227.3 c11
        vmovsd    xmm4, QWORD PTR .L_2il0floatpacket.18[rip]    #227.3 c13
        fcomi     st, st(1)                                     #227.3 c49 stall 17
        fsubr     st(1), st                                     #227.3 c49
        cmovb     rsi, rbx                                      #227.3 c51
        fcmovnb   st, st(1)                                     #227.3 c55 stall 1
        fstp      st(1)                                         #227.3 c57
        fisttp    QWORD PTR [16+rsp]                            #227.3 c57
        mov       rcx, QWORD PTR [16+rsp]                       #227.3 c67 stall 4
        lea       rdi, QWORD PTR [rcx+rsi]                      #227.3 c71 stall 1
        lea       rax, QWORD PTR [52+rcx+rsi]                   #227.3 c71
        div       rdi                                           #227.3 c73
        mov       r8, rax                                       #227.3 c173 stall 49
        mov       eax, 1                                        #227.3 c173
        cmp       r8, 1                                         #227.3 c175
        cmova     rax, r8                                       #227.3 c177
        mov       r8, rbx                                       #227.3 c177
        test      rax, rax                                      #227.3 c179
        je        ..B1.178      # Prob 9%                       #227.3 c181
                                # LOE rax rbx r8 r12 r14 r13d xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.14:                        # Preds ..B1.191
                                # Execution count [1.94e-01]
        fld       TBYTE PTR .L_2il0floatpacket.6[rip]           #227.3 c1
        mov       r10, 0x09d2c5680                              #227.3 c1
        mov       r9, 0x0efc60000                               #227.3 c1
                                # LOE rax rbx r8 r9 r10 r12 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.15:                        # Preds ..B1.21 ..B1.14
                                # Execution count [5.98e+00]
        mov       rdx, rbx                                      #227.3 c1
        .align    16,0x90
                                # LOE rax rdx rbx r8 r9 r10 r12 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.16:                        # Preds ..B1.16 ..B1.15
                                # Execution count [1.36e+03]
        vpandq    zmm7, zmm3, ZMMWORD PTR [136+rsp+rdx*8]       #227.3 c1
        vpternlogq zmm7, zmm0, ZMMWORD PTR [128+rsp+rdx*8], 248 #227.3 c3
        vpandq    zmm6, zmm7, zmm2                              #227.3 c5
        vpsrlq    zmm8, zmm7, 1                                 #227.3 c5
        vptestmq  k1, zmm6, zmm6                                #227.3 c7
        vmovdqa64 zmm9{k1}{z}, zmm1                             #227.3 c11 stall 1
        vpternlogq zmm9, zmm8, ZMMWORD PTR [3304+rsp+rdx*8], 150 #227.3 c13
        vmovdqu64 ZMMWORD PTR [128+rsp+rdx*8], zmm9             #227.3 c15
        add       rdx, 8                                        #227.3 c15
        cmp       rdx, 224                                      #227.3 c17
        jb        ..B1.16       # Prob 99%                      #227.3 c19
                                # LOE rax rdx rbx r8 r9 r10 r12 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.17:                        # Preds ..B1.16
                                # Execution count [5.98e+00]
        mov       rcx, QWORD PTR [1928+rsp]                     #227.3 c1
        mov       rsi, QWORD PTR [1920+rsp]                     #227.3 c1
        mov       r11, rbx                                      #227.3 c1
        mov       rdi, rcx                                      #227.3 c5 stall 1
        and       rsi, -2147483648                              #227.3 c5
        mov       rdx, QWORD PTR [1936+rsp]                     #227.3 c5
        and       rdi, 2147483647                               #227.3 c7
        and       rcx, -2147483648                              #227.3 c7
        or        rsi, rdi                                      #227.3 c9
        mov       rdi, 0x09908b0df                              #227.3 c9
        mov       r14, rsi                                      #227.3 c11
        test      rsi, 1                                        #227.3 c11
        cmovne    r11, rdi                                      #227.3 c13
        shr       r14, 1                                        #227.3 c13
        xor       r14, QWORD PTR [5096+rsp]                     #227.3 c15
        mov       r15, rdx                                      #227.3 c15
        and       rdx, -2147483648                              #227.3 c15
        xor       r14, r11                                      #227.3 c17
        mov       QWORD PTR [1920+rsp], r14                     #227.3 c19
        mov       r11, QWORD PTR [1944+rsp]                     #227.3 c19
        and       r15, 2147483647                               #227.3 c19
        or        rcx, r15                                      #227.3 c21
        and       r11, 2147483647                               #227.3 c23
        mov       rsi, rcx                                      #227.3 c23
        or        rdx, r11                                      #227.3 c25
        test      rcx, 1                                        #227.3 c25
        mov       rcx, rbx                                      #227.3 c27
        mov       r14, rdx                                      #227.3 c27
        cmovne    rcx, rdi                                      #227.3 c29
        shr       rsi, 1                                        #227.3 c29
        shr       r14, 1                                        #227.3 c31
        test      rdx, 1                                        #227.3 c31
        mov       rdx, rbx                                      #227.3 c33
        cmovne    rdx, rdi                                      #227.3 c35
        xor       rsi, QWORD PTR [5104+rsp]                     #227.3 c35
        xor       r14, QWORD PTR [5112+rsp]                     #227.3 c35
        xor       rsi, rcx                                      #227.3 c37
        mov       QWORD PTR [1928+rsp], rsi                     #227.3 c39
        xor       r14, rdx                                      #227.3 c39
        mov       QWORD PTR [1936+rsp], r14                     #227.3 c41
        xor       esi, esi                                      #227.3 c41
        mov       rdx, rbx                                      #227.3 c41
                                # LOE rax rdx rbx rdi r8 r9 r10 r12 esi r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.18:                        # Preds ..B1.18 ..B1.17
                                # Execution count [1.18e+03]
        mov       rcx, QWORD PTR [1952+rsp+rdx]                 #227.3 c1
        mov       r15, QWORD PTR [1944+rsp+rdx]                 #227.3 c1
        mov       r14, rbx                                      #227.3 c1
        add       esi, 1                                        #227.3 c1
        mov       r11, rcx                                      #227.3 c5 stall 1
        and       r15, -2147483648                              #227.3 c5
        and       r11, 2147483647                               #227.3 c7
        and       rcx, -2147483648                              #227.3 c7
        or        r15, r11                                      #227.3 c9
        mov       r11, QWORD PTR [1960+rsp+rdx]                 #227.3 c9
        test      r15, 1                                        #227.3 c11
        cmovne    r14, rdi                                      #227.3 c13
        shr       r15, 1                                        #227.3 c13
        and       r11, 2147483647                               #227.3 c15
        xor       r15, QWORD PTR [128+rsp+rdx]                  #227.3 c15
        or        rcx, r11                                      #227.3 c17
        xor       r15, r14                                      #227.3 c17
        mov       QWORD PTR [1944+rsp+rdx], r15                 #227.3 c19
        mov       r14, rcx                                      #227.3 c19
        test      rcx, 1                                        #227.3 c19
        mov       rcx, rbx                                      #227.3 c21
        cmovne    rcx, rdi                                      #227.3 c23
        shr       r14, 1                                        #227.3 c23
        xor       r14, QWORD PTR [136+rsp+rdx]                  #227.3 c25
        xor       r14, rcx                                      #227.3 c27
        mov       QWORD PTR [1952+rsp+rdx], r14                 #227.3 c29
        add       rdx, 16                                       #227.3 c29
        cmp       esi, 198                                      #227.3 c29
        jb        ..B1.18       # Prob 99%                      #227.3 c31
                                # LOE rax rdx rbx rdi r8 r9 r10 r12 esi r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.19:                        # Preds ..B1.18
                                # Execution count [6.67e+00]
        mov       rcx, QWORD PTR [5112+rsp]                     #227.3 c1
        mov       rdx, QWORD PTR [128+rsp]                      #227.3 c1
        xor       r14d, r14d                                    #227.3 c1
        and       rcx, -2147483648                              #227.3 c5 stall 1
        and       rdx, 2147483647                               #227.3 c5
        or        rcx, rdx                                      #227.3 c7
        mov       rsi, rcx                                      #227.3 c9
        test      rcx, 1                                        #227.3 c9
        cmove     rdi, rbx                                      #227.3 c11
        shr       rsi, 1                                        #227.3 c11
        xor       rsi, QWORD PTR [3296+rsp]                     #227.3 c13
        xor       rsi, rdi                                      #227.3 c15
        mov       QWORD PTR [5112+rsp], rsi                     #227.3 c17
                                # LOE rax rbx r8 r9 r10 r12 r14 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.20:                        # Preds ..B1.19 ..B1.21
                                # Execution count [2.72e+01]
        mov       r15, QWORD PTR [128+rsp+r14*8]                #227.3 c1
        vmovsd    QWORD PTR [rsp], xmm4                         #227.3 c1
        vxorpd    xmm6, xmm6, xmm6                              #227.3 c1
        add       r8, 1                                         #227.3 c1
        add       r14, 1                                        #227.3 c1
        mov       rdx, r15                                      #227.3 c5 stall 1
        fld       QWORD PTR [rsp]                               #227.3 c7
        shr       rdx, 11                                       #227.3 c7
        mov       ecx, edx                                      #227.3 c9
        fmul      st, st(1)                                     #227.3 c9
        fstp      QWORD PTR [8+rsp]                             #227.3 c17 stall 3
        xor       r15, rcx                                      #227.3 c17
        mov       rsi, r15                                      #227.3 c19
        shl       rsi, 7                                        #227.3 c21
        and       rsi, r10                                      #227.3 c23
        xor       r15, rsi                                      #227.3 c25
        mov       rdi, r15                                      #227.3 c27
        shl       rdi, 15                                       #227.3 c29
        and       rdi, r9                                       #227.3 c31
        xor       r15, rdi                                      #227.3 c33
        mov       r11, r15                                      #227.3 c35
        shr       r11, 18                                       #227.3 c37
        xor       r15, r11                                      #227.3 c39
        vcvtusi2sd xmm6, xmm6, r15                              #227.3 c41
        vfmadd231sd xmm5, xmm6, xmm4                            #227.3 c43
        vmovsd    xmm4, QWORD PTR [8+rsp]                       #227.3 c43
        cmp       r8, rax                                       #227.3 c43
        jae       ..B1.106      # Prob 18%                      #227.3 c45
                                # LOE rax rbx r8 r9 r10 r12 r14 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.21:                        # Preds ..B1.20 ..B1.109
                                # Execution count [2.63e+01]
        cmp       r14, 624                                      #227.3 c1
        jb        ..B1.20       # Prob 78%                      #227.3 c3
        jmp       ..B1.15       # Prob 100%                     #227.3 c3
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
                                # LOE rax rbx r8 r9 r10 r12 r14 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
L_main_238__par_loop1_2.5:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
..B1.23:                        # Preds ..B1.0
                                # Execution count [1.00e+00]
        push      rbp                                           #238.3
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #238.3
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #238.3
        sub       rsp, 5248                                     #238.3 c1
        mov       QWORD PTR [56+rsp], rbx                       #238.3[spill] c3
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xeb, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdx]                          #238.3 c3
        mov       QWORD PTR [24+rsp], r15                       #238.3[spill] c5
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xeb, 0xff, 0xff, 0x22
        mov       r15, r9                                       #238.3 c5
        mov       QWORD PTR [32+rsp], r14                       #238.3[spill] c7
        mov       eax, DWORD PTR [rdi]                          #238.3 c7
        mov       QWORD PTR [40+rsp], r13                       #238.3[spill] c9
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xeb, 0xff, 0xff, 0x22
        movsxd    rbx, ebx                                      #238.3 c9
        mov       QWORD PTR [48+rsp], r12                       #238.3[spill] c11
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xeb, 0xff, 0xff, 0x22
        mov       r14, r8                                       #238.3 c11
        mov       DWORD PTR [rsp], eax                          #238.3[spill] c11
        mov       r13, rcx                                      #238.3 c11
        mov       QWORD PTR [240+rsp], rbx                      #238.3[spill] c13
        test      ebx, ebx                                      #238.3 c13
        jle       ..B1.93       # Prob 10%                      #238.3 c15
                                # LOE r13 r14 r15 eax ebx
..B1.24:                        # Preds ..B1.23
                                # Execution count [5.00e+00]
        mov       esi, eax                                      #238.3 c1
        xor       eax, eax                                      #238.3 c1
        mov       DWORD PTR [112+rsp], eax                      #238.3 c3
        lea       r12d, DWORD PTR [-1+rbx]                      #238.3 c3
        mov       DWORD PTR [116+rsp], r12d                     #238.3 c5
        mov       r11d, 1                                       #238.3 c5
        mov       DWORD PTR [120+rsp], eax                      #238.3 c5
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.497 #238.3 c5
        mov       DWORD PTR [124+rsp], r11d                     #238.3 c7
        add       rsp, -32                                      #238.3 c7
        mov       edx, 34                                       #238.3 c7
        lea       r10, QWORD PTR [156+rsp]                      #238.3 c9
        mov       QWORD PTR [rsp], r10                          #238.3 c11
        lea       rcx, QWORD PTR [152+rsp]                      #238.3 c11
        mov       DWORD PTR [8+rsp], r11d                       #238.3 c13
        lea       r8, QWORD PTR [144+rsp]                       #238.3 c13
        mov       DWORD PTR [16+rsp], r11d                      #238.3 c15
        lea       r9, QWORD PTR [148+rsp]                       #238.3 c15
        call      __kmpc_for_static_init_4                      #238.3 c17
                                # LOE r13 r14 r15 ebx r12d
..B1.193:                       # Preds ..B1.24
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #238.3 c1
                                # LOE r13 r14 r15 ebx r12d
..B1.25:                        # Preds ..B1.193
                                # Execution count [0.00e+00]
        mov       eax, DWORD PTR [112+rsp]                      #238.3 c1
        mov       DWORD PTR [72+rsp], eax                       #238.3[spill] c5 stall 1
        mov       edx, DWORD PTR [116+rsp]                      #238.3 c5
        cmp       eax, r12d                                     #238.3 c5
        jg        ..B1.92       # Prob 50%                      #238.3 c7
                                # LOE r13 r14 r15 edx ebx r12d
..B1.26:                        # Preds ..B1.25
                                # Execution count [9.00e-01]
        mov       rax, QWORD PTR [r13]                          #238.3 c1
        mov       DWORD PTR [16+rsp], 0                         #238.3[spill] c1
        cmp       edx, r12d                                     #238.3 c1
        mov       QWORD PTR [88+rsp], rax                       #238.3[spill] c5 stall 1
        cmovl     r12d, edx                                     #238.3 c5
        mov       rdx, QWORD PTR [r14]                          #238.3 c5
        mov       QWORD PTR [208+rsp], rdx                      #238.3[spill] c9 stall 1
        mov       eax, r12d                                     #238.3 c9
        mov       rcx, QWORD PTR [r15]                          #238.3 c9
        mov       QWORD PTR [216+rsp], rcx                      #238.3[spill] c13 stall 1
        sub       eax, DWORD PTR [72+rsp]                       #238.3[spill] c13
        mov       esi, 1                                        #238.3 c13
        add       eax, 1                                        #238.3 c15
        mov       edi, eax                                      #238.3 c17
        sar       edi, 1                                        #238.3 c19
        shr       edi, 30                                       #238.3 c21
        sub       edi, DWORD PTR [72+rsp]                       #238.3[spill] c23
        lea       r8d, DWORD PTR [1+rdi+r12]                    #238.3 c25
        sar       r8d, 2                                        #238.3 c27
        mov       DWORD PTR [8+rsp], r8d                        #238.3[spill] c29
        test      r8d, r8d                                      #238.3 c29
        jbe       ..B1.70       # Prob 0%                       #238.3 c31
                                # LOE eax ebx esi
..B1.27:                        # Preds ..B1.26
                                # Execution count [4.65e+00]
        mov       r13d, DWORD PTR [72+rsp]                      #238.3[spill] c1
        mov       DWORD PTR [152+rsp], 0                        #238.3[spill] c1
        mov       r12d, 8                                       #238.3 c1
        mov       DWORD PTR [64+rsp], eax                       #238.3[spill] c3
        vmovd     xmm1, r12d                                    #238.3 c3
        mov       r12d, ebx                                     #238.3 c3
        mov       edx, ebx                                      #238.3 c3
        lea       r14d, DWORD PTR [rbx*4]                       #238.3 c5
        lea       r13d, DWORD PTR [-1+r13]                      #238.3 c5
        sar       r12d, 1                                       #238.3 c5
        and       edx, -16                                      #238.3 c5
        mov       DWORD PTR [80+rsp], edx                       #238.3[spill] c7
        lea       edi, DWORD PTR [rbx+rbx*2]                    #238.3 c7
        neg       r14d                                          #238.3 c7
        imul      r13d, ebx                                     #238.3 c7
        mov       DWORD PTR [184+rsp], r13d                     #238.3[spill] c11 stall 1
        neg       edi                                           #238.3 c11
        lea       esi, DWORD PTR [rbx+rbx]                      #238.3 c11
        shr       r12d, 30                                      #238.3 c11
        lea       r15d, DWORD PTR [r14+rbx*4]                   #238.3 c13
        mov       DWORD PTR [256+rsp], r15d                     #238.3[spill] c15
        mov       r14d, ebx                                     #238.3 c15
        lea       r11d, DWORD PTR [rdi+rbx*4]                   #238.3 c15
        mov       DWORD PTR [280+rsp], r11d                     #238.3[spill] c17
        neg       esi                                           #238.3 c17
        neg       r14d                                          #238.3 c17
        lea       r10d, DWORD PTR [r11+r13]                     #238.3 c17
        mov       DWORD PTR [176+rsp], r10d                     #238.3[spill] c19
        add       r12d, ebx                                     #238.3 c19
        lea       r8d, DWORD PTR [r13+rbx*4]                    #238.3 c19
        mov       DWORD PTR [168+rsp], r8d                      #238.3[spill] c21
        lea       esi, DWORD PTR [rsi+rbx*4]                    #238.3 c21
        mov       DWORD PTR [272+rsp], esi                      #238.3[spill] c23
        lea       r14d, DWORD PTR [r14+rbx*4]                   #238.3 c23
        mov       DWORD PTR [192+rsp], r14d                     #238.3[spill] c25
        sar       r12d, 2                                       #238.3 c25
        mov       DWORD PTR [104+rsp], r12d                     #238.3[spill] c27
        mov       r9d, r10d                                     #238.3 c27
        mov       DWORD PTR [144+rsp], r9d                      #238.3[spill] c29
        mov       edi, r8d                                      #238.3 c29
        mov       DWORD PTR [304+rsp], r9d                      #238.3[spill] c29
        vpbroadcastd ymm1, xmm1                                 #238.3 c29
        mov       DWORD PTR [128+rsp], edi                      #238.3[spill] c31
        lea       ecx, DWORD PTR [rsi+r13]                      #238.3 c31
        mov       DWORD PTR [160+rsp], ecx                      #238.3[spill] c33
        lea       r15d, DWORD PTR [r14+r13]                     #238.3 c33
        mov       DWORD PTR [136+rsp], ecx                      #238.3[spill] c35
        vmovdqu   ymm0, YMMWORD PTR .L_2il0floatpacket.19[rip]  #238.3 c35
        mov       DWORD PTR [264+rsp], r15d                     #238.3[spill] c37
        mov       esi, 1                                        #238.3 c37
        mov       DWORD PTR [288+rsp], ecx                      #238.3[spill] c39
        mov       edx, DWORD PTR [152+rsp]                      #238.3[spill] c41
        mov       DWORD PTR [296+rsp], edi                      #238.3[spill] c41
        xor       edi, edi                                      #238.3 c41
        mov       rax, QWORD PTR [208+rsp]                      #238.3[spill] c43
        mov       rcx, QWORD PTR [88+rsp]                       #238.3[spill] c45
                                # LOE rax rcx edx ebx esi edi ymm0 ymm1
..B1.28:                        # Preds ..B1.68 ..B1.27
                                # Execution count [5.00e+00]
        mov       r9d, edi                                      #238.3 c1
        mov       r8d, esi                                      #238.3 c1
        cmp       DWORD PTR [104+rsp], 0                        #238.3[spill] c1
        mov       r10d, r9d                                     #238.3 c3
        jbe       ..B1.48       # Prob 0%                       #238.3 c3
                                # LOE rax rcx edx ebx esi edi r8d r9d r10d ymm0 ymm1
..B1.29:                        # Preds ..B1.28
                                # Execution count [2.58e+01]
        mov       r11d, DWORD PTR [184+rsp]                     #238.3[spill] c1
        mov       DWORD PTR [152+rsp], edx                      #238.3[spill] c1
        mov       r8d, DWORD PTR [192+rsp]                      #238.3[spill] c3
        mov       r13d, DWORD PTR [128+rsp]                     #238.3[spill] c5
        lea       r14d, DWORD PTR [r11+r8]                      #238.3 c7
        movsxd    r14, r14d                                     #238.3 c9
        mov       r15d, DWORD PTR [144+rsp]                     #238.3[spill] c9
        lea       r12d, DWORD PTR [r13+rdx]                     #238.3 c9
        lea       r11, QWORD PTR [rcx+r14*8]                    #238.3 c11
        mov       QWORD PTR [392+rsp], r11                      #238.3[spill] c13
        mov       r14d, DWORD PTR [136+rsp]                     #238.3[spill] c13
        movsxd    r12, r12d                                     #238.3 c13
        lea       r13, QWORD PTR [rcx+r12*8]                    #238.3 c15
        mov       QWORD PTR [400+rsp], r13                      #238.3[spill] c17
        lea       r8d, DWORD PTR [r15+rdx]                      #238.3 c17
        mov       r12, r13                                      #238.3 c17
        lea       r15d, DWORD PTR [r14+rdx]                     #238.3 c19
        movsxd    r8, r8d                                       #238.3 c19
        and       r12, 63                                       #238.3 c19
        mov       DWORD PTR [232+rsp], r12d                     #238.3[spill] c19
        movsxd    r15, r15d                                     #238.3 c21
        mov       r14d, r12d                                    #238.3 c21
        lea       r8, QWORD PTR [rcx+r8*8]                      #238.3 c21
        mov       QWORD PTR [384+rsp], r8                       #238.3[spill] c23
        lea       r15, QWORD PTR [rcx+r15*8]                    #238.3 c23
        mov       QWORD PTR [376+rsp], r15                      #238.3[spill] c25
        and       r14d, 7                                       #238.3 c25
        mov       DWORD PTR [224+rsp], r14d                     #238.3[spill] c27
        mov       rdi, QWORD PTR [216+rsp]                      #238.3[spill] c27
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B1.30:                        # Preds ..B1.46 ..B1.29
                                # Execution count [2.78e+01]
        cmp       ebx, 866                                      #238.3 c1
        jl        ..B1.184      # Prob 10%                      #238.3 c3
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B1.31:                        # Preds ..B1.30
                                # Execution count [2.78e+01]
        mov       r13d, DWORD PTR [232+rsp]                     #238.3[spill] c1
        test      r13d, r13d                                    #238.3 c5 stall 1
        je        ..B1.34       # Prob 50%                      #238.3 c7
                                # LOE rax rdi ebx r9d r10d r13d ymm0 ymm1
..B1.32:                        # Preds ..B1.31
                                # Execution count [2.78e+01]
        cmp       DWORD PTR [224+rsp], 0                        #238.3[spill] c1
        jne       ..B1.183      # Prob 10%                      #238.3 c3
                                # LOE rax rdi ebx r9d r10d r13d ymm0 ymm1
..B1.33:                        # Preds ..B1.32
                                # Execution count [0.00e+00]
        neg       r13d                                          #238.3 c1
        add       r13d, 64                                      #238.3 c3
        shr       r13d, 3                                       #238.3 c5
        cmp       ebx, r13d                                     #238.3 c7
        cmovl     r13d, ebx                                     #238.3 c9
                                # LOE rax rdi ebx r9d r10d r13d ymm0 ymm1
..B1.34:                        # Preds ..B1.33 ..B1.31
                                # Execution count [2.78e+01]
        mov       edx, ebx                                      #238.3 c1
        sub       edx, r13d                                     #238.3 c3
        and       edx, 15                                       #238.3 c5
        neg       edx                                           #238.3 c7
        add       edx, ebx                                      #238.3 c9
        cmp       r13d, 1                                       #238.3 c9
        jb        ..B1.38       # Prob 50%                      #238.3 c11
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
..B1.35:                        # Preds ..B1.34
                                # Execution count [2.78e+01]
        mov       esi, DWORD PTR [272+rsp]                      #238.3[spill] c1
        mov       DWORD PTR [480+rsp], edx                      #238.3[spill] c1
        mov       ecx, 255                                      #238.3 c1
        mov       DWORD PTR [472+rsp], r10d                     #238.3[spill] c3
        kmovw     k1, ecx                                       #238.3 c3
        mov       DWORD PTR [464+rsp], r9d                      #238.3[spill] c5
        mov       r11d, DWORD PTR [280+rsp]                     #238.3[spill] c5
        mov       DWORD PTR [248+rsp], ebx                      #238.3[spill] c7
        mov       r14d, r10d                                    #238.3 c7
        vmovd     xmm2, r13d                                    #238.3 c7
        movsxd    r13, r13d                                     #238.3 c7
        mov       QWORD PTR [496+rsp], r13                      #238.3[spill] c9
        lea       ecx, DWORD PTR [rsi+r10]                      #238.3 c9
        mov       DWORD PTR [488+rsp], r13d                     #238.3[spill] c11
        movsxd    rcx, ecx                                      #238.3 c11
        lea       r8d, DWORD PTR [r11+r10]                      #238.3 c11
        sub       r14d, ebx                                     #238.3 c11
        vmovdqa   ymm3, ymm0                                    #238.3 c11
        lea       r11, QWORD PTR [rdi+rcx*8]                    #238.3 c13
        mov       ecx, DWORD PTR [264+rsp]                      #238.3[spill] c13
        movsxd    r8, r8d                                       #238.3 c13
        vpbroadcastd ymm2, xmm2                                 #238.3 c13
        lea       r12d, DWORD PTR [r14+rbx*4]                   #238.3 c15
        xor       r15d, r15d                                    #238.3 c15
        lea       ecx, DWORD PTR [rcx+r9*4]                     #238.3 c17
        movsxd    r12, r12d                                     #238.3 c17
        mov       esi, DWORD PTR [288+rsp]                      #238.3[spill] c17
        movsxd    rcx, ecx                                      #238.3 c19
        mov       QWORD PTR [408+rsp], rcx                      #238.3[spill] c21
        mov       ecx, DWORD PTR [296+rsp]                      #238.3[spill] c21
        lea       r14, QWORD PTR [rdi+r12*8]                    #238.3 c23
        lea       ecx, DWORD PTR [rcx+r9*4]                     #238.3 c25
        lea       r12, QWORD PTR [rdi+r8*8]                     #238.3 c25
        movsxd    rcx, ecx                                      #238.3 c27
        mov       QWORD PTR [416+rsp], rcx                      #238.3[spill] c29
        mov       ecx, DWORD PTR [256+rsp]                      #238.3[spill] c29
        mov       r8d, DWORD PTR [304+rsp]                      #238.3[spill] c31
        add       ecx, r10d                                     #238.3 c33
        movsxd    rcx, ecx                                      #238.3 c35
        lea       r8d, DWORD PTR [r8+r9*4]                      #238.3 c35
        lea       esi, DWORD PTR [rsi+r9*4]                     #238.3 c35
        movsxd    r8, r8d                                       #238.3 c37
        movsxd    rsi, esi                                      #238.3 c37
        lea       rcx, QWORD PTR [rdi+rcx*8]                    #238.3 c37
        mov       rdx, QWORD PTR [416+rsp]                      #238.3[spill] c37
        mov       rbx, QWORD PTR [408+rsp]                      #238.3[spill] c39
        mov       rdi, QWORD PTR [376+rsp]                      #238.3[spill] c41
        mov       r9, QWORD PTR [384+rsp]                       #238.3[spill] c43
        mov       r10, QWORD PTR [392+rsp]                      #238.3[spill] c45
        mov       r13, QWORD PTR [400+rsp]                      #238.3[spill] c47
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B1.36:                        # Preds ..B1.36 ..B1.35
                                # Execution count [1.54e+02]
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #238.3 c3
        vpaddd    ymm3, ymm3, ymm1                              #238.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r9+r15*8]           #238.3 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rcx+r15*8]          #238.3 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [rax+r8*8]{1to8}      #238.3 c11 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm5              #238.3 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rdi+r15*8]          #238.3 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [rcx+r15*8]          #238.3 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [rax+rsi*8]{1to8}     #238.3 c29 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm7             #238.3 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [r10+r15*8]          #238.3 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [rcx+r15*8]          #238.3 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [rax+rbx*8]{1to8}     #238.3 c47 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm9             #238.3 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [r13+r15*8]         #238.3 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [rcx+r15*8]         #238.3 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [rax+rdx*8]{1to8}   #238.3 c65 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm11            #238.3 c71 stall 2
        vmovupd   zmm13{k2}{z}, ZMMWORD PTR [r9+r15*8]          #238.3 c71
        vmovupd   zmm12{k2}{z}, ZMMWORD PTR [r12+r15*8]         #238.3 c77 stall 2
        vfmadd231pd zmm13, zmm12, QWORD PTR [8+rax+r8*8]{1to8}  #238.3 c83 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm13             #238.3 c89 stall 2
        vmovupd   zmm15{k2}{z}, ZMMWORD PTR [rdi+r15*8]         #238.3 c89
        vmovupd   zmm14{k2}{z}, ZMMWORD PTR [r12+r15*8]         #238.3 c95 stall 2
        vfmadd231pd zmm15, zmm14, QWORD PTR [8+rax+rsi*8]{1to8} #238.3 c101 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm15            #238.3 c107 stall 2
        vmovupd   zmm17{k2}{z}, ZMMWORD PTR [r10+r15*8]         #238.3 c107
        vmovupd   zmm16{k2}{z}, ZMMWORD PTR [r12+r15*8]         #238.3 c113 stall 2
        vfmadd231pd zmm17, zmm16, QWORD PTR [8+rax+rbx*8]{1to8} #238.3 c119 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm17            #238.3 c125 stall 2
        vmovupd   zmm19{k2}{z}, ZMMWORD PTR [r13+r15*8]         #238.3 c125
        vmovupd   zmm18{k2}{z}, ZMMWORD PTR [r12+r15*8]         #238.3 c131 stall 2
        vfmadd231pd zmm19, zmm18, QWORD PTR [8+rax+rdx*8]{1to8} #238.3 c137 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm19            #238.3 c143 stall 2
        vmovupd   zmm21{k2}{z}, ZMMWORD PTR [r9+r15*8]          #238.3 c143
        vmovupd   zmm20{k2}{z}, ZMMWORD PTR [r11+r15*8]         #238.3 c149 stall 2
        vfmadd231pd zmm21, zmm20, QWORD PTR [16+rax+r8*8]{1to8} #238.3 c155 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm21             #238.3 c161 stall 2
        vmovupd   zmm23{k2}{z}, ZMMWORD PTR [rdi+r15*8]         #238.3 c161
        vmovupd   zmm22{k2}{z}, ZMMWORD PTR [r11+r15*8]         #238.3 c167 stall 2
        vfmadd231pd zmm23, zmm22, QWORD PTR [16+rax+rsi*8]{1to8} #238.3 c173 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm23            #238.3 c179 stall 2
        vmovupd   zmm25{k2}{z}, ZMMWORD PTR [r10+r15*8]         #238.3 c179
        vmovupd   zmm24{k2}{z}, ZMMWORD PTR [r11+r15*8]         #238.3 c185 stall 2
        vfmadd231pd zmm25, zmm24, QWORD PTR [16+rax+rbx*8]{1to8} #238.3 c191 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm25            #238.3 c197 stall 2
        .byte     144                                           #238.3 c197
        vmovupd   zmm27{k2}{z}, ZMMWORD PTR [r13+r15*8]         #238.3 c197
        vmovupd   zmm26{k2}{z}, ZMMWORD PTR [r11+r15*8]         #238.3 c203 stall 2
        vfmadd231pd zmm27, zmm26, QWORD PTR [16+rax+rdx*8]{1to8} #238.3 c209 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm27            #238.3 c215 stall 2
        vmovupd   zmm29{k2}{z}, ZMMWORD PTR [r9+r15*8]          #238.3 c215
        vmovupd   zmm28{k2}{z}, ZMMWORD PTR [r14+r15*8]         #238.3 c221 stall 2
        vfmadd231pd zmm29, zmm28, QWORD PTR [24+rax+r8*8]{1to8} #238.3 c227 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm29             #238.3 c233 stall 2
        vmovupd   zmm31{k2}{z}, ZMMWORD PTR [rdi+r15*8]         #238.3 c233
        vmovupd   zmm30{k2}{z}, ZMMWORD PTR [r14+r15*8]         #238.3 c239 stall 2
        vfmadd231pd zmm31, zmm30, QWORD PTR [24+rax+rsi*8]{1to8} #238.3 c245 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm31            #238.3 c251 stall 2
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r10+r15*8]          #238.3 c251
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r14+r15*8]          #238.3 c257 stall 2
        vfmadd231pd zmm5, zmm4, QWORD PTR [24+rax+rbx*8]{1to8}  #238.3 c263 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm5             #238.3 c269 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [r13+r15*8]          #238.3 c269
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r14+r15*8]          #238.3 c275 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [24+rax+rdx*8]{1to8}  #238.3 c281 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm7             #238.3 c287 stall 2
        add       r15, 8                                        #238.3 c287
        cmp       r15, QWORD PTR [496+rsp]                      #238.3[spill] c289
        jb        ..B1.36       # Prob 82%                      #238.3 c291
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B1.37:                        # Preds ..B1.36
                                # Execution count [2.78e+01]
        mov       r13d, DWORD PTR [488+rsp]                     #[spill] c1
        mov       ebx, DWORD PTR [248+rsp]                      #[spill] c1
        mov       rdi, QWORD PTR [216+rsp]                      #[spill] c5 stall 1
        mov       edx, DWORD PTR [480+rsp]                      #[spill] c5
        mov       r10d, DWORD PTR [472+rsp]                     #[spill] c9 stall 1
        mov       r9d, DWORD PTR [464+rsp]                      #[spill] c9
        cmp       ebx, r13d                                     #238.3 c9
        je        ..B1.46       # Prob 10%                      #238.3 c11
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
..B1.38:                        # Preds ..B1.37 ..B1.34 ..B1.184
                                # Execution count [0.00e+00]
        lea       ecx, DWORD PTR [16+r13]                       #238.3 c1
        cmp       edx, ecx                                      #238.3 c3
        jl        ..B1.42       # Prob 50%                      #238.3 c5
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
..B1.39:                        # Preds ..B1.38
                                # Execution count [2.78e+01]
        mov       r8d, DWORD PTR [280+rsp]                      #238.3[spill] c1
        mov       DWORD PTR [248+rsp], ebx                      #238.3[spill] c1
        mov       r12d, r10d                                    #238.3 c1
        movsxd    r13, r13d                                     #238.3 c1
        sub       r12d, ebx                                     #238.3 c3
        mov       esi, DWORD PTR [272+rsp]                      #238.3[spill] c3
        mov       r15d, DWORD PTR [304+rsp]                     #238.3[spill] c5
        lea       r11d, DWORD PTR [r12+rbx*4]                   #238.3 c7
        lea       ecx, DWORD PTR [r8+r10]                       #238.3 c9
        movsxd    r11, r11d                                     #238.3 c9
        lea       r14d, DWORD PTR [rsi+r10]                     #238.3 c9
        movsxd    rcx, ecx                                      #238.3 c11
        mov       esi, DWORD PTR [288+rsp]                      #238.3[spill] c11
        lea       r12, QWORD PTR [rdi+r11*8]                    #238.3 c11
        movsxd    r14, r14d                                     #238.3 c11
        lea       r11, QWORD PTR [rdi+rcx*8]                    #238.3 c13
        lea       ecx, DWORD PTR [r15+r9*4]                     #238.3 c15
        mov       r15d, DWORD PTR [264+rsp]                     #238.3[spill] c15
        movsxd    rcx, ecx                                      #238.3 c17
        lea       r8, QWORD PTR [rdi+r14*8]                     #238.3 c17
        vbroadcastsd zmm16, QWORD PTR [rax+rcx*8]               #238.3 c19
        vbroadcastsd zmm15, QWORD PTR [8+rax+rcx*8]             #238.3 c19
        vbroadcastsd zmm14, QWORD PTR [16+rax+rcx*8]            #238.3 c25 stall 2
        vbroadcastsd zmm13, QWORD PTR [24+rax+rcx*8]            #238.3 c25
        lea       r14d, DWORD PTR [rsi+r9*4]                    #238.3 c31 stall 2
        lea       ecx, DWORD PTR [r15+r9*4]                     #238.3 c31
        mov       esi, DWORD PTR [296+rsp]                      #238.3[spill] c33
        mov       r15d, DWORD PTR [256+rsp]                     #238.3[spill] c33
        movsxd    r14, r14d                                     #238.3 c33
        movsxd    rcx, ecx                                      #238.3 c33
        vbroadcastsd zmm12, QWORD PTR [rax+r14*8]               #238.3 c37 stall 1
        vbroadcastsd zmm11, QWORD PTR [8+rax+r14*8]             #238.3 c37
        vbroadcastsd zmm10, QWORD PTR [16+rax+r14*8]            #238.3 c43 stall 2
        vbroadcastsd zmm9, QWORD PTR [24+rax+r14*8]             #238.3 c43
        vbroadcastsd zmm8, QWORD PTR [rax+rcx*8]                #238.3 c49 stall 2
        vbroadcastsd zmm7, QWORD PTR [8+rax+rcx*8]              #238.3 c49
        vbroadcastsd zmm6, QWORD PTR [16+rax+rcx*8]             #238.3 c55 stall 2
        vbroadcastsd zmm5, QWORD PTR [24+rax+rcx*8]             #238.3 c55
        lea       r14d, DWORD PTR [rsi+r9*4]                    #238.3 c61 stall 2
        lea       ecx, DWORD PTR [r15+r10]                      #238.3 c61
        movsxd    r14, r14d                                     #238.3 c63
        movsxd    rcx, ecx                                      #238.3 c63
        mov       rbx, QWORD PTR [384+rsp]                      #238.3[spill] c63
        mov       r15, QWORD PTR [400+rsp]                      #238.3[spill] c63
        vbroadcastsd zmm4, QWORD PTR [rax+r14*8]                #238.3 c67 stall 1
        vbroadcastsd zmm3, QWORD PTR [8+rax+r14*8]              #238.3 c67
        vbroadcastsd zmm2, QWORD PTR [16+rax+r14*8]             #238.3 c73 stall 2
        vbroadcastsd zmm17, QWORD PTR [24+rax+r14*8]            #238.3 c73
        lea       rsi, QWORD PTR [rdi+rcx*8]                    #238.3 c79 stall 2
        movsxd    rcx, edx                                      #238.3 c79
        mov       rax, QWORD PTR [376+rsp]                      #238.3[spill] c79
        mov       r14, QWORD PTR [392+rsp]                      #238.3[spill] c81
                                # LOE rax rcx rbx rsi rdi r8 r11 r12 r13 r14 r15 edx r9d r10d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [1.54e+02]
        vmovups   zmm18, ZMMWORD PTR [rbx+r13*8]                #238.3 c1
        vmovups   zmm19, ZMMWORD PTR [64+rbx+r13*8]             #238.3 c1
        vfmadd231pd zmm18, zmm16, ZMMWORD PTR [rsi+r13*8]       #238.3 c7 stall 2
        vmovupd   ZMMWORD PTR [rbx+r13*8], zmm18                #238.3 c13 stall 2
        vfmadd231pd zmm19, zmm16, ZMMWORD PTR [64+rsi+r13*8]    #238.3 c13
        vmovupd   ZMMWORD PTR [64+rbx+r13*8], zmm19             #238.3 c19 stall 2
        vmovups   zmm20, ZMMWORD PTR [rax+r13*8]                #238.3 c19
        vmovups   zmm21, ZMMWORD PTR [64+rax+r13*8]             #238.3 c25 stall 2
        vfmadd231pd zmm20, zmm12, ZMMWORD PTR [rsi+r13*8]       #238.3 c25
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm20                #238.3 c31 stall 2
        vfmadd231pd zmm21, zmm12, ZMMWORD PTR [64+rsi+r13*8]    #238.3 c31
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm21             #238.3 c37 stall 2
        vmovups   zmm22, ZMMWORD PTR [r14+r13*8]                #238.3 c37
        vmovups   zmm23, ZMMWORD PTR [64+r14+r13*8]             #238.3 c43 stall 2
        vfmadd231pd zmm22, zmm8, ZMMWORD PTR [rsi+r13*8]        #238.3 c43
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm22                #238.3 c49 stall 2
        vfmadd231pd zmm23, zmm8, ZMMWORD PTR [64+rsi+r13*8]     #238.3 c49
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm23             #238.3 c55 stall 2
        vmovups   zmm24, ZMMWORD PTR [rsi+r13*8]                #238.3 c55
        vmovups   zmm25, ZMMWORD PTR [64+rsi+r13*8]             #238.3 c61 stall 2
        vfmadd213pd zmm24, zmm4, ZMMWORD PTR [r15+r13*8]        #238.3 c61
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm24                #238.3 c67 stall 2
        vfmadd213pd zmm25, zmm4, ZMMWORD PTR [64+r15+r13*8]     #238.3 c67
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm25             #238.3 c73 stall 2
        vmovups   zmm26, ZMMWORD PTR [rbx+r13*8]                #238.3 c73
        vmovups   zmm27, ZMMWORD PTR [64+rbx+r13*8]             #238.3 c79 stall 2
        vfmadd231pd zmm26, zmm15, ZMMWORD PTR [r11+r13*8]       #238.3 c79
        vmovupd   ZMMWORD PTR [rbx+r13*8], zmm26                #238.3 c85 stall 2
        vfmadd231pd zmm27, zmm15, ZMMWORD PTR [64+r11+r13*8]    #238.3 c85
        vmovupd   ZMMWORD PTR [64+rbx+r13*8], zmm27             #238.3 c91 stall 2
        vmovups   zmm28, ZMMWORD PTR [rax+r13*8]                #238.3 c91
        vmovups   zmm29, ZMMWORD PTR [64+rax+r13*8]             #238.3 c97 stall 2
        vfmadd231pd zmm28, zmm11, ZMMWORD PTR [r11+r13*8]       #238.3 c97
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm28                #238.3 c103 stall 2
        vfmadd231pd zmm29, zmm11, ZMMWORD PTR [64+r11+r13*8]    #238.3 c103
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm29             #238.3 c109 stall 2
        vmovups   zmm30, ZMMWORD PTR [r14+r13*8]                #238.3 c109
        vmovups   zmm31, ZMMWORD PTR [64+r14+r13*8]             #238.3 c115 stall 2
        .byte     15                                            #238.3 c115
        .byte     31                                            #238.3 c115
        .byte     64                                            #238.3 c115
        .byte     0                                             #238.3 c115
        vfmadd231pd zmm30, zmm7, ZMMWORD PTR [r11+r13*8]        #238.3 c115
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm30                #238.3 c121 stall 2
        vfmadd231pd zmm31, zmm7, ZMMWORD PTR [64+r11+r13*8]     #238.3 c121
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm31             #238.3 c127 stall 2
        vmovups   zmm18, ZMMWORD PTR [r11+r13*8]                #238.3 c127
        vmovups   zmm19, ZMMWORD PTR [64+r11+r13*8]             #238.3 c133 stall 2
        vfmadd213pd zmm18, zmm3, ZMMWORD PTR [r15+r13*8]        #238.3 c133
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm18                #238.3 c139 stall 2
        vfmadd213pd zmm19, zmm3, ZMMWORD PTR [64+r15+r13*8]     #238.3 c139
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm19             #238.3 c145 stall 2
        vmovups   zmm20, ZMMWORD PTR [rbx+r13*8]                #238.3 c145
        vmovups   zmm21, ZMMWORD PTR [64+rbx+r13*8]             #238.3 c151 stall 2
        vfmadd231pd zmm20, zmm14, ZMMWORD PTR [r8+r13*8]        #238.3 c151
        vmovupd   ZMMWORD PTR [rbx+r13*8], zmm20                #238.3 c157 stall 2
        vfmadd231pd zmm21, zmm14, ZMMWORD PTR [64+r8+r13*8]     #238.3 c157
        vmovupd   ZMMWORD PTR [64+rbx+r13*8], zmm21             #238.3 c163 stall 2
        vmovups   zmm22, ZMMWORD PTR [rax+r13*8]                #238.3 c163
        vmovups   zmm23, ZMMWORD PTR [64+rax+r13*8]             #238.3 c169 stall 2
        vfmadd231pd zmm22, zmm10, ZMMWORD PTR [r8+r13*8]        #238.3 c169
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm22                #238.3 c175 stall 2
        vfmadd231pd zmm23, zmm10, ZMMWORD PTR [64+r8+r13*8]     #238.3 c175
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm23             #238.3 c181 stall 2
        vmovups   zmm24, ZMMWORD PTR [r14+r13*8]                #238.3 c181
        vmovups   zmm25, ZMMWORD PTR [64+r14+r13*8]             #238.3 c187 stall 2
        vfmadd231pd zmm24, zmm6, ZMMWORD PTR [r8+r13*8]         #238.3 c187
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm24                #238.3 c193 stall 2
        vfmadd231pd zmm25, zmm6, ZMMWORD PTR [64+r8+r13*8]      #238.3 c193
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm25             #238.3 c199 stall 2
        vmovups   zmm26, ZMMWORD PTR [r8+r13*8]                 #238.3 c199
        vmovups   zmm27, ZMMWORD PTR [64+r8+r13*8]              #238.3 c205 stall 2
        vfmadd213pd zmm26, zmm2, ZMMWORD PTR [r15+r13*8]        #238.3 c205
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm26                #238.3 c211 stall 2
        vfmadd213pd zmm27, zmm2, ZMMWORD PTR [64+r15+r13*8]     #238.3 c211
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm27             #238.3 c217 stall 2
        vmovups   zmm28, ZMMWORD PTR [rbx+r13*8]                #238.3 c217
        vmovups   zmm29, ZMMWORD PTR [64+rbx+r13*8]             #238.3 c223 stall 2
        .byte     15                                            #238.3 c223
        .byte     31                                            #238.3 c223
        .byte     0                                             #238.3 c223
        vfmadd231pd zmm28, zmm13, ZMMWORD PTR [r12+r13*8]       #238.3 c223
        vmovupd   ZMMWORD PTR [rbx+r13*8], zmm28                #238.3 c229 stall 2
        vfmadd231pd zmm29, zmm13, ZMMWORD PTR [64+r12+r13*8]    #238.3 c229
        vmovupd   ZMMWORD PTR [64+rbx+r13*8], zmm29             #238.3 c235 stall 2
        vmovups   zmm30, ZMMWORD PTR [rax+r13*8]                #238.3 c235
        vmovups   zmm28, ZMMWORD PTR [64+rax+r13*8]             #238.3 c241 stall 2
        vfmadd231pd zmm30, zmm9, ZMMWORD PTR [r12+r13*8]        #238.3 c241
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm30                #238.3 c247 stall 2
        vfmadd231pd zmm28, zmm9, ZMMWORD PTR [64+r12+r13*8]     #238.3 c247
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm28             #238.3 c253 stall 2
        vmovups   zmm29, ZMMWORD PTR [r14+r13*8]                #238.3 c253
        vmovups   zmm18, ZMMWORD PTR [64+r14+r13*8]             #238.3 c259 stall 2
        vfmadd231pd zmm29, zmm5, ZMMWORD PTR [r12+r13*8]        #238.3 c259
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm29                #238.3 c265 stall 2
        vfmadd231pd zmm18, zmm5, ZMMWORD PTR [64+r12+r13*8]     #238.3 c265
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm18             #238.3 c271 stall 2
        vmovups   zmm19, ZMMWORD PTR [r12+r13*8]                #238.3 c271
        vmovups   zmm20, ZMMWORD PTR [64+r12+r13*8]             #238.3 c277 stall 2
        vfmadd213pd zmm19, zmm17, ZMMWORD PTR [r15+r13*8]       #238.3 c277
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm19                #238.3 c283 stall 2
        vfmadd213pd zmm20, zmm17, ZMMWORD PTR [64+r15+r13*8]    #238.3 c283
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm20             #238.3 c289 stall 2
        add       r13, 16                                       #238.3 c289
        cmp       r13, rcx                                      #238.3 c291
        jb        ..B1.40       # Prob 82%                      #238.3 c293
                                # LOE rax rcx rbx rsi rdi r8 r11 r12 r13 r14 r15 edx r9d r10d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17
..B1.41:                        # Preds ..B1.40
                                # Execution count [2.78e+01]
        mov       rax, QWORD PTR [208+rsp]                      #[spill] c1
        mov       ebx, DWORD PTR [248+rsp]                      #[spill] c1
                                # LOE rax rdi edx ebx r9d r10d ymm0 ymm1
..B1.42:                        # Preds ..B1.41 ..B1.38 ..B1.183
                                # Execution count [2.78e+01]
        lea       ecx, DWORD PTR [1+rdx]                        #238.3 c1
        cmp       ecx, ebx                                      #238.3 c3
        ja        ..B1.46       # Prob 50%                      #238.3 c5
                                # LOE rax rdi edx ebx r9d r10d ymm0 ymm1
..B1.43:                        # Preds ..B1.42
                                # Execution count [2.78e+01]
        mov       r11d, DWORD PTR [296+rsp]                     #238.3[spill] c1
        mov       DWORD PTR [472+rsp], r10d                     #238.3[spill] c1
        mov       ecx, 255                                      #238.3 c1
        mov       DWORD PTR [464+rsp], r9d                      #238.3[spill] c3
        kmovw     k1, ecx                                       #238.3 c3
        mov       DWORD PTR [248+rsp], ebx                      #238.3[spill] c5
        mov       ecx, DWORD PTR [304+rsp]                      #238.3[spill] c5
        vmovdqa   ymm3, ymm0                                    #238.3 c5
        xor       esi, esi                                      #238.3 c5
        mov       r14d, DWORD PTR [288+rsp]                     #238.3[spill] c7
        mov       r13d, DWORD PTR [264+rsp]                     #238.3[spill] c9
        lea       r8d, DWORD PTR [r11+r9*4]                     #238.3 c11
        mov       r11d, DWORD PTR [272+rsp]                     #238.3[spill] c13
        lea       r15d, DWORD PTR [rcx+r9*4]                    #238.3 c13
        movsxd    r8, r8d                                       #238.3 c13
        mov       QWORD PTR [456+rsp], r8                       #238.3[spill] c15
        movsxd    r15, r15d                                     #238.3 c15
        mov       QWORD PTR [424+rsp], r15                      #238.3[spill] c17
        lea       ecx, DWORD PTR [r14+r9*4]                     #238.3 c17
        mov       r14d, r10d                                    #238.3 c17
        mov       r15d, ebx                                     #238.3 c17
        sub       r14d, ebx                                     #238.3 c19
        lea       r12d, DWORD PTR [r13+r9*4]                    #238.3 c19
        sub       r15d, edx                                     #238.3 c19
        lea       r13d, DWORD PTR [r14+rbx*4]                   #238.3 c21
        lea       r14d, DWORD PTR [r11+r10]                     #238.3 c21
        movsxd    r12, r12d                                     #238.3 c21
        mov       QWORD PTR [432+rsp], r12                      #238.3[spill] c23
        mov       r11d, DWORD PTR [280+rsp]                     #238.3[spill] c23
        movsxd    r13, r13d                                     #238.3 c23
        movsxd    r14, r14d                                     #238.3 c23
        vmovd     xmm2, r15d                                    #238.3 c23
        lea       r12, QWORD PTR [rdi+r13*8]                    #238.3 c25
        movsxd    rdx, edx                                      #238.3 c25
        vpbroadcastd ymm2, xmm2                                 #238.3 c25
        lea       r8d, DWORD PTR [r11+r10]                      #238.3 c27
        mov       r11, QWORD PTR [376+rsp]                      #238.3[spill] c27
        movsxd    rcx, ecx                                      #238.3 c27
        movsxd    r8, r8d                                       #238.3 c29
        lea       r13, QWORD PTR [rdi+r14*8]                    #238.3 c29
        lea       r14, QWORD PTR [rdi+r8*8]                     #238.3 c31
        mov       r8d, DWORD PTR [256+rsp]                      #238.3[spill] c31
        lea       r11, QWORD PTR [r11+rdx*8]                    #238.3 c33
        mov       QWORD PTR [448+rsp], r11                      #238.3[spill] c35
        lea       r11d, DWORD PTR [r8+r10]                      #238.3 c35
        movsxd    r11, r11d                                     #238.3 c37
        lea       r15, QWORD PTR [r12+rdx*8]                    #238.3 c37
        lea       r12, QWORD PTR [r13+rdx*8]                    #238.3 c37
        mov       QWORD PTR [440+rsp], r12                      #238.3[spill] c39
        lea       r8, QWORD PTR [rdi+r11*8]                     #238.3 c39
        mov       r13, QWORD PTR [400+rsp]                      #238.3[spill] c41
        mov       r12, QWORD PTR [392+rsp]                      #238.3[spill] c41
        lea       r11, QWORD PTR [r8+rdx*8]                     #238.3 c45 stall 1
        mov       r8, QWORD PTR [384+rsp]                       #238.3[spill] c45
        lea       r14, QWORD PTR [r14+rdx*8]                    #238.3 c47
        lea       r13, QWORD PTR [r13+rdx*8]                    #238.3 c49
        lea       r12, QWORD PTR [r12+rdx*8]                    #238.3 c49
        lea       r8, QWORD PTR [r8+rdx*8]                      #238.3 c51
        neg       rdx                                           #238.3 c51
        mov       rbx, QWORD PTR [440+rsp]                      #238.3[spill] c51
        add       rdx, QWORD PTR [240+rsp]                      #238.3[spill] c53
        mov       QWORD PTR [504+rsp], rdx                      #238.3[spill] c55
        mov       rdx, QWORD PTR [448+rsp]                      #238.3[spill] c55
        mov       rdi, QWORD PTR [456+rsp]                      #238.3[spill] c57
        mov       r9, QWORD PTR [432+rsp]                       #238.3[spill] c59
        mov       r10, QWORD PTR [424+rsp]                      #238.3[spill] c61
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B1.44:                        # Preds ..B1.44 ..B1.43
                                # Execution count [1.54e+02]
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #238.3 c3
        vpaddd    ymm3, ymm3, ymm1                              #238.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r8+rsi*8]           #238.3 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r11+rsi*8]          #238.3 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [rax+r10*8]{1to8}     #238.3 c11 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm5              #238.3 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rdx+rsi*8]          #238.3 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r11+rsi*8]          #238.3 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [rax+rcx*8]{1to8}     #238.3 c29 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm7             #238.3 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [r12+rsi*8]          #238.3 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [r11+rsi*8]          #238.3 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [rax+r9*8]{1to8}      #238.3 c47 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm9             #238.3 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [r13+rsi*8]         #238.3 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [r11+rsi*8]         #238.3 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [rax+rdi*8]{1to8}   #238.3 c65 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm11            #238.3 c71 stall 2
        vmovupd   zmm13{k2}{z}, ZMMWORD PTR [r8+rsi*8]          #238.3 c71
        vmovupd   zmm12{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #238.3 c77 stall 2
        vfmadd231pd zmm13, zmm12, QWORD PTR [8+rax+r10*8]{1to8} #238.3 c83 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm13             #238.3 c89 stall 2
        vmovupd   zmm15{k2}{z}, ZMMWORD PTR [rdx+rsi*8]         #238.3 c89
        vmovupd   zmm14{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #238.3 c95 stall 2
        vfmadd231pd zmm15, zmm14, QWORD PTR [8+rax+rcx*8]{1to8} #238.3 c101 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm15            #238.3 c107 stall 2
        vmovupd   zmm17{k2}{z}, ZMMWORD PTR [r12+rsi*8]         #238.3 c107
        vmovupd   zmm16{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #238.3 c113 stall 2
        vfmadd231pd zmm17, zmm16, QWORD PTR [8+rax+r9*8]{1to8}  #238.3 c119 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm17            #238.3 c125 stall 2
        vmovupd   zmm19{k2}{z}, ZMMWORD PTR [r13+rsi*8]         #238.3 c125
        vmovupd   zmm18{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #238.3 c131 stall 2
        vfmadd231pd zmm19, zmm18, QWORD PTR [8+rax+rdi*8]{1to8} #238.3 c137 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm19            #238.3 c143 stall 2
        vmovupd   zmm21{k2}{z}, ZMMWORD PTR [r8+rsi*8]          #238.3 c143
        vmovupd   zmm20{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #238.3 c149 stall 2
        vfmadd231pd zmm21, zmm20, QWORD PTR [16+rax+r10*8]{1to8} #238.3 c155 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm21             #238.3 c161 stall 2
        vmovupd   zmm23{k2}{z}, ZMMWORD PTR [rdx+rsi*8]         #238.3 c161
        vmovupd   zmm22{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #238.3 c167 stall 2
        vfmadd231pd zmm23, zmm22, QWORD PTR [16+rax+rcx*8]{1to8} #238.3 c173 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm23            #238.3 c179 stall 2
        vmovupd   zmm25{k2}{z}, ZMMWORD PTR [r12+rsi*8]         #238.3 c179
        vmovupd   zmm24{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #238.3 c185 stall 2
        vfmadd231pd zmm25, zmm24, QWORD PTR [16+rax+r9*8]{1to8} #238.3 c191 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm25            #238.3 c197 stall 2
        .byte     144                                           #238.3 c197
        vmovupd   zmm27{k2}{z}, ZMMWORD PTR [r13+rsi*8]         #238.3 c197
        vmovupd   zmm26{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #238.3 c203 stall 2
        vfmadd231pd zmm27, zmm26, QWORD PTR [16+rax+rdi*8]{1to8} #238.3 c209 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm27            #238.3 c215 stall 2
        vmovupd   zmm29{k2}{z}, ZMMWORD PTR [r8+rsi*8]          #238.3 c215
        vmovupd   zmm28{k2}{z}, ZMMWORD PTR [r15+rsi*8]         #238.3 c221 stall 2
        vfmadd231pd zmm29, zmm28, QWORD PTR [24+rax+r10*8]{1to8} #238.3 c227 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm29             #238.3 c233 stall 2
        vmovupd   zmm31{k2}{z}, ZMMWORD PTR [rdx+rsi*8]         #238.3 c233
        vmovupd   zmm30{k2}{z}, ZMMWORD PTR [r15+rsi*8]         #238.3 c239 stall 2
        vfmadd231pd zmm31, zmm30, QWORD PTR [24+rax+rcx*8]{1to8} #238.3 c245 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm31            #238.3 c251 stall 2
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r12+rsi*8]          #238.3 c251
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r15+rsi*8]          #238.3 c257 stall 2
        vfmadd231pd zmm5, zmm4, QWORD PTR [24+rax+r9*8]{1to8}   #238.3 c263 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm5             #238.3 c269 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [r13+rsi*8]          #238.3 c269
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r15+rsi*8]          #238.3 c275 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [24+rax+rdi*8]{1to8}  #238.3 c281 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm7             #238.3 c287 stall 2
        add       rsi, 8                                        #238.3 c287
        cmp       rsi, QWORD PTR [504+rsp]                      #238.3[spill] c289
        jb        ..B1.44       # Prob 82%                      #238.3 c291
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B1.45:                        # Preds ..B1.44
                                # Execution count [2.78e+01]
        mov       r10d, DWORD PTR [472+rsp]                     #[spill] c1
        mov       r9d, DWORD PTR [464+rsp]                      #[spill] c1
        mov       rdi, QWORD PTR [216+rsp]                      #[spill] c5 stall 1
        mov       ebx, DWORD PTR [248+rsp]                      #[spill] c5
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B1.46:                        # Preds ..B1.37 ..B1.42 ..B1.45
                                # Execution count [6.94e+00]
        add       r9d, 1                                        #238.3 c1
        lea       r10d, DWORD PTR [r10+rbx*4]                   #238.3 c1
        cmp       r9d, DWORD PTR [104+rsp]                      #238.3[spill] c3
        jb        ..B1.30       # Prob 27%                      #238.3 c5
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B1.47:                        # Preds ..B1.46
                                # Execution count [5.00e+00]
        mov       edx, DWORD PTR [152+rsp]                      #[spill] c1
        mov       rcx, QWORD PTR [88+rsp]                       #[spill] c1
        mov       esi, 1                                        # c1
        xor       edi, edi                                      # c1
        lea       r8d, DWORD PTR [1+r9*4]                       #238.3 c5 stall 1
                                # LOE rax rcx edx ebx esi edi r8d ymm0 ymm1
..B1.48:                        # Preds ..B1.47 ..B1.28
                                # Execution count [5.00e+00]
        xor       r11d, r11d                                    #238.3 c1
        mov       DWORD PTR [96+rsp], edi                       #238.3[spill] c1
        cmp       r8d, ebx                                      #238.3 c1
        ja        ..B1.68       # Prob 0%                       #238.3 c3
                                # LOE rax rcx r11 edx ebx esi edi r8d ymm0 ymm1
..B1.49:                        # Preds ..B1.48
                                # Execution count [2.58e+01]
        mov       r12d, DWORD PTR [128+rsp]                     #238.3[spill] c1
        mov       DWORD PTR [152+rsp], edx                      #238.3[spill] c1
        mov       r10d, ebx                                     #238.3 c1
        mov       r9d, DWORD PTR [184+rsp]                      #238.3[spill] c3
        imul      r10d, r8d                                     #238.3 c3
        mov       r13d, DWORD PTR [192+rsp]                     #238.3[spill] c5
        lea       r14d, DWORD PTR [r12+rdx]                     #238.3 c7
        sub       r10d, ebx                                     #238.3 c7
        lea       r12d, DWORD PTR [r9+r13]                      #238.3 c9
        movsxd    r14, r14d                                     #238.3 c9
        movsxd    r10, r10d                                     #238.3 c9
        movsxd    r12, r12d                                     #238.3 c11
        lea       r15, QWORD PTR [rcx+r14*8]                    #238.3 c11
        mov       QWORD PTR [312+rsp], r15                      #238.3[spill] c13
        lea       r14, QWORD PTR [rcx+r12*8]                    #238.3 c13
        mov       QWORD PTR [328+rsp], r14                      #238.3[spill] c15
        mov       r15d, DWORD PTR [144+rsp]                     #238.3[spill] c15
        mov       r14d, DWORD PTR [168+rsp]                     #238.3[spill] c17
        lea       r13d, DWORD PTR [r15+rdx]                     #238.3 c19
        lea       r15d, DWORD PTR [r14+rdx]                     #238.3 c21
        mov       r14d, DWORD PTR [176+rsp]                     #238.3[spill] c21
        movsxd    r13, r13d                                     #238.3 c21
        movsxd    r15, r15d                                     #238.3 c23
        lea       r9, QWORD PTR [rax+r12*8]                     #238.3 c23
        add       r14d, edx                                     #238.3 c25
        lea       r12, QWORD PTR [rcx+r13*8]                    #238.3 c25
        mov       QWORD PTR [320+rsp], r12                      #238.3[spill] c27
        movsxd    r14, r14d                                     #238.3 c27
        movsxd    r13, r8d                                      #238.3 c27
        lea       r12, QWORD PTR [rax+r15*8]                    #238.3 c27
        lea       r15, QWORD PTR [rax+r14*8]                    #238.3 c29
        lea       r9, QWORD PTR [r9+r13*8]                      #238.3 c29
        neg       r8d                                           #238.3 c29
        lea       r14, QWORD PTR [r15+r13*8]                    #238.3 c31
        mov       QWORD PTR [368+rsp], r14                      #238.3[spill] c33
        mov       r15d, DWORD PTR [160+rsp]                     #238.3[spill] c33
        add       r8d, ebx                                      #238.3 c33
        lea       r12, QWORD PTR [r12+r13*8]                    #238.3 c35
        add       r8d, 1                                        #238.3 c35
        mov       DWORD PTR [200+rsp], r8d                      #238.3[spill] c37
        add       r15d, edx                                     #238.3 c37
        movsxd    r15, r15d                                     #238.3 c39
        lea       r15, QWORD PTR [rax+r15*8]                    #238.3 c41
        lea       r13, QWORD PTR [r15+r13*8]                    #238.3 c43
        mov       QWORD PTR [360+rsp], r13                      #238.3[spill] c45
        mov       r15d, DWORD PTR [136+rsp]                     #238.3[spill] c45
        add       r15d, edx                                     #238.3 c49 stall 1
        mov       rdx, QWORD PTR [216+rsp]                      #238.3[spill] c49
        movsxd    r15, r15d                                     #238.3 c51
        lea       r15, QWORD PTR [rcx+r15*8]                    #238.3 c53
        mov       QWORD PTR [352+rsp], r15                      #238.3[spill] c55
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B1.50:                        # Preds ..B1.66 ..B1.49
                                # Execution count [2.78e+01]
        cmp       ebx, 2257                                     #238.3 c1
        jl        ..B1.182      # Prob 10%                      #238.3 c3
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B1.51:                        # Preds ..B1.50
                                # Execution count [2.78e+01]
        lea       rdi, QWORD PTR [rdx+r10*8]                    #238.3 c1
        mov       r8, rdi                                       #238.3 c3
        and       r8, 63                                        #238.3 c5
        test      r8d, r8d                                      #238.3 c5
        je        ..B1.54       # Prob 50%                      #238.3 c7
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d ymm0 ymm1
..B1.52:                        # Preds ..B1.51
                                # Execution count [2.78e+01]
        test      r8d, 7                                        #238.3 c1
        jne       ..B1.181      # Prob 10%                      #238.3 c3
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d ymm0 ymm1
..B1.53:                        # Preds ..B1.52
                                # Execution count [0.00e+00]
        neg       r8d                                           #238.3 c1
        add       r8d, 64                                       #238.3 c3
        shr       r8d, 3                                        #238.3 c5
        cmp       ebx, r8d                                      #238.3 c7
        cmovl     r8d, ebx                                      #238.3 c9
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d ymm0 ymm1
..B1.54:                        # Preds ..B1.53 ..B1.51
                                # Execution count [2.78e+01]
        mov       r15d, ebx                                     #238.3 c1
        sub       r15d, r8d                                     #238.3 c3
        and       r15d, 15                                      #238.3 c5
        neg       r15d                                          #238.3 c7
        add       r15d, ebx                                     #238.3 c9
        cmp       r8d, 1                                        #238.3 c9
        jb        ..B1.58       # Prob 50%                      #238.3 c11
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B1.55:                        # Preds ..B1.54
                                # Execution count [2.78e+01]
        vmovd     xmm2, r8d                                     #238.3 c1
        mov       DWORD PTR [336+rsp], r8d                      #238.3[spill] c1
        mov       eax, 255                                      #238.3 c1
        mov       QWORD PTR [344+rsp], r10                      #238.3[spill] c1
        vmovdqa   ymm3, ymm0                                    #238.3 c1
        mov       DWORD PTR [248+rsp], ebx                      #238.3[spill] c3
        vpbroadcastd ymm2, xmm2                                 #238.3 c3
        kmovw     k1, eax                                       #238.3 c3
        mov       rdx, QWORD PTR [352+rsp]                      #238.3[spill] c3
        mov       rbx, QWORD PTR [360+rsp]                      #238.3[spill] c5
        xor       eax, eax                                      #238.3 c5
        movsxd    rsi, r8d                                      #238.3 c5
        mov       r8, QWORD PTR [368+rsp]                       #238.3[spill] c7
        xor       ecx, ecx                                      #238.3 c7
        mov       r10, QWORD PTR [320+rsp]                      #238.3[spill] c9
        mov       r13, QWORD PTR [328+rsp]                      #238.3[spill] c11
        mov       r14, QWORD PTR [312+rsp]                      #238.3[spill] c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15d ymm0 ymm1 ymm3 zmm2 k1
..B1.56:                        # Preds ..B1.56 ..B1.55
                                # Execution count [1.54e+02]
        add       rax, 8                                        #238.3 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #238.3 c3
        vpaddd    ymm3, ymm3, ymm1                              #238.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [rcx+r10]            #238.3 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rcx+rdi]            #238.3 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [-8+r8+r11*8]{1to8}   #238.3 c11 stall 2
        vmovupd   ZMMWORD PTR [rcx+r10]{k2}, zmm5               #238.3 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rcx+rdx]            #238.3 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [rcx+rdi]            #238.3 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [-8+rbx+r11*8]{1to8}  #238.3 c29 stall 2
        vmovupd   ZMMWORD PTR [rcx+rdx]{k2}, zmm7               #238.3 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [rcx+r13]            #238.3 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [rcx+rdi]            #238.3 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [-8+r9+r11*8]{1to8}   #238.3 c47 stall 2
        vmovupd   ZMMWORD PTR [rcx+r13]{k2}, zmm9               #238.3 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [rcx+r14]           #238.3 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [rcx+rdi]           #238.3 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [-8+r12+r11*8]{1to8} #238.3 c65 stall 2
        vmovupd   ZMMWORD PTR [rcx+r14]{k2}, zmm11              #238.3 c71 stall 2
        add       rcx, 64                                       #238.3 c71
        cmp       rax, rsi                                      #238.3 c71
        jb        ..B1.56       # Prob 82%                      #238.3 c73
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15d ymm0 ymm1 ymm3 zmm2 k1
..B1.57:                        # Preds ..B1.56
                                # Execution count [2.78e+01]
        mov       r8d, DWORD PTR [336+rsp]                      #[spill] c1
        mov       ebx, DWORD PTR [248+rsp]                      #[spill] c1
        mov       rdx, QWORD PTR [216+rsp]                      #[spill] c5 stall 1
        mov       r10, QWORD PTR [344+rsp]                      #[spill] c5
        cmp       ebx, r8d                                      #238.3 c5
        je        ..B1.66       # Prob 10%                      #238.3 c7
                                # LOE rdx r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B1.58:                        # Preds ..B1.57 ..B1.54 ..B1.182
                                # Execution count [0.00e+00]
        lea       eax, DWORD PTR [16+r8]                        #238.3 c1
        cmp       r15d, eax                                     #238.3 c3
        jl        ..B1.62       # Prob 50%                      #238.3 c5
                                # LOE rdx r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B1.59:                        # Preds ..B1.58
                                # Execution count [2.78e+01]
        mov       rax, QWORD PTR [368+rsp]                      #238.3[spill] c1
        mov       rcx, QWORD PTR [360+rsp]                      #238.3[spill] c1
        movsxd    r8, r8d                                       #238.3 c1
        mov       rsi, QWORD PTR [352+rsp]                      #238.3[spill] c5 stall 1
        mov       rdi, QWORD PTR [320+rsp]                      #238.3[spill] c5
        mov       r13, QWORD PTR [328+rsp]                      #238.3[spill] c9 stall 1
        mov       r14, QWORD PTR [312+rsp]                      #238.3[spill] c9
        vbroadcastsd zmm5, QWORD PTR [-8+r12+r11*8]             #238.3 c13 stall 1
        vbroadcastsd zmm4, QWORD PTR [-8+r9+r11*8]              #238.3 c13
        vbroadcastsd zmm3, QWORD PTR [-8+rax+r11*8]             #238.3 c19 stall 2
        vbroadcastsd zmm2, QWORD PTR [-8+rcx+r11*8]             #238.3 c19
        movsxd    rax, r15d                                     #238.3 c19
        lea       rcx, QWORD PTR [rdx+r10*8]                    #238.3 c25 stall 2
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 ebx r15d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5
..B1.60:                        # Preds ..B1.60 ..B1.59
                                # Execution count [1.54e+02]
        vmovups   zmm6, ZMMWORD PTR [rdi+r8*8]                  #238.3 c1
        vmovups   zmm7, ZMMWORD PTR [64+rdi+r8*8]               #238.3 c1
        vfmadd231pd zmm6, zmm3, ZMMWORD PTR [rcx+r8*8]          #238.3 c7 stall 2
        vmovupd   ZMMWORD PTR [rdi+r8*8], zmm6                  #238.3 c13 stall 2
        vfmadd231pd zmm7, zmm3, ZMMWORD PTR [64+rcx+r8*8]       #238.3 c13
        vmovupd   ZMMWORD PTR [64+rdi+r8*8], zmm7               #238.3 c19 stall 2
        vmovups   zmm8, ZMMWORD PTR [rsi+r8*8]                  #238.3 c19
        vmovups   zmm9, ZMMWORD PTR [64+rsi+r8*8]               #238.3 c25 stall 2
        vfmadd231pd zmm8, zmm2, ZMMWORD PTR [rcx+r8*8]          #238.3 c25
        vmovupd   ZMMWORD PTR [rsi+r8*8], zmm8                  #238.3 c31 stall 2
        vfmadd231pd zmm9, zmm2, ZMMWORD PTR [64+rcx+r8*8]       #238.3 c31
        vmovupd   ZMMWORD PTR [64+rsi+r8*8], zmm9               #238.3 c37 stall 2
        vmovups   zmm10, ZMMWORD PTR [r13+r8*8]                 #238.3 c37
        vmovups   zmm11, ZMMWORD PTR [64+r13+r8*8]              #238.3 c43 stall 2
        vfmadd231pd zmm10, zmm4, ZMMWORD PTR [rcx+r8*8]         #238.3 c43
        vmovupd   ZMMWORD PTR [r13+r8*8], zmm10                 #238.3 c49 stall 2
        vfmadd231pd zmm11, zmm4, ZMMWORD PTR [64+rcx+r8*8]      #238.3 c49
        vmovupd   ZMMWORD PTR [64+r13+r8*8], zmm11              #238.3 c55 stall 2
        vmovups   zmm12, ZMMWORD PTR [rcx+r8*8]                 #238.3 c55
        vmovups   zmm13, ZMMWORD PTR [64+rcx+r8*8]              #238.3 c61 stall 2
        vfmadd213pd zmm12, zmm5, ZMMWORD PTR [r14+r8*8]         #238.3 c61
        vmovupd   ZMMWORD PTR [r14+r8*8], zmm12                 #238.3 c67 stall 2
        vfmadd213pd zmm13, zmm5, ZMMWORD PTR [64+r14+r8*8]      #238.3 c67
        vmovupd   ZMMWORD PTR [64+r14+r8*8], zmm13              #238.3 c73 stall 2
        add       r8, 16                                        #238.3 c73
        cmp       r8, rax                                       #238.3 c75
        jb        ..B1.60       # Prob 82%                      #238.3 c77
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 ebx r15d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5
..B1.62:                        # Preds ..B1.60 ..B1.58 ..B1.181
                                # Execution count [2.78e+01]
        lea       eax, DWORD PTR [1+r15]                        #238.3 c1
        cmp       eax, ebx                                      #238.3 c3
        ja        ..B1.66       # Prob 50%                      #238.3 c5
                                # LOE rdx r9 r10 r11 r12 ebx r15d ymm0 ymm1
..B1.63:                        # Preds ..B1.62
                                # Execution count [2.78e+01]
        mov       r14d, ebx                                     #238.3 c1
        mov       DWORD PTR [248+rsp], ebx                      #238.3[spill] c1
        mov       r13, QWORD PTR [312+rsp]                      #238.3[spill] c1
        mov       eax, 255                                      #238.3 c1
        vmovdqa   ymm3, ymm0                                    #238.3 c1
        mov       r8, QWORD PTR [328+rsp]                       #238.3[spill] c3
        sub       r14d, r15d                                    #238.3 c3
        movsxd    r15, r15d                                     #238.3 c3
        mov       rdi, QWORD PTR [352+rsp]                      #238.3[spill] c5
        vmovd     xmm2, r14d                                    #238.3 c5
        kmovw     k1, eax                                       #238.3 c5
        xor       eax, eax                                      #238.3 c5
        mov       rsi, QWORD PTR [320+rsp]                      #238.3[spill] c7
        vpbroadcastd ymm2, xmm2                                 #238.3 c7
        lea       rcx, QWORD PTR [rdx+r10*8]                    #238.3 c9
        lea       r14, QWORD PTR [r13+r15*8]                    #238.3 c11
        lea       r13, QWORD PTR [r8+r15*8]                     #238.3 c11
        lea       r8, QWORD PTR [rdi+r15*8]                     #238.3 c13
        lea       rdi, QWORD PTR [rcx+r15*8]                    #238.3 c13
        lea       rcx, QWORD PTR [rsi+r15*8]                    #238.3 c15
        neg       r15                                           #238.3 c15
        mov       rdx, QWORD PTR [360+rsp]                      #238.3[spill] c15
        xor       esi, esi                                      #238.3 c15
        mov       rbx, QWORD PTR [368+rsp]                      #238.3[spill] c17
        add       r15, QWORD PTR [240+rsp]                      #238.3[spill] c19
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B1.64:                        # Preds ..B1.64 ..B1.63
                                # Execution count [1.54e+02]
        add       rax, 8                                        #238.3 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #238.3 c3
        vpaddd    ymm3, ymm3, ymm1                              #238.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [rsi+rcx]            #238.3 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rsi+rdi]            #238.3 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [-8+rbx+r11*8]{1to8}  #238.3 c11 stall 2
        vmovupd   ZMMWORD PTR [rsi+rcx]{k2}, zmm5               #238.3 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rsi+r8]             #238.3 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [rsi+rdi]            #238.3 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [-8+rdx+r11*8]{1to8}  #238.3 c29 stall 2
        vmovupd   ZMMWORD PTR [rsi+r8]{k2}, zmm7                #238.3 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [rsi+r13]            #238.3 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [rsi+rdi]            #238.3 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [-8+r9+r11*8]{1to8}   #238.3 c47 stall 2
        vmovupd   ZMMWORD PTR [rsi+r13]{k2}, zmm9               #238.3 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [rsi+r14]           #238.3 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [rsi+rdi]           #238.3 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [-8+r12+r11*8]{1to8} #238.3 c65 stall 2
        vmovupd   ZMMWORD PTR [rsi+r14]{k2}, zmm11              #238.3 c71 stall 2
        add       rsi, 64                                       #238.3 c71
        cmp       rax, r15                                      #238.3 c71
        jb        ..B1.64       # Prob 82%                      #238.3 c73
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B1.65:                        # Preds ..B1.64
                                # Execution count [2.78e+01]
        mov       rdx, QWORD PTR [216+rsp]                      #[spill] c1
        mov       ebx, DWORD PTR [248+rsp]                      #[spill] c1
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B1.66:                        # Preds ..B1.57 ..B1.62 ..B1.65
                                # Execution count [6.94e+00]
        mov       eax, DWORD PTR [96+rsp]                       #238.3[spill] c1
        add       r10, QWORD PTR [240+rsp]                      #238.3[spill] c1
        add       r11, 1                                        #238.3 c1
        add       eax, 1                                        #238.3 c5 stall 1
        mov       DWORD PTR [96+rsp], eax                       #238.3[spill] c7
        cmp       eax, DWORD PTR [200+rsp]                      #238.3[spill] c7
        jb        ..B1.50       # Prob 27%                      #238.3 c9
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B1.67:                        # Preds ..B1.66
                                # Execution count [5.00e+00]
        mov       edx, DWORD PTR [152+rsp]                      #[spill] c1
        mov       rax, QWORD PTR [208+rsp]                      #[spill] c1
        mov       esi, 1                                        # c1
        xor       edi, edi                                      # c1
        mov       rcx, QWORD PTR [88+rsp]                       #[spill] c5 stall 1
                                # LOE rax rcx edx ebx esi edi ymm0 ymm1
..B1.68:                        # Preds ..B1.48 ..B1.67
                                # Execution count [1.25e+00]
        mov       r10d, DWORD PTR [192+rsp]                     #238.3[spill] c1
        mov       r8d, DWORD PTR [264+rsp]                      #238.3[spill] c1
        lea       r11d, DWORD PTR [r10+rbx*4]                   #238.3 c5 stall 1
        mov       DWORD PTR [192+rsp], r11d                     #238.3[spill] c7
        mov       r10d, DWORD PTR [16+rsp]                      #238.3[spill] c7
        lea       r9d, DWORD PTR [r8+rbx*4]                     #238.3 c9
        mov       DWORD PTR [264+rsp], r9d                      #238.3[spill] c11
        mov       r12d, DWORD PTR [288+rsp]                     #238.3[spill] c11
        add       r10d, 1                                       #238.3 c11
        mov       DWORD PTR [16+rsp], r10d                      #238.3[spill] c13
        mov       r14d, DWORD PTR [304+rsp]                     #238.3[spill] c15
        mov       r8d, DWORD PTR [296+rsp]                      #238.3[spill] c15
        lea       r13d, DWORD PTR [r12+rbx*4]                   #238.3 c19 stall 1
        mov       DWORD PTR [288+rsp], r13d                     #238.3[spill] c21
        lea       r15d, DWORD PTR [r14+rbx*4]                   #238.3 c21
        mov       DWORD PTR [304+rsp], r15d                     #238.3[spill] c23
        lea       r9d, DWORD PTR [r8+rbx*4]                     #238.3 c23
        mov       DWORD PTR [296+rsp], r9d                      #238.3[spill] c25
        lea       edx, DWORD PTR [rdx+rbx*4]                    #238.3 c25
        cmp       r10d, DWORD PTR [8+rsp]                       #238.3[spill] c27
        jb        ..B1.28       # Prob 27%                      #238.3 c29
                                # LOE rax rcx edx ebx esi edi r10d ymm0 ymm1
..B1.69:                        # Preds ..B1.68
                                # Execution count [9.00e-01]
        mov       edx, r10d                                     #238.3 c1
        mov       eax, DWORD PTR [64+rsp]                       #[spill] c1
        lea       esi, DWORD PTR [1+rdx*4]                      #238.3 c3
                                # LOE eax ebx esi
..B1.70:                        # Preds ..B1.69 ..B1.26
                                # Execution count [9.00e-01]
        xor       r13d, r13d                                    #238.3 c1
        xor       r14d, r14d                                    #238.3 c1
        cmp       esi, eax                                      #238.3 c3
        ja        ..B1.92       # Prob 0%                       #238.3 c5
                                # LOE eax ebx esi r13d r14d
..B1.71:                        # Preds ..B1.70
                                # Execution count [4.65e+00]
        mov       edx, DWORD PTR [72+rsp]                       #238.3[spill] c1
        mov       r12d, ebx                                     #238.3 c1
        mov       ecx, 8                                        #238.3 c1
        imul      r12d, esi                                     #238.3 c3
        sub       eax, esi                                      #238.3 c3
        vmovd     xmm0, ecx                                     #238.3 c3
        mov       rcx, QWORD PTR [88+rsp]                       #238.3[spill] c3
        add       edx, -1                                       #238.3 c5
        imul      edx, ebx                                      #238.3 c7
        add       eax, 1                                        #238.3 c7
        mov       DWORD PTR [64+rsp], eax                       #238.3[spill] c9
        vpbroadcastd ymm1, xmm0                                 #238.3 c9
        vmovdqu   ymm0, YMMWORD PTR .L_2il0floatpacket.19[rip]  #238.3 c9
        lea       r11d, DWORD PTR [rdx+r12]                     #238.3 c11
        add       r12d, edx                                     #238.3 c11
        mov       edx, ebx                                      #238.3 c11
        and       edx, -8                                       #238.3 c13
        mov       DWORD PTR [8+rsp], edx                        #238.3[spill] c15
        mov       rdx, QWORD PTR [208+rsp]                      #238.3[spill] c15
                                # LOE rdx rcx ebx r11d r12d r13d r14d ymm0 ymm1
..B1.72:                        # Preds ..B1.90 ..B1.71
                                # Execution count [5.00e+00]
        lea       eax, DWORD PTR [r11+r14]                      #238.3 c1
        mov       DWORD PTR [96+rsp], r12d                      #238.3[spill] c1
        xor       edi, edi                                      #238.3 c1
        mov       DWORD PTR [80+rsp], r11d                      #238.3[spill] c3
        movsxd    rax, eax                                      #238.3 c3
        mov       DWORD PTR [72+rsp], r14d                      #238.3[spill] c3
        xor       r10d, r10d                                    #238.3 c3
        mov       DWORD PTR [16+rsp], r13d                      #238.3[spill] c5
        lea       rax, QWORD PTR [rcx+rax*8]                    #238.3 c5
        mov       QWORD PTR [128+rsp], rax                      #238.3[spill] c7
        mov       rsi, rax                                      #238.3 c7
        lea       r8d, DWORD PTR [r12+r14]                      #238.3 c7
        and       rsi, 63                                       #238.3 c9
        mov       r15d, esi                                     #238.3 c9
        mov       rcx, QWORD PTR [240+rsp]                      #238.3[spill] c9
        movsxd    r8, r8d                                       #238.3 c11
        and       r15d, 7                                       #238.3 c11
        mov       DWORD PTR [104+rsp], r15d                     #238.3[spill] c13
        lea       r9, QWORD PTR [rdx+r8*8]                      #238.3 c13
        xor       r8d, r8d                                      #238.3 c13
        mov       rdx, QWORD PTR [216+rsp]                      #238.3[spill] c15
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B1.73:                        # Preds ..B1.89 ..B1.72
                                # Execution count [2.78e+01]
        cmp       ebx, 38                                       #238.3 c1
        jl        ..B1.180      # Prob 10%                      #238.3 c3
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B1.74:                        # Preds ..B1.73
                                # Execution count [2.78e+01]
        mov       r15d, esi                                     #238.3 c1
        test      esi, esi                                      #238.3 c1
        je        ..B1.77       # Prob 50%                      #238.3 c3
                                # LOE rdx rcx r8 r9 r10 ebx esi edi r15d ymm0 ymm1
..B1.75:                        # Preds ..B1.74
                                # Execution count [2.78e+01]
        cmp       DWORD PTR [104+rsp], 0                        #238.3[spill] c1
        jne       ..B1.179      # Prob 10%                      #238.3 c3
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B1.76:                        # Preds ..B1.75
                                # Execution count [0.00e+00]
        mov       r15d, esi                                     #238.3 c1
        neg       r15d                                          #238.3 c3
        add       r15d, 64                                      #238.3 c5
        shr       r15d, 3                                       #238.3 c7
        cmp       ebx, r15d                                     #238.3 c9
        cmovl     r15d, ebx                                     #238.3 c11
                                # LOE rdx rcx r8 r9 r10 ebx esi edi r15d ymm0 ymm1
..B1.77:                        # Preds ..B1.76 ..B1.74
                                # Execution count [2.78e+01]
        mov       eax, ebx                                      #238.3 c1
        sub       eax, r15d                                     #238.3 c3
        and       eax, 7                                        #238.3 c5
        neg       eax                                           #238.3 c7
        add       eax, ebx                                      #238.3 c9
        cmp       r15d, 1                                       #238.3 c9
        jb        ..B1.81       # Prob 50%                      #238.3 c11
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B1.78:                        # Preds ..B1.77
                                # Execution count [2.78e+01]
        vmovd     xmm2, r15d                                    #238.3 c1
        mov       DWORD PTR [248+rsp], ebx                      #238.3[spill] c1
        mov       r11d, 255                                     #238.3 c1
        vmovdqa   ymm3, ymm0                                    #238.3 c1
        xor       r13d, r13d                                    #238.3 c1
        lea       r12, QWORD PTR [rdx+r8*8]                     #238.3 c1
        vpbroadcastd ymm2, xmm2                                 #238.3 c3
        kmovw     k1, r11d                                      #238.3 c3
        mov       rbx, QWORD PTR [128+rsp]                      #238.3[spill] c3
        movsxd    r14, r15d                                     #238.3 c5
        xor       r11d, r11d                                    #238.3 c5
                                # LOE rdx rcx rbx r8 r9 r10 r11 r12 r13 r14 eax esi edi r15d ymm0 ymm1 ymm3 zmm2 k1
..B1.79:                        # Preds ..B1.79 ..B1.78
                                # Execution count [1.54e+02]
        add       r13, 8                                        #238.3 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #238.3 c3
        vpaddd    ymm3, ymm3, ymm1                              #238.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r11+rbx]            #238.3 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r11+r12]            #238.3 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [r9+r10*8]{1to8}      #238.3 c11 stall 2
        vmovupd   ZMMWORD PTR [r11+rbx]{k2}, zmm5               #238.3 c17 stall 2
        add       r11, 64                                       #238.3 c17
        cmp       r13, r14                                      #238.3 c17
        jb        ..B1.79       # Prob 82%                      #238.3 c19
                                # LOE rdx rcx rbx r8 r9 r10 r11 r12 r13 r14 eax esi edi r15d ymm0 ymm1 ymm3 zmm2 k1
..B1.80:                        # Preds ..B1.79
                                # Execution count [2.78e+01]
        mov       ebx, DWORD PTR [248+rsp]                      #[spill] c1
        cmp       ebx, r15d                                     #238.3 c5 stall 1
        je        ..B1.89       # Prob 10%                      #238.3 c7
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B1.81:                        # Preds ..B1.80 ..B1.77 ..B1.180
                                # Execution count [0.00e+00]
        lea       r11d, DWORD PTR [8+r15]                       #238.3 c1
        cmp       eax, r11d                                     #238.3 c3
        jl        ..B1.85       # Prob 50%                      #238.3 c5
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B1.82:                        # Preds ..B1.81
                                # Execution count [2.78e+01]
        movsxd    r15, r15d                                     #238.3 c1
        vbroadcastsd zmm2, QWORD PTR [r9+r10*8]                 #238.3 c1
        lea       r12, QWORD PTR [rdx+r8*8]                     #238.3 c1
        movsxd    r11, eax                                      #238.3 c1
        mov       r13, QWORD PTR [128+rsp]                      #238.3[spill] c3
                                # LOE rdx rcx r8 r9 r10 r11 r12 r13 r15 eax ebx esi edi ymm0 ymm1 zmm2
..B1.83:                        # Preds ..B1.83 ..B1.82
                                # Execution count [1.54e+02]
        vmovups   zmm3, ZMMWORD PTR [r12+r15*8]                 #238.3 c1
        vfmadd213pd zmm3, zmm2, ZMMWORD PTR [r13+r15*8]         #238.3 c7 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8], zmm3                 #238.3 c13 stall 2
        add       r15, 8                                        #238.3 c13
        cmp       r15, r11                                      #238.3 c15
        jb        ..B1.83       # Prob 82%                      #238.3 c17
                                # LOE rdx rcx r8 r9 r10 r11 r12 r13 r15 eax ebx esi edi ymm0 ymm1 zmm2
..B1.85:                        # Preds ..B1.83 ..B1.81 ..B1.179
                                # Execution count [2.78e+01]
        lea       r11d, DWORD PTR [1+rax]                       #238.3 c1
        cmp       r11d, ebx                                     #238.3 c3
        ja        ..B1.89       # Prob 50%                      #238.3 c5
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi ymm0 ymm1
..B1.86:                        # Preds ..B1.85
                                # Execution count [2.78e+01]
        mov       r14d, ebx                                     #238.3 c1
        mov       r13, QWORD PTR [128+rsp]                      #238.3[spill] c1
        lea       r12, QWORD PTR [rdx+r8*8]                     #238.3 c1
        mov       r11d, 255                                     #238.3 c1
        vmovdqa   ymm3, ymm0                                    #238.3 c1
        sub       r14d, eax                                     #238.3 c3
        movsxd    rax, eax                                      #238.3 c3
        vmovd     xmm2, r14d                                    #238.3 c5
        lea       r14, QWORD PTR [r12+rax*8]                    #238.3 c5
        lea       r13, QWORD PTR [r13+rax*8]                    #238.3 c5
        neg       rax                                           #238.3 c5
        kmovw     k1, r11d                                      #238.3 c5
        vpbroadcastd ymm2, xmm2                                 #238.3 c7
        xor       r11d, r11d                                    #238.3 c7
        add       rax, rcx                                      #238.3 c9
        xor       r12d, r12d                                    #238.3 c9
                                # LOE rax rdx rcx r8 r9 r10 r11 r12 r13 r14 ebx esi edi ymm0 ymm1 ymm3 zmm2 k1
..B1.87:                        # Preds ..B1.87 ..B1.86
                                # Execution count [1.54e+02]
        add       r11, 8                                        #238.3 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #238.3 c3
        vpaddd    ymm3, ymm3, ymm1                              #238.3 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r12+r13]            #238.3 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r12+r14]            #238.3 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [r9+r10*8]{1to8}      #238.3 c11 stall 2
        vmovupd   ZMMWORD PTR [r12+r13]{k2}, zmm5               #238.3 c17 stall 2
        add       r12, 64                                       #238.3 c17
        cmp       r11, rax                                      #238.3 c17
        jb        ..B1.87       # Prob 82%                      #238.3 c19
                                # LOE rax rdx rcx r8 r9 r10 r11 r12 r13 r14 ebx esi edi ymm0 ymm1 ymm3 zmm2 k1
..B1.89:                        # Preds ..B1.87 ..B1.80 ..B1.85
                                # Execution count [2.78e+01]
        add       edi, 1                                        #238.3 c1
        add       r8, rcx                                       #238.3 c1
        add       r10, 1                                        #238.3 c3
        cmp       edi, ebx                                      #238.3 c3
        jb        ..B1.73       # Prob 82%                      #238.3 c5
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B1.90:                        # Preds ..B1.89
                                # Execution count [1.25e+00]
        mov       r13d, DWORD PTR [16+rsp]                      #[spill] c1
        mov       r14d, DWORD PTR [72+rsp]                      #[spill] c1
        add       r13d, 1                                       #238.3 c5 stall 1
        add       r14d, ebx                                     #238.3 c5
        mov       r12d, DWORD PTR [96+rsp]                      #[spill] c5
        mov       r11d, DWORD PTR [80+rsp]                      #[spill] c5
        mov       rcx, QWORD PTR [88+rsp]                       #[spill] c9 stall 1
        mov       rdx, QWORD PTR [208+rsp]                      #[spill] c9
        cmp       r13d, DWORD PTR [64+rsp]                      #238.3[spill] c13 stall 1
        jb        ..B1.72       # Prob 27%                      #238.3 c15
                                # LOE rdx rcx ebx r11d r12d r13d r14d ymm0 ymm1
..B1.92:                        # Preds ..B1.90 ..B1.25 ..B1.70
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.497 #238.3 c1
        mov       esi, DWORD PTR [rsp]                          #238.3[spill] c1
        call      __kmpc_for_static_fini                        #238.3 c3
                                # LOE
..B1.93:                        # Preds ..B1.23 ..B1.92
                                # Execution count [0.00e+00]
        xor       eax, eax                                      #238.3 c1
        mov       r15, QWORD PTR [24+rsp]                       #238.3[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [32+rsp]                       #238.3[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [40+rsp]                       #238.3[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [48+rsp]                       #238.3[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [56+rsp]                       #238.3[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #238.3 c11
        pop       rbp                                           #238.3
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #238.3
	.cfi_def_cfa 6, 16
                                # LOE
L_main_223__par_loop0_2.4:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
..B1.94:                        # Preds ..B1.0
                                # Execution count [1.00e+00]
        push      rbp                                           #223.3
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #223.3
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #223.3
        sub       rsp, 5248                                     #223.3 c1
        mov       QWORD PTR [48+rsp], r12                       #223.3[spill] c3
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xeb, 0xff, 0xff, 0x22
        mov       r12d, DWORD PTR [rdx]                         #223.3 c3
        mov       QWORD PTR [56+rsp], rbx                       #223.3[spill] c5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xeb, 0xff, 0xff, 0x22
        mov       rbx, r9                                       #223.3 c5
        mov       QWORD PTR [24+rsp], r15                       #223.3[spill] c7
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xeb, 0xff, 0xff, 0x22
        mov       r15, r8                                       #223.3 c7
        mov       QWORD PTR [32+rsp], r14                       #223.3[spill] c7
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xeb, 0xff, 0xff, 0x22
        mov       r14d, DWORD PTR [rdi]                         #223.3 c9
        mov       QWORD PTR [40+rsp], r13                       #223.3[spill] c9
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xeb, 0xff, 0xff, 0x22
        mov       r13, rcx                                      #223.3 c9
        test      r12d, r12d                                    #223.3 c9
        jle       ..B1.105      # Prob 10%                      #223.3 c11
                                # LOE rbx r13 r15 r12d r14d
..B1.95:                        # Preds ..B1.94
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #223.3 c1
        mov       DWORD PTR [rsp], eax                          #223.3 c3
        add       r12d, -1                                      #223.3 c3
        mov       DWORD PTR [8+rsp], eax                        #223.3 c3
        mov       r11d, 1                                       #223.3 c3
        mov       DWORD PTR [4+rsp], r12d                       #223.3 c5
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.473 #223.3 c5
        mov       DWORD PTR [12+rsp], r11d                      #223.3 c5
        add       rsp, -32                                      #223.3 c5
        lea       r10, QWORD PTR [44+rsp]                       #223.3 c7
        mov       QWORD PTR [rsp], r10                          #223.3 c9
        mov       esi, r14d                                     #223.3 c9
        mov       DWORD PTR [8+rsp], r11d                       #223.3 c9
        mov       edx, 34                                       #223.3 c9
        mov       DWORD PTR [16+rsp], r11d                      #223.3 c11
        lea       rcx, QWORD PTR [40+rsp]                       #223.3 c11
        lea       r8, QWORD PTR [32+rsp]                        #223.3 c13
        lea       r9, QWORD PTR [36+rsp]                        #223.3 c13
        call      __kmpc_for_static_init_4                      #223.3 c15
                                # LOE rbx r13 r15 r12d r14d
..B1.194:                       # Preds ..B1.95
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #223.3 c1
                                # LOE rbx r13 r15 r12d r14d
..B1.96:                        # Preds ..B1.194
                                # Execution count [0.00e+00]
        mov       edx, DWORD PTR [rsp]                          #223.3 c1
        mov       eax, DWORD PTR [4+rsp]                        #223.3 c1
        cmp       edx, r12d                                     #223.3 c5 stall 1
        jg        ..B1.104      # Prob 50%                      #223.3 c7
                                # LOE rbx r13 r15 eax edx r12d r14d
..B1.97:                        # Preds ..B1.96
                                # Execution count [0.00e+00]
        cmp       eax, r12d                                     #223.3 c1
        cmovl     r12d, eax                                     #223.3 c3
        cmp       edx, r12d                                     #223.3 c5
        jg        ..B1.104      # Prob 50%                      #223.3 c7
                                # LOE rbx r13 r15 edx r12d r14d
..B1.98:                        # Preds ..B1.97
                                # Execution count [9.00e-01]
        sub       r12d, edx                                     #223.3 c1
        mov       rax, QWORD PTR [rbx]                          #223.3 c1
        mov       r15, QWORD PTR [r15]                          #223.3 c1
        mov       ecx, 1                                        #223.3 c1
        xor       r9d, r9d                                      #223.3 c3
        lea       r11d, DWORD PTR [1+r12]                       #223.3 c5
        mov       r10, QWORD PTR [r13]                          #223.3 c5
        mov       ebx, r11d                                     #223.3 c7
        shr       ebx, 31                                       #223.3 c9
        lea       r8d, DWORD PTR [1+r12+rbx]                    #223.3 c11
        sar       r8d, 1                                        #223.3 c13
        test      r8d, r8d                                      #223.3 c15
        jbe       ..B1.102      # Prob 0%                       #223.3 c17
                                # LOE rax r10 r15 edx ecx r8d r9d r11d r14d
..B1.99:                        # Preds ..B1.98
                                # Execution count [9.00e-01]
        movsxd    rdx, edx                                      #223.3 c1
        xor       ebx, ebx                                      #223.3 c1
        lea       rdi, QWORD PTR [rax+rdx*8]                    #223.3 c3
        lea       rcx, QWORD PTR [r15+rdx*8]                    #223.3 c3
        lea       r12, QWORD PTR [r10+rdx*8]                    #223.3 c5
                                # LOE rax rcx rbx rdi r10 r12 r15 edx r8d r9d r11d r14d
..B1.100:                       # Preds ..B1.100 ..B1.99
                                # Execution count [2.50e+00]
        lea       r13d, DWORD PTR [r9+r9]                       #223.3 c1
        add       r9d, 1                                        #223.3 c1
        movsxd    r13, r13d                                     #223.3 c3
        mov       QWORD PTR [rdi+r13*8], rbx                    #223.3 c5
        cmp       r9d, r8d                                      #223.3 c5
        mov       QWORD PTR [rcx+r13*8], rbx                    #223.3 c5
        mov       QWORD PTR [r12+r13*8], rbx                    #223.3 c7
        mov       QWORD PTR [8+rdi+r13*8], rbx                  #223.3 c7
        mov       QWORD PTR [8+rcx+r13*8], rbx                  #223.3 c9
        mov       QWORD PTR [8+r12+r13*8], rbx                  #223.3 c9
        jb        ..B1.100      # Prob 63%                      #223.3 c9
                                # LOE rax rcx rbx rdi r10 r12 r15 edx r8d r9d r11d r14d
..B1.101:                       # Preds ..B1.100
                                # Execution count [9.00e-01]
        lea       ecx, DWORD PTR [1+r9+r9]                      #223.3 c1
                                # LOE rax r10 r15 edx ecx r11d r14d
..B1.102:                       # Preds ..B1.101 ..B1.98
                                # Execution count [9.00e-01]
        lea       ebx, DWORD PTR [-1+rcx]                       #223.3 c1
        cmp       ebx, r11d                                     #223.3 c3
        jae       ..B1.104      # Prob 0%                       #223.3 c5
                                # LOE rax r10 r15 edx ecx r14d
..B1.103:                       # Preds ..B1.102
                                # Execution count [9.00e-01]
        movsxd    rdx, edx                                      #223.3 c1
        movsxd    rcx, ecx                                      #223.3 c1
        xor       ebx, ebx                                      #223.3 c3
        add       rdx, rcx                                      #223.3 c3
        mov       QWORD PTR [-8+rax+rdx*8], rbx                 #223.3 c5
        mov       QWORD PTR [-8+r15+rdx*8], rbx                 #223.3 c5
        mov       QWORD PTR [-8+r10+rdx*8], rbx                 #223.3 c7
                                # LOE r14d
..B1.104:                       # Preds ..B1.96 ..B1.97 ..B1.102 ..B1.103
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.473 #223.3 c1
        mov       esi, r14d                                     #223.3 c1
        call      __kmpc_for_static_fini                        #223.3 c3
                                # LOE
..B1.105:                       # Preds ..B1.94 ..B1.104
                                # Execution count [0.00e+00]
        xor       eax, eax                                      #223.3 c1
        mov       r15, QWORD PTR [24+rsp]                       #223.3[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [32+rsp]                       #223.3[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [40+rsp]                       #223.3[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [48+rsp]                       #223.3[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [56+rsp]                       #223.3[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #223.3 c11
        pop       rbp                                           #223.3
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #223.3
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xeb, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xeb, 0xff, 0xff, 0x22
                                # LOE
..B1.106:                       # Preds ..B1.20
                                # Execution count [4.90e+00]: Infreq
        vgetmantsd xmm7, xmm4, xmm4, 0                          #227.3 c1
        vgetmantsd xmm8, xmm5, xmm5, 0                          #227.3 c1
        vmovsd    xmm6, QWORD PTR .L_2il0floatpacket.18[rip]    #227.3 c1
        add       r13d, 1                                       #227.3 c1
        vrcp28sd  xmm9, xmm7, xmm7                              #227.3 c7 stall 2
        vgetexpsd xmm5, xmm5, xmm5                              #227.3 c7
        vgetexpsd xmm4, xmm4, xmm4                              #227.3 c13 stall 2
        vmulsd    xmm10, xmm9, xmm8, {rn-sae}                   #227.3 c15
        vfnmadd231sd xmm6, xmm9, xmm7, {rn-sae}                 #227.3 c19 stall 1
        vfnmadd231sd xmm8, xmm10, xmm7, {rn-sae}                #227.3 c21
        vfmadd231sd xmm9, xmm6, xmm9, {rn-sae}                  #227.3 c25 stall 1
        vsubsd    xmm11, xmm5, xmm4                             #227.3 c27
        vfmadd231sd xmm10, xmm8, xmm9, {rn-sae}                 #227.3 c31 stall 1
        vscalefsd xmm12, xmm10, xmm11                           #227.3 c37 stall 2
        vmovsd    QWORD PTR [r12], xmm12                        #227.3 c43 stall 2
        add       r12, 8                                        #227.3 c43
        cmp       r13d, 1048576                                 #227.3 c43
        jae       ..B1.177      # Prob 18%                      #227.3 c45
                                # LOE rax rbx r12 r14 r13d f1 zmm0 zmm1 zmm2 zmm3
..B1.108:                       # Preds ..B1.106 ..B1.110
                                # Execution count [4.38e+00]: Infreq
        vxorpd    xmm5, xmm5, xmm5                              #227.3 c1
        vmovsd    xmm4, QWORD PTR .L_2il0floatpacket.18[rip]    #227.3 c1
        mov       r8, rbx                                       #227.3 c1
        test      rax, rax                                      #227.3 c1
        je        ..B1.110      # Prob 9%                       #227.3 c3
                                # LOE rax rbx r8 r12 r14 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.109:                       # Preds ..B1.108
                                # Execution count [3.94e+00]: Infreq
        mov       r10, 0x09d2c5680                              #227.3 c1
        mov       r9, 0x0efc60000                               #227.3 c1
        jmp       ..B1.21       # Prob 100%                     #227.3 c1
                                # LOE rax rbx r8 r9 r10 r12 r14 r13d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.110:                       # Preds ..B1.178 ..B1.108
                                # Execution count [4.46e-01]: Infreq
        add       r13d, 1                                       #227.3 c1
        mov       QWORD PTR [r12], 0                            #227.3 c1
        add       r12, 8                                        #227.3 c1
        cmp       r13d, 1048576                                 #227.3 c3
        jb        ..B1.108      # Prob 82%                      #227.3 c5
                                # LOE rax rbx r12 r14 r13d f1 zmm0 zmm1 zmm2 zmm3
..B1.111:                       # Preds ..B1.110
                                # Execution count [9.79e-03]: Infreq
        mov       r8, QWORD PTR [112+rsp]                       #228.19 c1
        xor       r12d, r12d                                    #228.3 c1
        vxorpd    xmm4, xmm4, xmm4                              #228.3 c1
        vmovsd    xmm5, QWORD PTR .L_2il0floatpacket.18[rip]    #228.3 c1
        fstp      st(0)                                         #228.3 c1
        fld       TBYTE PTR .L_2il0floatpacket.6[rip]           #228.3 c5 stall 1
                                # LOE rax rbx r8 r14 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.112:                       # Preds ..B1.121 ..B1.111 ..B1.113
                                # Execution count [5.44e+00]: Infreq
        vgetmantsd xmm7, xmm5, xmm5, 0                          #228.3 c1
        vgetmantsd xmm8, xmm4, xmm4, 0                          #228.3 c1
        vmovsd    xmm6, QWORD PTR .L_2il0floatpacket.18[rip]    #228.3 c1
        add       r12d, 1                                       #228.3 c1
        vrcp28sd  xmm9, xmm7, xmm7                              #228.3 c7 stall 2
        vgetexpsd xmm4, xmm4, xmm4                              #228.3 c7
        vgetexpsd xmm5, xmm5, xmm5                              #228.3 c13 stall 2
        vmulsd    xmm10, xmm9, xmm8, {rn-sae}                   #228.3 c15
        vfnmadd231sd xmm6, xmm9, xmm7, {rn-sae}                 #228.3 c19 stall 1
        vfnmadd231sd xmm8, xmm10, xmm7, {rn-sae}                #228.3 c21
        vfmadd231sd xmm9, xmm6, xmm9, {rn-sae}                  #228.3 c25 stall 1
        vsubsd    xmm11, xmm4, xmm5                             #228.3 c27
        vfmadd231sd xmm10, xmm8, xmm9, {rn-sae}                 #228.3 c31 stall 1
        vscalefsd xmm12, xmm10, xmm11                           #228.3 c37 stall 2
        vmovsd    QWORD PTR [r8], xmm12                         #228.3 c43 stall 2
        add       r8, 8                                         #228.3 c43
        cmp       r12d, 1048576                                 #228.3 c43
        jae       ..B1.123      # Prob 18%                      #228.3 c45
                                # LOE rax rbx r8 r14 r12d f1 zmm0 zmm1 zmm2 zmm3
..B1.113:                       # Preds ..B1.112 ..B1.177
                                # Execution count [5.34e+00]: Infreq
        vxorpd    xmm4, xmm4, xmm4                              #228.3 c1
        vmovsd    xmm5, QWORD PTR .L_2il0floatpacket.18[rip]    #228.3 c1
        mov       r11, rbx                                      #228.3 c1
        test      rax, rax                                      #228.3 c1
        je        ..B1.112      # Prob 9%                       #228.3 c3
                                # LOE rax rbx r8 r11 r14 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.114:                       # Preds ..B1.113
                                # Execution count [4.90e+00]: Infreq
        mov       r9, 0x09d2c5680                               #227.3 c1
        mov       r10, 0x0efc60000                              #227.3 c1
                                # LOE rax rbx r8 r9 r10 r11 r14 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.115:                       # Preds ..B1.121 ..B1.114
                                # Execution count [2.72e+01]: Infreq
        cmp       r14, 624                                      #228.3 c1
        jb        ..B1.121      # Prob 78%                      #228.3 c3
                                # LOE rax rbx r8 r9 r10 r11 r14 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.116:                       # Preds ..B1.115
                                # Execution count [5.98e+00]: Infreq
        mov       rdx, rbx                                      #228.3 c1
        .align    16,0x90
                                # LOE rax rdx rbx r8 r9 r10 r11 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.117:                       # Preds ..B1.117 ..B1.116
                                # Execution count [1.36e+03]: Infreq
        vpandq    zmm7, zmm3, ZMMWORD PTR [136+rsp+rdx*8]       #228.3 c1
        vpternlogq zmm7, zmm0, ZMMWORD PTR [128+rsp+rdx*8], 248 #228.3 c3
        vpandq    zmm6, zmm2, zmm7                              #228.3 c5
        vpsrlq    zmm8, zmm7, 1                                 #228.3 c5
        vptestmq  k1, zmm6, zmm6                                #228.3 c7
        vmovdqa64 zmm9{k1}{z}, zmm1                             #228.3 c11 stall 1
        vpternlogq zmm9, zmm8, ZMMWORD PTR [3304+rsp+rdx*8], 150 #228.3 c13
        vmovdqu64 ZMMWORD PTR [128+rsp+rdx*8], zmm9             #228.3 c15
        add       rdx, 8                                        #228.3 c15
        cmp       rdx, 224                                      #228.3 c17
        jb        ..B1.117      # Prob 99%                      #228.3 c19
                                # LOE rax rdx rbx r8 r9 r10 r11 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.118:                       # Preds ..B1.117
                                # Execution count [5.98e+00]: Infreq
        mov       rcx, QWORD PTR [1928+rsp]                     #228.3 c1
        mov       rsi, QWORD PTR [1920+rsp]                     #228.3 c1
        mov       r13, rbx                                      #228.3 c1
        mov       rdi, rcx                                      #228.3 c5 stall 1
        and       rsi, -2147483648                              #228.3 c5
        mov       rdx, QWORD PTR [1936+rsp]                     #228.3 c5
        and       rdi, 2147483647                               #228.3 c7
        and       rcx, -2147483648                              #228.3 c7
        or        rsi, rdi                                      #228.3 c9
        mov       rdi, 0x09908b0df                              #228.3 c9
        mov       r14, rsi                                      #228.3 c11
        test      rsi, 1                                        #228.3 c11
        cmovne    r13, rdi                                      #228.3 c13
        shr       r14, 1                                        #228.3 c13
        xor       r14, QWORD PTR [5096+rsp]                     #228.3 c15
        mov       r15, rdx                                      #228.3 c15
        and       rdx, -2147483648                              #228.3 c15
        xor       r14, r13                                      #228.3 c17
        mov       QWORD PTR [1920+rsp], r14                     #228.3 c19
        mov       r13, QWORD PTR [1944+rsp]                     #228.3 c19
        and       r15, 2147483647                               #228.3 c19
        or        rcx, r15                                      #228.3 c21
        and       r13, 2147483647                               #228.3 c23
        mov       rsi, rcx                                      #228.3 c23
        or        rdx, r13                                      #228.3 c25
        test      rcx, 1                                        #228.3 c25
        mov       rcx, rbx                                      #228.3 c27
        mov       r14, rdx                                      #228.3 c27
        cmovne    rcx, rdi                                      #228.3 c29
        shr       rsi, 1                                        #228.3 c29
        shr       r14, 1                                        #228.3 c31
        test      rdx, 1                                        #228.3 c31
        mov       rdx, rbx                                      #228.3 c33
        cmovne    rdx, rdi                                      #228.3 c35
        xor       rsi, QWORD PTR [5104+rsp]                     #228.3 c35
        xor       r14, QWORD PTR [5112+rsp]                     #228.3 c35
        xor       rsi, rcx                                      #228.3 c37
        mov       QWORD PTR [1928+rsp], rsi                     #228.3 c39
        xor       r14, rdx                                      #228.3 c39
        mov       QWORD PTR [1936+rsp], r14                     #228.3 c41
        xor       esi, esi                                      #228.3 c41
        mov       rdx, rbx                                      #228.3 c41
                                # LOE rax rdx rbx rdi r8 r9 r10 r11 esi r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.119:                       # Preds ..B1.119 ..B1.118
                                # Execution count [1.18e+03]: Infreq
        mov       rcx, QWORD PTR [1952+rsp+rdx]                 #228.3 c1
        mov       r15, QWORD PTR [1944+rsp+rdx]                 #228.3 c1
        mov       r14, rbx                                      #228.3 c1
        add       esi, 1                                        #228.3 c1
        mov       r13, rcx                                      #228.3 c5 stall 1
        and       r15, -2147483648                              #228.3 c5
        and       r13, 2147483647                               #228.3 c7
        and       rcx, -2147483648                              #228.3 c7
        or        r15, r13                                      #228.3 c9
        mov       r13, QWORD PTR [1960+rsp+rdx]                 #228.3 c9
        test      r15, 1                                        #228.3 c11
        cmovne    r14, rdi                                      #228.3 c13
        shr       r15, 1                                        #228.3 c13
        and       r13, 2147483647                               #228.3 c15
        xor       r15, QWORD PTR [128+rsp+rdx]                  #228.3 c15
        or        rcx, r13                                      #228.3 c17
        xor       r15, r14                                      #228.3 c17
        mov       QWORD PTR [1944+rsp+rdx], r15                 #228.3 c19
        mov       r14, rcx                                      #228.3 c19
        test      rcx, 1                                        #228.3 c19
        mov       rcx, rbx                                      #228.3 c21
        cmovne    rcx, rdi                                      #228.3 c23
        shr       r14, 1                                        #228.3 c23
        xor       r14, QWORD PTR [136+rsp+rdx]                  #228.3 c25
        xor       r14, rcx                                      #228.3 c27
        mov       QWORD PTR [1952+rsp+rdx], r14                 #228.3 c29
        add       rdx, 16                                       #228.3 c29
        cmp       esi, 198                                      #228.3 c29
        jb        ..B1.119      # Prob 99%                      #228.3 c31
                                # LOE rax rdx rbx rdi r8 r9 r10 r11 esi r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.120:                       # Preds ..B1.119
                                # Execution count [5.98e+00]: Infreq
        mov       rcx, QWORD PTR [5112+rsp]                     #228.3 c1
        mov       rdx, QWORD PTR [128+rsp]                      #228.3 c1
        xor       r14d, r14d                                    #228.3 c1
        and       rcx, -2147483648                              #228.3 c5 stall 1
        and       rdx, 2147483647                               #228.3 c5
        or        rcx, rdx                                      #228.3 c7
        mov       rsi, rcx                                      #228.3 c9
        test      rcx, 1                                        #228.3 c9
        cmove     rdi, rbx                                      #228.3 c11
        shr       rsi, 1                                        #228.3 c11
        xor       rsi, QWORD PTR [3296+rsp]                     #228.3 c13
        xor       rsi, rdi                                      #228.3 c15
        mov       QWORD PTR [5112+rsp], rsi                     #228.3 c17
                                # LOE rax rbx r8 r9 r10 r11 r14 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.121:                       # Preds ..B1.120 ..B1.115
                                # Execution count [2.72e+01]: Infreq
        mov       r15, QWORD PTR [128+rsp+r14*8]                #228.3 c1
        vmovsd    QWORD PTR [rsp], xmm5                         #228.3 c1
        vxorpd    xmm6, xmm6, xmm6                              #228.3 c1
        add       r11, 1                                        #228.3 c1
        add       r14, 1                                        #228.3 c1
        mov       rdx, r15                                      #228.3 c5 stall 1
        fld       QWORD PTR [rsp]                               #228.3 c7
        shr       rdx, 11                                       #228.3 c7
        mov       ecx, edx                                      #228.3 c9
        fmul      st, st(1)                                     #228.3 c9
        fstp      QWORD PTR [8+rsp]                             #228.3 c17 stall 3
        xor       r15, rcx                                      #228.3 c17
        mov       rsi, r15                                      #228.3 c19
        shl       rsi, 7                                        #228.3 c21
        and       rsi, r9                                       #228.3 c23
        xor       r15, rsi                                      #228.3 c25
        mov       rdi, r15                                      #228.3 c27
        shl       rdi, 15                                       #228.3 c29
        and       rdi, r10                                      #228.3 c31
        xor       r15, rdi                                      #228.3 c33
        mov       r13, r15                                      #228.3 c35
        shr       r13, 18                                       #228.3 c37
        xor       r15, r13                                      #228.3 c39
        vcvtusi2sd xmm6, xmm6, r15                              #228.3 c41
        vfmadd231sd xmm4, xmm6, xmm5                            #228.3 c43
        vmovsd    xmm5, QWORD PTR [8+rsp]                       #228.3 c43
        cmp       r11, rax                                      #228.3 c43
        jb        ..B1.115      # Prob 82%                      #228.3 c45
        jmp       ..B1.112      # Prob 100%                     #228.3 c45
                                # LOE rax rbx r8 r9 r10 r11 r14 r12d f1 xmm4 xmm5 zmm0 zmm1 zmm2 zmm3
..B1.123:                       # Preds ..B1.112
                                # Execution count [4.90e-03]: Infreq
        mov       rdi, QWORD PTR [120+rsp]                      #229.3 c1
        xor       esi, esi                                      #229.3 c1
        mov       edx, 8388608                                  #229.3 c1
        fstp      st(0)                                         # c1
        call      __intel_mic_avx512f_memset                    #229.3 c3
                                # LOE rbx
..B1.124:                       # Preds ..B1.123
                                # Execution count [9.79e-01]: Infreq
        mov       edi, 8388608                                  #231.21 c1
..___tag_value_main.69:
#       operator new[](std::size_t)
        call      _Znam                                         #231.21
..___tag_value_main.70:
                                # LOE rax rbx
..B1.195:                       # Preds ..B1.124
                                # Execution count [9.79e-01]: Infreq
        mov       r13, rax                                      #231.21 c1
                                # LOE rbx r13
..B1.125:                       # Preds ..B1.195
                                # Execution count [1.00e+00]: Infreq
        mov       edi, 8388608                                  #232.21 c1
..___tag_value_main.71:
#       operator new[](std::size_t)
        call      _Znam                                         #232.21
..___tag_value_main.72:
                                # LOE rax rbx r13
..B1.196:                       # Preds ..B1.125
                                # Execution count [1.00e+00]: Infreq
        mov       r12, rax                                      #232.21 c1
                                # LOE rbx r12 r13
..B1.126:                       # Preds ..B1.196
                                # Execution count [1.00e+00]: Infreq
        mov       edi, 8388608                                  #233.21 c1
..___tag_value_main.73:
#       operator new[](std::size_t)
        call      _Znam                                         #233.21
..___tag_value_main.74:
                                # LOE rax rbx r12 r13
..B1.197:                       # Preds ..B1.126
                                # Execution count [1.00e+00]: Infreq
        mov       r15, rax                                      #233.21 c1
                                # LOE rbx r12 r13 r15
..B1.127:                       # Preds ..B1.197
                                # Execution count [1.00e+00]: Infreq
        mov       rdi, r13                                      #235.3 c1
        mov       rsi, QWORD PTR [104+rsp]                      #235.3 c1
        mov       edx, 8388608                                  #235.3 c1
        call      __intel_ssse3_rep_memmove                     #235.3 c3
                                # LOE rbx r12 r13 r15
..B1.128:                       # Preds ..B1.127
                                # Execution count [4.55e+00]: Infreq
        mov       rdi, r12                                      #236.3 c1
        mov       rsi, QWORD PTR [112+rsp]                      #236.3 c1
        mov       edx, 8388608                                  #236.3 c1
        call      __intel_ssse3_rep_memmove                     #236.3 c3
                                # LOE rbx r12 r13 r15
..B1.129:                       # Preds ..B1.128
                                # Execution count [2.07e+01]: Infreq
        mov       rdi, r15                                      #237.3 c1
        mov       rsi, QWORD PTR [120+rsp]                      #237.3 c1
        mov       edx, 8388608                                  #237.3 c1
        call      __intel_ssse3_rep_memmove                     #237.3 c3
                                # LOE rbx r12 r13 r15
..B1.130:                       # Preds ..B1.129
                                # Execution count [9.39e+01]: Infreq
..___tag_value_main.75:
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #238.3
..___tag_value_main.76:
                                # LOE rax rbx r12 r13 r15
..B1.198:                       # Preds ..B1.130
                                # Execution count [9.39e+01]: Infreq
        mov       QWORD PTR [128+rsp], rax                      #238.3 c1
                                # LOE rbx r12 r13 r15
..B1.131:                       # Preds ..B1.198
                                # Execution count [9.39e+01]: Infreq
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.497 #238.3 c1
        mov       QWORD PTR [rsp], r13                          #238.3 c1
        xor       eax, eax                                      #238.3 c1
        mov       QWORD PTR [8+rsp], r12                        #238.3 c1
        mov       QWORD PTR [16+rsp], r15                       #238.3 c3
        mov       DWORD PTR [176+rsp], 1024                     #238.3 c3
..___tag_value_main.77:
        call      __kmpc_ok_to_fork                             #238.3
..___tag_value_main.78:
                                # LOE rbx r12 r13 r15 eax
..B1.132:                       # Preds ..B1.131
                                # Execution count [9.39e+01]: Infreq
        test      eax, eax                                      #238.3 c1
        je        ..B1.134      # Prob 50%                      #238.3 c3
                                # LOE rbx r12 r13 r15
..B1.133:                       # Preds ..B1.132
                                # Execution count [0.00e+00]: Infreq
        add       rsp, -16                                      #238.3 c1
        mov       edx, offset flat: L_main_238__par_loop1_2.5   #238.3 c1
        lea       r8, QWORD PTR [32+rsp]                        #238.3 c3
        lea       rcx, QWORD PTR [192+rsp]                      #238.3 c3
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.497 #238.3 c3
        mov       esi, 4                                        #238.3 c3
        lea       r9, QWORD PTR [16+rsp]                        #238.3 c5
        lea       r10, QWORD PTR [-8+r8]                        #238.3 c5
        mov       QWORD PTR [rsp], r10                          #238.3 c7
        xor       eax, eax                                      #238.3 c7
..___tag_value_main.79:
        call      __kmpc_fork_call                              #238.3
..___tag_value_main.80:
                                # LOE rbx r12 r13 r15
..B1.200:                       # Preds ..B1.133
                                # Execution count [0.00e+00]: Infreq
        add       rsp, 16                                       #238.3 c1
        jmp       ..B1.137      # Prob 100%                     #238.3 c1
                                # LOE rbx r12 r13 r15
..B1.134:                       # Preds ..B1.132
                                # Execution count [0.00e+00]: Infreq
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.497 #238.3 c1
        mov       esi, DWORD PTR [88+rsp]                       #238.3 c1
        xor       eax, eax                                      #238.3 c1
..___tag_value_main.81:
        call      __kmpc_serialized_parallel                    #238.3
..___tag_value_main.82:
                                # LOE rbx r12 r13 r15
..B1.135:                       # Preds ..B1.134
                                # Execution count [0.00e+00]: Infreq
        lea       rdi, QWORD PTR [88+rsp]                       #238.3 c1
        mov       esi, offset flat: ___kmpv_zeromain_1          #238.3 c1
        lea       r8, QWORD PTR [rsp]                           #238.3 c1
        lea       rcx, QWORD PTR [-72+rdi]                      #238.3 c3
        lea       rdx, QWORD PTR [88+rdi]                       #238.3 c3
        lea       r9, QWORD PTR [-8+rcx]                        #238.3 c5
..___tag_value_main.83:
        call      L_main_238__par_loop1_2.5                     #238.3
..___tag_value_main.84:
                                # LOE rbx r12 r13 r15
..B1.136:                       # Preds ..B1.135
                                # Execution count [0.00e+00]: Infreq
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.497 #238.3 c1
        mov       esi, DWORD PTR [88+rsp]                       #238.3 c1
        xor       eax, eax                                      #238.3 c1
..___tag_value_main.85:
        call      __kmpc_end_serialized_parallel                #238.3
..___tag_value_main.86:
                                # LOE rbx r12 r13 r15
..B1.137:                       # Preds ..B1.136 ..B1.200
                                # Execution count [9.39e+01]: Infreq
..___tag_value_main.87:
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #238.3
..___tag_value_main.88:
                                # LOE rax rbx r12 r13 r15
..B1.201:                       # Preds ..B1.137
                                # Execution count [9.39e+01]: Infreq
        mov       r8, rax                                       #238.3 c1
                                # LOE rbx r8 r12 r13 r15
..B1.138:                       # Preds ..B1.201
                                # Execution count [9.39e+01]: Infreq
        mov       rcx, QWORD PTR [128+rsp]                      #238.3 c1
        mov       rax, 0x20c49ba5e353f7cf                       #238.3 c1
        mov       edi, offset flat: _ZSt4cerr                   #238.3 c1
        mov       esi, offset flat: .L_2__STRING.2              #238.3 c3
        sub       r8, rcx                                       #238.3 c5
        imul      r8                                            #238.3 c7
        sar       r8, 63                                        #238.3 c7
        mov       r14, rdx                                      #238.3 c11 stall 1
        sar       r14, 7                                        #238.3 c13
        sub       r14, r8                                       #238.3 c15
..___tag_value_main.89:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #238.3
..___tag_value_main.90:
                                # LOE rax rbx r12 r13 r14 r15
..B1.139:                       # Preds ..B1.138
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #238.3 c1
        mov       esi, offset flat: .L_2__STRING.1              #238.3 c1
..___tag_value_main.91:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #238.3
..___tag_value_main.92:
                                # LOE rax rbx r12 r13 r14 r15
..B1.140:                       # Preds ..B1.139
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #238.3 c1
        mov       rsi, r14                                      #238.3 c1
..___tag_value_main.93:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, long)
        call      _ZNSolsEl                                     #238.3
..___tag_value_main.94:
                                # LOE rax rbx r12 r13 r14 r15
..B1.141:                       # Preds ..B1.140
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #238.3 c1
        mov       esi, offset flat: .L_2__STRING.3              #238.3 c1
..___tag_value_main.95:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #238.3
..___tag_value_main.96:
                                # LOE rbx r12 r13 r14 r15
..B1.142:                       # Preds ..B1.141
                                # Execution count [9.39e+01]: Infreq
        vcvtsi2sd xmm16, xmm16, r14                             #238.3 c1
        vgetmantsd xmm22, xmm22, QWORD PTR .L_2il0floatpacket.14[rip], 0 #238.3 c1
        vmovsd    QWORD PTR [136+rsp], xmm22                    #238.3[spill] c7 stall 2
        vmulsd    xmm17, xmm16, QWORD PTR .L_2il0floatpacket.13[rip] #238.3 c7
        mov       edi, offset flat: _ZSt4cerr                   #238.3 c7
        vmulsd    xmm18, xmm17, QWORD PTR .L_2il0floatpacket.15[rip] #238.3 c13 stall 2
        vmovsd    xmm24, QWORD PTR .L_2il0floatpacket.18[rip]   #238.3 c13
        vgetmantsd xmm23, xmm18, xmm18, 0                       #238.3 c19 stall 2
        vmovsd    QWORD PTR [168+rsp], xmm23                    #238.3[spill] c25 stall 2
        vrcp28sd  xmm21, xmm23, xmm23                           #238.3 c25
        vmovsd    QWORD PTR [152+rsp], xmm21                    #238.3[spill] c33 stall 3
        vmulsd    xmm25, xmm21, xmm22, {rn-sae}                 #238.3 c33
        vfnmadd231sd xmm24, xmm21, xmm23, {rn-sae}              #238.3 c33
        vgetexpsd xmm19, xmm19, QWORD PTR .L_2il0floatpacket.14[rip] #238.3 c33
        vgetexpsd xmm20, xmm18, xmm18                           #238.3 c39 stall 2
        vmovsd    QWORD PTR [144+rsp], xmm20                    #238.3[spill] c45 stall 2
        vfnmadd231sd xmm22, xmm25, xmm23, {rn-sae}              #238.3 c45
        vfmadd132sd xmm24, xmm21, xmm21, {rn-sae}               #238.3 c45
        vmovsd    QWORD PTR [160+rsp], xmm24                    #238.3[spill] c47
        vsubsd    xmm26, xmm19, xmm20                           #238.3 c47
        vfmadd231sd xmm25, xmm22, xmm24, {rn-sae}               #238.3 c51 stall 1
        vscalefsd xmm0, xmm25, xmm26                            #238.3 c57 stall 2
..___tag_value_main.97:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #238.3
..___tag_value_main.98:
                                # LOE rax rbx r12 r13 r15
..B1.143:                       # Preds ..B1.142
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #238.3 c1
        mov       esi, offset flat: .L_2__STRING.4              #238.3 c1
..___tag_value_main.99:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #238.3
..___tag_value_main.100:
                                # LOE rbx r12 r13 r15
..B1.144:                       # Preds ..B1.143
                                # Execution count [9.39e+01]: Infreq
        vgetmantsd xmm18, xmm18, QWORD PTR .L_2il0floatpacket.16[rip], 0 #238.3 c1
        vmovsd    QWORD PTR [128+rsp], xmm18                    #238.3[spill] c7 stall 2
        vmovsd    xmm17, QWORD PTR [152+rsp]                    #238.3[spill] c7
        mov       edi, offset flat: _ZSt4cerr                   #238.3 c7
        vmulsd    xmm21, xmm17, xmm18, {rn-sae}                 #238.3 c13 stall 2
        vmovsd    xmm19, QWORD PTR [168+rsp]                    #238.3[spill] c13
        vgetexpsd xmm16, xmm16, QWORD PTR .L_2il0floatpacket.16[rip] #238.3 c13
        vmovsd    xmm20, QWORD PTR [160+rsp]                    #238.3[spill] c19 stall 2
        vfnmadd213sd xmm19, xmm21, xmm18, {rn-sae}              #238.3 c19
        vsubsd    xmm22, xmm16, QWORD PTR [144+rsp]             #238.3[spill] c19
        vfmadd231sd xmm21, xmm19, xmm20, {rn-sae}               #238.3 c25 stall 2
        vscalefsd xmm0, xmm21, xmm22                            #238.3 c31 stall 2
..___tag_value_main.101:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #238.3
..___tag_value_main.102:
                                # LOE rax rbx r12 r13 r15
..B1.145:                       # Preds ..B1.144
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #238.3 c1
        mov       esi, offset flat: .L_2__STRING.5              #238.3 c1
..___tag_value_main.103:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #238.3
..___tag_value_main.104:
                                # LOE rbx r12 r13 r15
..B1.146:                       # Preds ..B1.145
                                # Execution count [9.39e+01]: Infreq
..___tag_value_main.105:
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #240.3
..___tag_value_main.106:
                                # LOE rax rbx r12 r13 r15
..B1.207:                       # Preds ..B1.146
                                # Execution count [9.39e+01]: Infreq
        mov       QWORD PTR [144+rsp], rax                      #240.3 c1
                                # LOE rbx r12 r13 r15
..B1.147:                       # Preds ..B1.207
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, QWORD PTR [104+rsp]                      #240.3 c1
        mov       rsi, QWORD PTR [112+rsp]                      #240.3 c1
        mov       rdx, QWORD PTR [120+rsp]                      #240.3 c5 stall 1
..___tag_value_main.107:
#       dgemm3(const double *, const double *, double *)
        call      _Z6dgemm3PKdS0_Pd                             #240.3
..___tag_value_main.108:
                                # LOE rbx r12 r13 r15
..B1.148:                       # Preds ..B1.147
                                # Execution count [9.39e+01]: Infreq
..___tag_value_main.109:
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #240.3
..___tag_value_main.110:
                                # LOE rax rbx r12 r13 r15
..B1.208:                       # Preds ..B1.148
                                # Execution count [9.39e+01]: Infreq
        mov       r8, rax                                       #240.3 c1
                                # LOE rbx r8 r12 r13 r15
..B1.149:                       # Preds ..B1.208
                                # Execution count [9.39e+01]: Infreq
        mov       rcx, QWORD PTR [144+rsp]                      #240.3 c1
        mov       rax, 0x20c49ba5e353f7cf                       #240.3 c1
        mov       edi, offset flat: _ZSt4cerr                   #240.3 c1
        mov       esi, offset flat: .L_2__STRING.6              #240.3 c3
        sub       r8, rcx                                       #240.3 c5
        imul      r8                                            #240.3 c7
        sar       r8, 63                                        #240.3 c7
        mov       r14, rdx                                      #240.3 c11 stall 1
        sar       r14, 7                                        #240.3 c13
        sub       r14, r8                                       #240.3 c15
..___tag_value_main.111:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #240.3
..___tag_value_main.112:
                                # LOE rax rbx r12 r13 r14 r15
..B1.150:                       # Preds ..B1.149
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #240.3 c1
        mov       esi, offset flat: .L_2__STRING.1              #240.3 c1
..___tag_value_main.113:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #240.3
..___tag_value_main.114:
                                # LOE rax rbx r12 r13 r14 r15
..B1.151:                       # Preds ..B1.150
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #240.3 c1
        mov       rsi, r14                                      #240.3 c1
..___tag_value_main.115:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, long)
        call      _ZNSolsEl                                     #240.3
..___tag_value_main.116:
                                # LOE rax rbx r12 r13 r14 r15
..B1.152:                       # Preds ..B1.151
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #240.3 c1
        mov       esi, offset flat: .L_2__STRING.3              #240.3 c1
..___tag_value_main.117:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #240.3
..___tag_value_main.118:
                                # LOE rbx r12 r13 r14 r15
..B1.153:                       # Preds ..B1.152
                                # Execution count [9.39e+01]: Infreq
        vcvtsi2sd xmm16, xmm16, r14                             #240.3 c1
        vmovsd    xmm23, QWORD PTR [136+rsp]                    #240.3[spill] c1
        vmovsd    xmm24, QWORD PTR .L_2il0floatpacket.18[rip]   #240.3 c1
        mov       edi, offset flat: _ZSt4cerr                   #240.3 c1
        vmulsd    xmm17, xmm16, QWORD PTR .L_2il0floatpacket.13[rip] #240.3 c7 stall 2
        vgetexpsd xmm19, xmm19, QWORD PTR .L_2il0floatpacket.14[rip] #240.3 c7
        vmulsd    xmm18, xmm17, QWORD PTR .L_2il0floatpacket.15[rip] #240.3 c13 stall 2
        vgetmantsd xmm22, xmm18, xmm18, 0                       #240.3 c19 stall 2
        vmovsd    QWORD PTR [168+rsp], xmm22                    #240.3[spill] c25 stall 2
        vrcp28sd  xmm21, xmm22, xmm22                           #240.3 c25
        vmovsd    QWORD PTR [160+rsp], xmm21                    #240.3[spill] c33 stall 3
        vmulsd    xmm25, xmm21, xmm23, {rn-sae}                 #240.3 c33
        vfnmadd231sd xmm24, xmm21, xmm22, {rn-sae}              #240.3 c33
        vgetexpsd xmm20, xmm18, xmm18                           #240.3 c39 stall 2
        vmovsd    QWORD PTR [144+rsp], xmm20                    #240.3[spill] c45 stall 2
        vfnmadd231sd xmm23, xmm25, xmm22, {rn-sae}              #240.3 c45
        vfmadd132sd xmm24, xmm21, xmm21, {rn-sae}               #240.3 c45
        vmovsd    QWORD PTR [152+rsp], xmm24                    #240.3[spill] c47
        vsubsd    xmm26, xmm19, xmm20                           #240.3 c47
        vfmadd231sd xmm25, xmm23, xmm24, {rn-sae}               #240.3 c51 stall 1
        vscalefsd xmm0, xmm25, xmm26                            #240.3 c57 stall 2
..___tag_value_main.119:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #240.3
..___tag_value_main.120:
                                # LOE rax rbx r12 r13 r15
..B1.154:                       # Preds ..B1.153
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #240.3 c1
        mov       esi, offset flat: .L_2__STRING.4              #240.3 c1
..___tag_value_main.121:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #240.3
..___tag_value_main.122:
                                # LOE rbx r12 r13 r15
..B1.155:                       # Preds ..B1.154
                                # Execution count [9.39e+01]: Infreq
        vmovsd    xmm17, QWORD PTR [160+rsp]                    #240.3[spill] c1
        vmovsd    xmm19, QWORD PTR [128+rsp]                    #240.3[spill] c1
        mov       edi, offset flat: _ZSt4cerr                   #240.3 c1
        vmulsd    xmm21, xmm17, xmm19, {rn-sae}                 #240.3 c7 stall 2
        vmovsd    xmm18, QWORD PTR [168+rsp]                    #240.3[spill] c7
        vgetexpsd xmm16, xmm16, QWORD PTR .L_2il0floatpacket.16[rip] #240.3 c7
        vfnmadd231sd xmm19, xmm21, xmm18, {rn-sae}              #240.3 c13 stall 2
        vmovsd    xmm20, QWORD PTR [152+rsp]                    #240.3[spill] c13
        vsubsd    xmm22, xmm16, QWORD PTR [144+rsp]             #240.3[spill] c13
        vfmadd231sd xmm21, xmm19, xmm20, {rn-sae}               #240.3 c19 stall 2
        vscalefsd xmm0, xmm21, xmm22                            #240.3 c25 stall 2
..___tag_value_main.123:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #240.3
..___tag_value_main.124:
                                # LOE rax rbx r12 r13 r15
..B1.156:                       # Preds ..B1.155
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #240.3 c1
        mov       esi, offset flat: .L_2__STRING.5              #240.3 c1
..___tag_value_main.125:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #240.3
..___tag_value_main.126:
                                # LOE rbx r12 r13 r15
..B1.157:                       # Preds ..B1.156
                                # Execution count [9.39e+01]: Infreq
        mov       r14, QWORD PTR [120+rsp]                      #241.20 c1
        vmovsd    xmm0, QWORD PTR .L_2il0floatpacket.17[rip]    #241.20 c1
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.158:                       # Preds ..B1.159 ..B1.157
                                # Execution count [4.70e+02]: Infreq
        vmovsd    xmm16, QWORD PTR [r15+rbx*8]                  #241.3 c1
        vsubsd    xmm1, xmm16, QWORD PTR [r14+rbx*8]            #241.3 c7 stall 2
        vandpd    xmm2, xmm1, XMMWORD PTR .L_2il0floatpacket.20[rip] #241.3 c13 stall 2
        vcmpsd    k0, xmm2, xmm0, 13                            #241.3 c15
        kortestw  k0, k0                                        #241.3 c17
        jne       ..B1.171      # Prob 20%                      #241.3 c19
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.159:                       # Preds ..B1.158
                                # Execution count [3.76e+02]: Infreq
        add       rbx, 1                                        #241.3 c1
        cmp       rbx, 1048576                                  #241.3 c3
        jb        ..B1.158      # Prob 99%                      #241.3 c5
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.160:                       # Preds ..B1.159
                                # Execution count [1.00e+00]: Infreq
        mov       rdi, QWORD PTR [104+rsp]                      #244.3 c1
#       free(void *)
        call      free                                          #244.3 c3
                                # LOE r12 r13 r14 r15
..B1.161:                       # Preds ..B1.160
                                # Execution count [1.00e+00]: Infreq
        mov       rdi, QWORD PTR [112+rsp]                      #245.3 c1
#       free(void *)
        call      free                                          #245.3 c3
                                # LOE r12 r13 r14 r15
..B1.162:                       # Preds ..B1.161
                                # Execution count [1.00e+00]: Infreq
        mov       rdi, r14                                      #246.3 c1
#       free(void *)
        call      free                                          #246.3 c3
                                # LOE r12 r13 r15
..B1.163:                       # Preds ..B1.162
                                # Execution count [1.00e+00]: Infreq
        test      r13, r13                                      #254.13 c1
        je        ..B1.165      # Prob 32%                      #254.13 c3
                                # LOE r12 r13 r15
..B1.164:                       # Preds ..B1.163
                                # Execution count [6.74e-01]: Infreq
        mov       rdi, r13                                      #254.3 c1
#       operator delete[](void *)
        call      _ZdaPv                                        #254.3 c3
                                # LOE r12 r15
..B1.165:                       # Preds ..B1.164 ..B1.163
                                # Execution count [1.00e+00]: Infreq
        test      r12, r12                                      #255.13 c1
        je        ..B1.167      # Prob 32%                      #255.13 c3
                                # LOE r12 r15
..B1.166:                       # Preds ..B1.165
                                # Execution count [6.74e-01]: Infreq
        mov       rdi, r12                                      #255.3 c1
#       operator delete[](void *)
        call      _ZdaPv                                        #255.3 c3
                                # LOE r15
..B1.167:                       # Preds ..B1.166 ..B1.165
                                # Execution count [1.00e+00]: Infreq
        test      r15, r15                                      #256.13 c1
        je        ..B1.169      # Prob 32%                      #256.13 c3
                                # LOE r15
..B1.168:                       # Preds ..B1.167
                                # Execution count [6.74e-01]: Infreq
        mov       rdi, r15                                      #256.3 c1
#       operator delete[](void *)
        call      _ZdaPv                                        #256.3 c3
                                # LOE
..B1.169:                       # Preds ..B1.167 ..B1.168
                                # Execution count [1.00e+00]: Infreq
        mov       edi, offset flat: .2.137_2_kmpc_loc_struct_pack.465 #257.1 c1
        xor       eax, eax                                      #257.1 c1
..___tag_value_main.127:
        call      __kmpc_end                                    #257.1
..___tag_value_main.128:
                                # LOE
..B1.170:                       # Preds ..B1.169
                                # Execution count [1.00e+00]: Infreq
        mov       r15, QWORD PTR [24+rsp]                       #257.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [32+rsp]                       #257.1[spill] c1
	.cfi_restore 14
        xor       eax, eax                                      #257.1 c1
        mov       r13, QWORD PTR [40+rsp]                       #257.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [48+rsp]                       #257.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [56+rsp]                       #257.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #257.1 c11
        pop       rbp                                           #257.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #257.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xeb, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xeb, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xeb, 0xff, 0xff, 0x22
                                # LOE
..B1.171:                       # Preds ..B1.158
                                # Execution count [9.39e+01]: Infreq
        mov       edi, offset flat: _ZSt4cout                   #241.3 c1
        mov       esi, offset flat: .L_2__STRING.0              #241.3 c1
..___tag_value_main.143:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #241.3
..___tag_value_main.144:
                                # LOE rbx r14 r15
..B1.172:                       # Preds ..B1.171
                                # Execution count [9.39e+01]: Infreq
        vmovsd    xmm0, QWORD PTR [r15+rbx*8]                   #241.3 c1
        mov       edi, offset flat: _ZSt4cout                   #241.3 c1
..___tag_value_main.145:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #241.3
..___tag_value_main.146:
                                # LOE rax rbx r14
..B1.173:                       # Preds ..B1.172
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #241.3 c1
        mov       esi, offset flat: .L_2__STRING.1              #241.3 c1
..___tag_value_main.147:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #241.3
..___tag_value_main.148:
                                # LOE rax rbx r14
..B1.174:                       # Preds ..B1.173
                                # Execution count [9.39e+01]: Infreq
        vmovsd    xmm0, QWORD PTR [r14+rbx*8]                   #241.3 c1
        mov       rdi, rax                                      #241.3 c1
..___tag_value_main.149:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #241.3
..___tag_value_main.150:
                                # LOE rax
..B1.175:                       # Preds ..B1.174
                                # Execution count [9.39e+01]: Infreq
        mov       rdi, rax                                      #241.3 c1
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #241.3 c1
..___tag_value_main.151:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #241.3
..___tag_value_main.152:
                                # LOE
..B1.176:                       # Preds ..B1.175
                                # Execution count [9.39e+01]: Infreq
        mov       edi, 1                                        #241.3 c1
#       exit(int)
        call      exit                                          #241.3 c3
                                # LOE
..B1.177:                       # Preds ..B1.106
                                # Execution count [8.81e-01]: Infreq
        mov       r8, QWORD PTR [112+rsp]                       #228.19 c1
        xor       r12d, r12d                                    #228.3 c1
        fstp      st(0)                                         #228.3 c1
        fld       TBYTE PTR .L_2il0floatpacket.6[rip]           #228.3 c1
        jmp       ..B1.113      # Prob 100%                     #228.3 c1
                                # LOE rax rbx r8 r14 r12d f1 zmm0 zmm1 zmm2 zmm3
..B1.178:                       # Preds ..B1.191
                                # Execution count [9.79e-02]: Infreq
        fld       TBYTE PTR .L_2il0floatpacket.6[rip]           #227.3 c1
        mov       QWORD PTR [r12], 0                            #227.3 c1
        add       r12, 8                                        #227.3 c1
        mov       r13d, 1                                       #227.3 c1
        jmp       ..B1.110      # Prob 100%                     #227.3 c1
                                # LOE rax rbx r12 r14 r13d f1 zmm0 zmm1 zmm2 zmm3
..B1.179:                       # Preds ..B1.75
                                # Execution count [2.78e+00]: Infreq
        xor       eax, eax                                      #238.3 c1
        jmp       ..B1.85       # Prob 100%                     #238.3 c1
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi ymm0 ymm1
..B1.180:                       # Preds ..B1.73
                                # Execution count [2.78e+00]: Infreq
        mov       eax, DWORD PTR [8+rsp]                        #238.3[spill] c1
        xor       r15d, r15d                                    #238.3 c1
        jmp       ..B1.81       # Prob 100%                     #238.3 c1
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B1.181:                       # Preds ..B1.52
                                # Execution count [2.78e+00]: Infreq
        xor       r15d, r15d                                    #238.3 c1
        jmp       ..B1.62       # Prob 100%                     #238.3 c1
                                # LOE rdx r9 r10 r11 r12 ebx r15d ymm0 ymm1
..B1.182:                       # Preds ..B1.50
                                # Execution count [2.78e+00]: Infreq
        mov       r15d, DWORD PTR [80+rsp]                      #238.3[spill] c1
        xor       r8d, r8d                                      #238.3 c1
        jmp       ..B1.58       # Prob 100%                     #238.3 c1
                                # LOE rdx r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B1.183:                       # Preds ..B1.32
                                # Execution count [2.78e+00]: Infreq
        xor       edx, edx                                      #238.3 c1
        jmp       ..B1.42       # Prob 100%                     #238.3 c1
                                # LOE rax rdi edx ebx r9d r10d ymm0 ymm1
..B1.184:                       # Preds ..B1.30
                                # Execution count [2.78e+00]: Infreq
        mov       edx, DWORD PTR [80+rsp]                       #238.3[spill] c1
        xor       r13d, r13d                                    #238.3 c1
        jmp       ..B1.38       # Prob 100%                     #238.3 c1
        .align    16,0x90
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
	.align 4
	.align 4
.2.137_2_kmpc_loc_struct_pack.446:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.137_2__kmpc_loc_pack.445
	.align 4
.2.137_2__kmpc_loc_pack.445:
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
	.byte	50
	.byte	48
	.byte	55
	.byte	59
	.byte	50
	.byte	48
	.byte	55
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.137_2_kmpc_loc_struct_pack.457:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.137_2__kmpc_loc_pack.456
	.align 4
.2.137_2__kmpc_loc_pack.456:
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
	.byte	50
	.byte	50
	.byte	51
	.byte	59
	.byte	50
	.byte	50
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.137_2_kmpc_loc_struct_pack.473:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.137_2__kmpc_loc_pack.472
	.align 4
.2.137_2__kmpc_loc_pack.472:
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
	.byte	50
	.byte	50
	.byte	51
	.byte	59
	.byte	50
	.byte	50
	.byte	51
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.137_2_kmpc_loc_struct_pack.497:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.137_2__kmpc_loc_pack.496
	.align 4
.2.137_2__kmpc_loc_pack.496:
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
	.byte	50
	.byte	51
	.byte	56
	.byte	59
	.byte	50
	.byte	51
	.byte	56
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.137_2_kmpc_loc_struct_pack.465:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.137_2__kmpc_loc_pack.464
	.align 4
.2.137_2__kmpc_loc_pack.464:
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
	.byte	50
	.byte	53
	.byte	55
	.byte	59
	.byte	50
	.byte	53
	.byte	55
	.byte	59
	.byte	59
	.data
# -- End  main, L_main_223__par_loop0_2.4, L_main_238__par_loop1_2.5
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST1:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: rdi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.154:
..L155:
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
        jne       ..L157        # Prob 60%                      #259.16
        mov       rax, rdx                                      #259.16
        add       rdx, rcx                                      #259.16
        call      __intel_sse4_strlen                           #259.16
..L157:                                                         #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.1
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
	.text
# -- Begin  _Z6dgemm3PKdS0_Pd, L__Z6dgemm3PKdS0_Pd_86__par_region0_2.21
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z6dgemm3PKdS0_Pd
# --- dgemm3(const double *, const double *, double *)
_Z6dgemm3PKdS0_Pd:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z6dgemm3PKdS0_Pd.160:
..L161:
                                                        #85.35
        push      rbp                                           #85.35
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #85.35
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #85.35
        sub       rsp, 1024                                     #85.35 c1
        mov       QWORD PTR [48+rsp], rdi                       #85.35 c3
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.12 #86.1 c3
        mov       QWORD PTR [40+rsp], rbx                       #85.35[spill] c3
        mov       QWORD PTR [8+rsp], r15                        #85.35[spill] c5
        mov       QWORD PTR [16+rsp], r14                       #85.35[spill] c5
        mov       QWORD PTR [24+rsp], r13                       #85.35[spill] c7
        mov       QWORD PTR [32+rsp], r12                       #85.35[spill] c7
        mov       QWORD PTR [56+rsp], rsi                       #85.35 c9
        mov       QWORD PTR [960+rsp], rdx                      #85.35 c9
        call      __kmpc_global_thread_num                      #86.1 c9
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xfc, 0xff, 0xff, 0x22
                                # LOE eax
..B3.25:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [4+rsp], eax                        #86.1 c1
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.63 #86.1 c1
        xor       eax, eax                                      #86.1 c1
..___tag_value__Z6dgemm3PKdS0_Pd.170:
        call      __kmpc_ok_to_fork                             #86.1
..___tag_value__Z6dgemm3PKdS0_Pd.171:
                                # LOE eax
..B3.2:                         # Preds ..B3.25
                                # Execution count [1.00e+00]
        test      eax, eax                                      #86.1 c1
        je        ..B3.4        # Prob 50%                      #86.1 c3
                                # LOE
..B3.3:                         # Preds ..B3.2
                                # Execution count [0.00e+00]
        add       rsp, -128                                     #86.1 c1
        mov       edx, offset flat: L__Z6dgemm3PKdS0_Pd_86__par_region0_2.21 #86.1 c1
        lea       rax, QWORD PTR [128+rsp]                      #86.1 c3
        mov       QWORD PTR [rsp], rax                          #86.1 c5
        lea       rbx, QWORD PTR [64+rax]                       #86.1 c5
        mov       QWORD PTR [8+rsp], rbx                        #86.1 c7
        lea       r10, QWORD PTR [128+rax]                      #86.1 c7
        mov       QWORD PTR [16+rsp], r10                       #86.1 c9
        lea       r11, QWORD PTR [192+rax]                      #86.1 c9
        mov       QWORD PTR [24+rsp], r11                       #86.1 c11
        lea       r12, QWORD PTR [256+rax]                      #86.1 c11
        mov       QWORD PTR [32+rsp], r12                       #86.1 c13
        lea       r13, QWORD PTR [320+rax]                      #86.1 c13
        mov       QWORD PTR [40+rsp], r13                       #86.1 c15
        lea       r14, QWORD PTR [384+rax]                      #86.1 c15
        mov       QWORD PTR [48+rsp], r14                       #86.1 c17
        lea       r15, QWORD PTR [448+rax]                      #86.1 c17
        mov       QWORD PTR [56+rsp], r15                       #86.1 c19
        lea       rax, QWORD PTR [512+rax]                      #86.1 c19
        mov       QWORD PTR [64+rsp], rax                       #86.1 c21
        lea       r8, QWORD PTR [184+rsp]                       #86.1 c21
        lea       rbx, QWORD PTR [64+rax]                       #86.1 c23
        mov       QWORD PTR [72+rsp], rbx                       #86.1 c25
        lea       rsi, QWORD PTR [128+rax]                      #86.1 c25
        mov       QWORD PTR [80+rsp], rsi                       #86.1 c27
        lea       rdi, QWORD PTR [192+rax]                      #86.1 c27
        mov       QWORD PTR [88+rsp], rdi                       #86.1 c29
        lea       rcx, QWORD PTR [1088+rsp]                     #86.1 c29
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.63 #86.1 c29
        mov       esi, 18                                       #86.1 c29
        lea       r9, QWORD PTR [-8+r8]                         #86.1 c31
        lea       r10, QWORD PTR [256+rax]                      #86.1 c31
        mov       QWORD PTR [96+rsp], r10                       #86.1 c33
        lea       r11, QWORD PTR [320+rax]                      #86.1 c33
        mov       QWORD PTR [104+rsp], r11                      #86.1 c35
        lea       r12, QWORD PTR [384+rax]                      #86.1 c35
        mov       QWORD PTR [112+rsp], r12                      #86.1 c37
        xor       eax, eax                                      #86.1 c37
..___tag_value__Z6dgemm3PKdS0_Pd.172:
        call      __kmpc_fork_call                              #86.1
..___tag_value__Z6dgemm3PKdS0_Pd.173:
                                # LOE
..B3.26:                        # Preds ..B3.3
                                # Execution count [0.00e+00]
        add       rsp, 128                                      #86.1 c1
        jmp       ..B3.7        # Prob 100%                     #86.1 c1
                                # LOE
..B3.4:                         # Preds ..B3.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.63 #86.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #86.1 c1
        xor       eax, eax                                      #86.1 c1
..___tag_value__Z6dgemm3PKdS0_Pd.174:
        call      __kmpc_serialized_parallel                    #86.1
..___tag_value__Z6dgemm3PKdS0_Pd.175:
                                # LOE
..B3.5:                         # Preds ..B3.4
                                # Execution count [0.00e+00]
        add       rsp, -112                                     #86.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z6dgemm3PKdS0_Pd_0 #86.1 c1
        lea       rdi, QWORD PTR [116+rsp]                      #86.1 c3
        lea       r9, QWORD PTR [112+rsp]                       #86.1 c3
        lea       rcx, QWORD PTR [52+rdi]                       #86.1 c5
        lea       rdx, QWORD PTR [956+rdi]                      #86.1 c5
        lea       rax, QWORD PTR [8+rcx]                        #86.1 c7
        mov       QWORD PTR [rsp], rax                          #86.1 c9
        lea       rbx, QWORD PTR [64+rax]                       #86.1 c9
        mov       QWORD PTR [8+rsp], rbx                        #86.1 c11
        lea       r10, QWORD PTR [128+rax]                      #86.1 c11
        mov       QWORD PTR [16+rsp], r10                       #86.1 c13
        lea       r11, QWORD PTR [192+rax]                      #86.1 c13
        mov       QWORD PTR [24+rsp], r11                       #86.1 c15
        lea       r12, QWORD PTR [256+rax]                      #86.1 c15
        mov       QWORD PTR [32+rsp], r12                       #86.1 c17
        lea       r13, QWORD PTR [320+rax]                      #86.1 c17
        mov       QWORD PTR [40+rsp], r13                       #86.1 c19
        lea       r14, QWORD PTR [384+rax]                      #86.1 c19
        mov       QWORD PTR [48+rsp], r14                       #86.1 c21
        lea       r15, QWORD PTR [448+rax]                      #86.1 c21
        mov       QWORD PTR [56+rsp], r15                       #86.1 c23
        lea       rax, QWORD PTR [512+rax]                      #86.1 c23
        mov       QWORD PTR [64+rsp], rax                       #86.1 c25
        lea       r8, QWORD PTR [-8+rcx]                        #86.1 c25
        lea       rbx, QWORD PTR [64+rax]                       #86.1 c27
        mov       QWORD PTR [72+rsp], rbx                       #86.1 c29
        lea       r10, QWORD PTR [128+rax]                      #86.1 c29
        mov       QWORD PTR [80+rsp], r10                       #86.1 c31
        lea       r11, QWORD PTR [192+rax]                      #86.1 c31
        mov       QWORD PTR [88+rsp], r11                       #86.1 c33
        lea       r12, QWORD PTR [256+rax]                      #86.1 c33
        mov       QWORD PTR [96+rsp], r12                       #86.1 c35
        lea       r13, QWORD PTR [320+rax]                      #86.1 c35
        mov       QWORD PTR [104+rsp], r13                      #86.1 c37
..___tag_value__Z6dgemm3PKdS0_Pd.176:
        call      L__Z6dgemm3PKdS0_Pd_86__par_region0_2.21      #86.1
..___tag_value__Z6dgemm3PKdS0_Pd.177:
                                # LOE
..B3.27:                        # Preds ..B3.5
                                # Execution count [0.00e+00]
        add       rsp, 112                                      #86.1 c1
                                # LOE
..B3.6:                         # Preds ..B3.27
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.63 #86.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #86.1 c1
        xor       eax, eax                                      #86.1 c1
..___tag_value__Z6dgemm3PKdS0_Pd.178:
        call      __kmpc_end_serialized_parallel                #86.1
..___tag_value__Z6dgemm3PKdS0_Pd.179:
                                # LOE
..B3.7:                         # Preds ..B3.26 ..B3.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #140.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #140.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #140.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #140.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #140.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #140.1 c11
        pop       rbp                                           #140.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #140.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z6dgemm3PKdS0_Pd_86__par_region0_2.21:
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
# parameter 12: 56 + rbp
# parameter 13: 64 + rbp
# parameter 14: 72 + rbp
# parameter 15: 80 + rbp
# parameter 16: 88 + rbp
# parameter 17: 96 + rbp
# parameter 18: 104 + rbp
# parameter 19: 112 + rbp
# parameter 20: 120 + rbp
..B3.8:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
        push      rbp                                           #86.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #86.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #86.1
        sub       rsp, 1024                                     #86.1 c1
        mov       QWORD PTR [40+rsp], rbx                       #86.1[spill] c3
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xfc, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdi]                          #86.1 c3
        mov       QWORD PTR [8+rsp], r15                        #86.1[spill] c5
        xor       eax, eax                                      #93.1 c5
        mov       QWORD PTR [16+rsp], r14                       #86.1[spill] c7
        mov       r11d, 4                                       #93.1 c7
        mov       QWORD PTR [24+rsp], r13                       #86.1[spill] c7
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.20 #93.1 c7
        mov       QWORD PTR [32+rsp], r12                       #86.1[spill] c9
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xfc, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xfc, 0xff, 0xff, 0x22
        mov       r14, QWORD PTR [r8]                           #86.1 c9
        mov       DWORD PTR [48+rsp], eax                       #93.1 c11
        mov       esi, ebx                                      #93.1 c11
        mov       DWORD PTR [52+rsp], 1023                      #93.1 c13
        mov       r12, QWORD PTR [rcx]                          #86.1 c13
        mov       DWORD PTR [56+rsp], eax                       #93.1 c15
        mov       r13, QWORD PTR [rdx]                          #86.1 c17
        mov       DWORD PTR [60+rsp], r11d                      #93.1 c17
        add       rsp, -32                                      #93.1 c17
        mov       edx, 34                                       #93.1 c17
        lea       r10, QWORD PTR [92+rsp]                       #93.1 c19
        mov       QWORD PTR [rsp], r10                          #93.1 c21
        lea       rcx, QWORD PTR [88+rsp]                       #93.1 c21
        mov       DWORD PTR [8+rsp], r11d                       #93.1 c23
        lea       r8, QWORD PTR [80+rsp]                        #93.1 c23
        mov       DWORD PTR [16+rsp], 1                         #93.1 c25
        lea       r9, QWORD PTR [84+rsp]                        #93.1 c25
        call      __kmpc_for_static_init_4                      #93.1 c27
                                # LOE r12 r13 r14 ebx
..B3.28:                        # Preds ..B3.8
                                # Execution count [1.00e+00]
        add       rsp, 32                                       #93.1 c1
                                # LOE r12 r13 r14 ebx
..B3.9:                         # Preds ..B3.28
                                # Execution count [0.00e+00]
        mov       r10d, DWORD PTR [48+rsp]                      #93.1 c1
        mov       eax, DWORD PTR [52+rsp]                       #93.1 c1
        cmp       r10d, 1023                                    #93.1 c5 stall 1
        jg        ..B3.19       # Prob 50%                      #93.1 c7
                                # LOE r12 r13 r14 eax ebx r10d
..B3.10:                        # Preds ..B3.9
                                # Execution count [0.00e+00]
        mov       r11d, 1023                                    #93.1 c1
        mov       DWORD PTR [rsp], ebx                          #93.1[spill] c1
        cmp       eax, 1023                                     #93.1 c1
        cmovl     r11d, eax                                     #93.1 c3
        xor       r9d, r9d                                      #93.1 c3
                                # LOE r9 r12 r13 r14 r10d r11d
..B3.11:                        # Preds ..B3.17 ..B3.10
                                # Execution count [0.00e+00]
        mov       eax, r10d                                     #97.50 c1
        mov       rbx, r9                                       #95.19 c1
        shl       eax, 10                                       #97.50 c3
        cdqe                                                    #97.44 c5
        lea       rsi, QWORD PTR [r14+rax*8]                    #110.48 c7
        lea       rcx, QWORD PTR [r13+rax*8]                    #97.44 c7
                                # LOE rcx rbx rsi r9 r12 r13 r14 r10d r11d
..B3.12:                        # Preds ..B3.16 ..B3.11
                                # Execution count [0.00e+00]
        mov       r8, r9                                        #96.21 c1
        lea       rax, QWORD PTR [8+rbx]                        #106.37 c1
                                # LOE rax rcx rbx rsi r8 r9 r12 r13 r14 r10d r11d
..B3.13:                        # Preds ..B3.15 ..B3.12
                                # Execution count [4.10e+04]
        vmovups   zmm7, ZMMWORD PTR [rcx+r8*8]                  #97.44 c1
        vmovups   zmm6, ZMMWORD PTR [64+rcx+r8*8]               #98.44 c1
        mov       rdi, rbx                                      #106.24 c1
        vmovups   zmm5, ZMMWORD PTR [8192+rcx+r8*8]             #99.44 c7 stall 2
        vmovups   zmm4, ZMMWORD PTR [8256+rcx+r8*8]             #100.44 c7
        vmovups   zmm3, ZMMWORD PTR [16384+rcx+r8*8]            #101.44 c13 stall 2
        vmovups   zmm2, ZMMWORD PTR [16448+rcx+r8*8]            #102.44 c13
        vmovups   zmm1, ZMMWORD PTR [24576+rcx+r8*8]            #103.44 c19 stall 2
        vmovups   zmm0, ZMMWORD PTR [24640+rcx+r8*8]            #104.44 c19
        lea       rdx, QWORD PTR [r12+r8*8]                     #107.49 c25 stall 2
        .align    16,0x90
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r10d r11d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7
..B3.14:                        # Preds ..B3.14 ..B3.13
                                # Execution count [2.28e+05]
        mov       r15d, edi                                     #107.33 c1
        shl       r15d, 10                                      #107.55 c3
        movsxd    r15, r15d                                     #107.49 c5
        vmovups   zmm8, ZMMWORD PTR [rdx+r15*8]                 #107.49 c7
        vmovups   zmm9, ZMMWORD PTR [64+rdx+r15*8]              #108.49 c7
        vfmadd231pd zmm7, zmm8, QWORD PTR [rsi+rdi*8]{1to8}     #115.25 c13 stall 2
        vfmadd231pd zmm6, zmm9, QWORD PTR [rsi+rdi*8]{1to8}     #116.25 c13
        vfmadd231pd zmm5, zmm8, QWORD PTR [8192+rsi+rdi*8]{1to8} #118.25 c19 stall 2
        vfmadd231pd zmm4, zmm9, QWORD PTR [8192+rsi+rdi*8]{1to8} #119.25 c19
        vfmadd231pd zmm3, zmm8, QWORD PTR [16384+rsi+rdi*8]{1to8} #121.25 c25 stall 2
        vfmadd231pd zmm2, zmm9, QWORD PTR [16384+rsi+rdi*8]{1to8} #122.25 c25
        vfmadd231pd zmm1, zmm8, QWORD PTR [24576+rsi+rdi*8]{1to8} #124.25 c31 stall 2
        vfmadd231pd zmm0, zmm9, QWORD PTR [24576+rsi+rdi*8]{1to8} #125.25 c31
        add       rdi, 1                                        #106.42 c31
        cmp       rdi, rax                                      #106.37 c33
        jl        ..B3.14       # Prob 82%                      #106.37 c35
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r10d r11d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7
..B3.15:                        # Preds ..B3.14
                                # Execution count [4.55e+04]
        vmovups   ZMMWORD PTR [rcx+r8*8], zmm7                  #128.28 c1
        vmovups   ZMMWORD PTR [64+rcx+r8*8], zmm6               #129.28 c1
        vmovups   ZMMWORD PTR [8192+rcx+r8*8], zmm5             #130.28 c7 stall 2
        vmovups   ZMMWORD PTR [8256+rcx+r8*8], zmm4             #131.28 c7
        vmovups   ZMMWORD PTR [16384+rcx+r8*8], zmm3            #132.28 c13 stall 2
        vmovups   ZMMWORD PTR [16448+rcx+r8*8], zmm2            #133.28 c13
        vmovups   ZMMWORD PTR [24576+rcx+r8*8], zmm1            #134.28 c19 stall 2
        vmovups   ZMMWORD PTR [24640+rcx+r8*8], zmm0            #135.28 c19
        add       r8, 16                                        #96.34 c19
        cmp       r8, 1024                                      #96.31 c21
        jl        ..B3.13       # Prob 98%                      #96.31 c23
                                # LOE rax rcx rbx rsi r8 r9 r12 r13 r14 r10d r11d
..B3.16:                        # Preds ..B3.15
                                # Execution count [7.11e+02]
        mov       rbx, rax                                      #95.32 c1
        cmp       rax, 1024                                     #95.29 c1
        jl        ..B3.12       # Prob 99%                      #95.29 c3
                                # LOE rcx rbx rsi r9 r12 r13 r14 r10d r11d
..B3.17:                        # Preds ..B3.16
                                # Execution count [5.56e+00]
        add       r10d, 4                                       #94.30 c1
        cmp       r10d, r11d                                    #94.41 c3
        jle       ..B3.11       # Prob 82%                      #94.41 c5
                                # LOE r9 r12 r13 r14 r10d r11d
..B3.18:                        # Preds ..B3.17
                                # Execution count [1.00e+00]
        mov       ebx, DWORD PTR [rsp]                          #[spill] c1
                                # LOE ebx
..B3.19:                        # Preds ..B3.18 ..B3.9
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.20 #93.1 c1
        mov       esi, ebx                                      #93.1 c1
        call      __kmpc_for_static_fini                        #93.1 c3
                                # LOE ebx
..B3.20:                        # Preds ..B3.19
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.139_2_kmpc_loc_struct_pack.55 #138.5 c1
        mov       esi, ebx                                      #138.5 c1
        xor       eax, eax                                      #138.5 c3
..___tag_value__Z6dgemm3PKdS0_Pd.197:
        call      __kmpc_barrier                                #138.5
..___tag_value__Z6dgemm3PKdS0_Pd.198:
                                # LOE
..B3.21:                        # Preds ..B3.20
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #86.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #86.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #86.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #86.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #86.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #86.1 c11
        pop       rbp                                           #86.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #86.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z6dgemm3PKdS0_Pd,@function
	.size	_Z6dgemm3PKdS0_Pd,.-_Z6dgemm3PKdS0_Pd
	.data
	.space 1, 0x00 	# pad
	.align 4
.2.139_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.139_2__kmpc_loc_pack.11
	.align 4
.2.139_2__kmpc_loc_pack.11:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	51
	.byte	59
	.byte	56
	.byte	54
	.byte	59
	.byte	56
	.byte	54
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.139_2_kmpc_loc_struct_pack.63:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.139_2__kmpc_loc_pack.62
	.align 4
.2.139_2__kmpc_loc_pack.62:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	51
	.byte	59
	.byte	56
	.byte	54
	.byte	59
	.byte	49
	.byte	51
	.byte	57
	.byte	59
	.byte	59
	.align 4
.2.139_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.139_2__kmpc_loc_pack.19
	.align 4
.2.139_2__kmpc_loc_pack.19:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	51
	.byte	59
	.byte	57
	.byte	51
	.byte	59
	.byte	49
	.byte	51
	.byte	56
	.byte	59
	.byte	59
	.align 4
.2.139_2_kmpc_loc_struct_pack.55:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.139_2__kmpc_loc_pack.54
	.align 4
.2.139_2__kmpc_loc_pack.54:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	51
	.byte	59
	.byte	49
	.byte	51
	.byte	56
	.byte	59
	.byte	49
	.byte	51
	.byte	56
	.byte	59
	.byte	59
	.data
# -- End  _Z6dgemm3PKdS0_Pd, L__Z6dgemm3PKdS0_Pd_86__par_region0_2.21
	.text
# -- Begin  _Z6dgemm1PKdS0_Pd, L__Z6dgemm1PKdS0_Pd_16__par_region0_2.22
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z6dgemm1PKdS0_Pd
# --- dgemm1(const double *, const double *, double *)
_Z6dgemm1PKdS0_Pd:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z6dgemm1PKdS0_Pd.207:
..L208:
                                                        #15.35
        push      rbp                                           #15.35
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #15.35
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #15.35
        sub       rsp, 320                                      #15.35 c1
        mov       QWORD PTR [48+rsp], rdi                       #15.35 c3
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.12 #16.1 c3
        mov       QWORD PTR [40+rsp], rbx                       #15.35[spill] c3
        mov       QWORD PTR [8+rsp], r15                        #15.35[spill] c5
        mov       QWORD PTR [16+rsp], r14                       #15.35[spill] c5
        mov       QWORD PTR [24+rsp], r13                       #15.35[spill] c7
        mov       QWORD PTR [32+rsp], r12                       #15.35[spill] c7
        mov       QWORD PTR [56+rsp], rsi                       #15.35 c9
        mov       QWORD PTR [256+rsp], rdx                      #15.35 c9
        call      __kmpc_global_thread_num                      #16.1 c9
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xfe, 0xff, 0xff, 0x22
                                # LOE eax
..B4.23:                        # Preds ..B4.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [4+rsp], eax                        #16.1 c1
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.51 #16.1 c1
        xor       eax, eax                                      #16.1 c1
..___tag_value__Z6dgemm1PKdS0_Pd.217:
        call      __kmpc_ok_to_fork                             #16.1
..___tag_value__Z6dgemm1PKdS0_Pd.218:
                                # LOE eax
..B4.2:                         # Preds ..B4.23
                                # Execution count [1.00e+00]
        test      eax, eax                                      #16.1 c1
        je        ..B4.4        # Prob 50%                      #16.1 c3
                                # LOE
..B4.3:                         # Preds ..B4.2
                                # Execution count [0.00e+00]
        add       rsp, -32                                      #16.1 c1
        mov       edx, offset flat: L__Z6dgemm1PKdS0_Pd_16__par_region0_2.22 #16.1 c1
        lea       rcx, QWORD PTR [80+rsp]                       #16.1 c3
        lea       rax, QWORD PTR [32+rsp]                       #16.1 c3
        mov       QWORD PTR [rsp], rax                          #16.1 c5
        lea       r8, QWORD PTR [8+rcx]                         #16.1 c5
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.51 #16.1 c5
        mov       esi, 7                                        #16.1 c5
        lea       r9, QWORD PTR [208+rcx]                       #16.1 c7
        lea       rbx, QWORD PTR [64+rax]                       #16.1 c7
        mov       QWORD PTR [8+rsp], rbx                        #16.1 c9
        lea       r10, QWORD PTR [128+rax]                      #16.1 c9
        mov       QWORD PTR [16+rsp], r10                       #16.1 c11
        lea       r11, QWORD PTR [192+rax]                      #16.1 c11
        mov       QWORD PTR [24+rsp], r11                       #16.1 c13
        xor       eax, eax                                      #16.1 c13
..___tag_value__Z6dgemm1PKdS0_Pd.219:
        call      __kmpc_fork_call                              #16.1
..___tag_value__Z6dgemm1PKdS0_Pd.220:
                                # LOE
..B4.24:                        # Preds ..B4.3
                                # Execution count [0.00e+00]
        add       rsp, 32                                       #16.1 c1
        jmp       ..B4.7        # Prob 100%                     #16.1 c1
                                # LOE
..B4.4:                         # Preds ..B4.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.51 #16.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #16.1 c1
        xor       eax, eax                                      #16.1 c1
..___tag_value__Z6dgemm1PKdS0_Pd.221:
        call      __kmpc_serialized_parallel                    #16.1
..___tag_value__Z6dgemm1PKdS0_Pd.222:
                                # LOE
..B4.5:                         # Preds ..B4.4
                                # Execution count [0.00e+00]
        add       rsp, -32                                      #16.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z6dgemm1PKdS0_Pd_0 #16.1 c1
        lea       rdi, QWORD PTR [36+rsp]                       #16.1 c3
        lea       r9, QWORD PTR [32+rsp]                        #16.1 c3
        lea       rdx, QWORD PTR [44+rdi]                       #16.1 c5
        lea       rax, QWORD PTR [16+rdx]                       #16.1 c7
        mov       QWORD PTR [rsp], rax                          #16.1 c9
        lea       rcx, QWORD PTR [8+rdx]                        #16.1 c9
        lea       r8, QWORD PTR [208+rdx]                       #16.1 c11
        lea       rbx, QWORD PTR [64+rax]                       #16.1 c11
        mov       QWORD PTR [8+rsp], rbx                        #16.1 c13
        lea       r10, QWORD PTR [128+rax]                      #16.1 c13
        mov       QWORD PTR [16+rsp], r10                       #16.1 c15
..___tag_value__Z6dgemm1PKdS0_Pd.223:
        call      L__Z6dgemm1PKdS0_Pd_16__par_region0_2.22      #16.1
..___tag_value__Z6dgemm1PKdS0_Pd.224:
                                # LOE
..B4.25:                        # Preds ..B4.5
                                # Execution count [0.00e+00]
        add       rsp, 32                                       #16.1 c1
                                # LOE
..B4.6:                         # Preds ..B4.25
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.51 #16.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #16.1 c1
        xor       eax, eax                                      #16.1 c1
..___tag_value__Z6dgemm1PKdS0_Pd.225:
        call      __kmpc_end_serialized_parallel                #16.1
..___tag_value__Z6dgemm1PKdS0_Pd.226:
                                # LOE
..B4.7:                         # Preds ..B4.24 ..B4.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #36.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #36.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #36.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #36.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #36.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #36.1 c11
        pop       rbp                                           #36.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #36.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z6dgemm1PKdS0_Pd_16__par_region0_2.22:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
# parameter 7: 16 + rbp
# parameter 8: 24 + rbp
# parameter 9: 32 + rbp
..B4.8:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
        push      rbp                                           #16.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #16.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #16.1
        sub       rsp, 320                                      #16.1 c1
        mov       QWORD PTR [16+rsp], r14                       #16.1[spill] c3
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xfe, 0xff, 0xff, 0x22
        mov       r14d, DWORD PTR [rdi]                         #16.1 c3
        mov       QWORD PTR [40+rsp], rbx                       #16.1[spill] c5
        xor       eax, eax                                      #21.1 c5
        mov       QWORD PTR [8+rsp], r15                        #16.1[spill] c7
        mov       r11d, 1                                       #21.1 c7
        mov       QWORD PTR [24+rsp], r13                       #16.1[spill] c7
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.20 #21.1 c7
        mov       QWORD PTR [32+rsp], r12                       #16.1[spill] c9
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xfe, 0xff, 0xff, 0x22
        mov       rbx, QWORD PTR [r8]                           #16.1 c9
        mov       DWORD PTR [rsp], eax                          #21.1 c11
        mov       esi, r14d                                     #21.1 c11
        mov       DWORD PTR [4+rsp], 1023                       #21.1 c13
        mov       r12, QWORD PTR [rcx]                          #16.1 c13
        mov       DWORD PTR [48+rsp], eax                       #21.1 c15
        mov       r13, QWORD PTR [rdx]                          #16.1 c17
        mov       DWORD PTR [52+rsp], r11d                      #21.1 c17
        add       rsp, -32                                      #21.1 c17
        mov       edx, 34                                       #21.1 c17
        lea       r10, QWORD PTR [84+rsp]                       #21.1 c19
        mov       QWORD PTR [rsp], r10                          #21.1 c21
        lea       rcx, QWORD PTR [80+rsp]                       #21.1 c21
        mov       DWORD PTR [8+rsp], r11d                       #21.1 c23
        lea       r8, QWORD PTR [32+rsp]                        #21.1 c23
        mov       DWORD PTR [16+rsp], r11d                      #21.1 c25
        lea       r9, QWORD PTR [36+rsp]                        #21.1 c25
        call      __kmpc_for_static_init_4                      #21.1 c27
                                # LOE rbx r12 r13 r14d
..B4.26:                        # Preds ..B4.8
                                # Execution count [1.00e+00]
        add       rsp, 32                                       #21.1 c1
                                # LOE rbx r12 r13 r14d
..B4.9:                         # Preds ..B4.26
                                # Execution count [0.00e+00]
        mov       r10d, DWORD PTR [rsp]                         #21.1 c1
        mov       eax, DWORD PTR [4+rsp]                        #21.1 c1
        cmp       r10d, 1023                                    #21.1 c5 stall 1
        jg        ..B4.17       # Prob 50%                      #21.1 c7
                                # LOE rbx r12 r13 eax r10d r14d
..B4.10:                        # Preds ..B4.9
                                # Execution count [1.00e+00]
        vmovdqu   ymm1, YMMWORD PTR .L_2il0floatpacket.23[rip]  #27.29 c1
        mov       r11d, 1023                                    #21.1 c1
        cmp       eax, 1023                                     #21.1 c1
        vpxord    zmm0, zmm0, zmm0                              #24.24 c1
        cmovl     r11d, eax                                     #21.1 c3
        mov       eax, r10d                                     #21.1 c3
        shl       eax, 10                                       #21.1 c5
        movsxd    rax, eax                                      #21.1 c7
                                # LOE rax rbx r12 r13 r10d r11d r14d zmm0 zmm1
..B4.11:                        # Preds ..B4.15 ..B4.10
                                # Execution count [5.56e+00]
        xor       ecx, ecx                                      #23.18 c1
        lea       rdi, QWORD PTR [r13+rax*8]                    #26.45 c1
        lea       r9, QWORD PTR [rbx+rax*8]                     #32.9 c1
                                # LOE rax rcx rbx rdi r9 r12 r13 r10d r11d r14d zmm0 zmm1
..B4.12:                        # Preds ..B4.14 ..B4.11
                                # Execution count [5.69e+03]
        vmovaps   zmm2, zmm0                                    #24.24 c1
        xor       r8d, r8d                                      #25.20 c1
        lea       rdx, QWORD PTR [r12+rcx*8]                    #27.29 c1
                                # LOE rax rdx rcx rbx rdi r8 r9 r12 r13 r10d r11d r14d zmm0 zmm1 zmm2
..B4.13:                        # Preds ..B4.13 ..B4.12
                                # Execution count [7.28e+05]
        mov       r15d, r8d                                     #27.29 c1
        vpxord    zmm3, zmm3, zmm3                              #27.29 c1
        kxnorw    k1, k0, k0                                    #27.29 c1
        vmovups   zmm4, ZMMWORD PTR [rdi+r8*8]                  #26.45 c1
        shl       r15d, 10                                      #27.29 c3
        lea       r15, QWORD PTR [rdx+r15*8]                    #27.29 c3
        add       r8, 8                                         #25.32 c3
        vgatherdpd zmm3{k1}, QWORD PTR [r15+ymm1*8]             #27.29 c5
        vfmadd231pd zmm2, zmm3, zmm4                            #30.21 c11 stall 2
        cmp       r8, 1024                                      #25.29 c11
        jl        ..B4.13       # Prob 99%                      #25.29 c13
                                # LOE rax rdx rcx rbx rdi r8 r9 r12 r13 r10d r11d r14d zmm0 zmm1 zmm2
..B4.14:                        # Preds ..B4.13
                                # Execution count [5.69e+03]
        vextractf64x4 ymm3, zmm2, 1                             #32.24 c5 stall 2
        vaddpd    ymm4, ymm3, ymm2                              #32.24 c7
        valignq   zmm16, zmm4, zmm4, 3                          #32.24 c15
        valignq   zmm17, zmm4, zmm4, 2                          #32.24 c15
        valignq   zmm18, zmm4, zmm4, 1                          #32.24 c17
        vaddsd    xmm5, xmm17, xmm18                            #32.24 c21
        vaddsd    xmm6, xmm16, xmm4                             #32.24 c23
        vaddsd    xmm7, xmm5, xmm6                              #32.24 c27 stall 1
        vmovsd    QWORD PTR [r9+rcx*8], xmm7                    #32.9 c33 stall 2
        add       rcx, 1                                        #23.30 c33
        cmp       rcx, 1024                                     #23.27 c35
        jl        ..B4.12       # Prob 99%                      #23.27 c37
                                # LOE rax rcx rbx rdi r9 r12 r13 r10d r11d r14d zmm0 zmm1
..B4.15:                        # Preds ..B4.14
                                # Execution count [5.56e+00]
        add       r10d, 1                                       #22.28 c1
        add       rax, 1024                                     #22.28 c1
        cmp       r10d, r11d                                    #22.33 c3
        jle       ..B4.11       # Prob 82%                      #22.33 c5
                                # LOE rax rbx r12 r13 r10d r11d r14d zmm0 zmm1
..B4.17:                        # Preds ..B4.15 ..B4.9
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.20 #21.1 c1
        mov       esi, r14d                                     #21.1 c1
        call      __kmpc_for_static_fini                        #21.1 c3
                                # LOE r14d
..B4.18:                        # Preds ..B4.17
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.140_2_kmpc_loc_struct_pack.43 #34.5 c1
        mov       esi, r14d                                     #34.5 c1
        xor       eax, eax                                      #34.5 c3
..___tag_value__Z6dgemm1PKdS0_Pd.244:
        call      __kmpc_barrier                                #34.5
..___tag_value__Z6dgemm1PKdS0_Pd.245:
                                # LOE
..B4.19:                        # Preds ..B4.18
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #16.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #16.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #16.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #16.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #16.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #16.1 c11
        pop       rbp                                           #16.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #16.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z6dgemm1PKdS0_Pd,@function
	.size	_Z6dgemm1PKdS0_Pd,.-_Z6dgemm1PKdS0_Pd
	.data
	.space 3, 0x00 	# pad
	.align 4
.2.140_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.140_2__kmpc_loc_pack.11
	.align 4
.2.140_2__kmpc_loc_pack.11:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	49
	.byte	59
	.byte	49
	.byte	54
	.byte	59
	.byte	49
	.byte	54
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.140_2_kmpc_loc_struct_pack.51:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.140_2__kmpc_loc_pack.50
	.align 4
.2.140_2__kmpc_loc_pack.50:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	49
	.byte	59
	.byte	49
	.byte	54
	.byte	59
	.byte	51
	.byte	53
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.140_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.140_2__kmpc_loc_pack.19
	.align 4
.2.140_2__kmpc_loc_pack.19:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	49
	.byte	59
	.byte	50
	.byte	49
	.byte	59
	.byte	51
	.byte	52
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.140_2_kmpc_loc_struct_pack.43:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.140_2__kmpc_loc_pack.42
	.align 4
.2.140_2__kmpc_loc_pack.42:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	49
	.byte	59
	.byte	51
	.byte	52
	.byte	59
	.byte	51
	.byte	52
	.byte	59
	.byte	59
	.data
# -- End  _Z6dgemm1PKdS0_Pd, L__Z6dgemm1PKdS0_Pd_16__par_region0_2.22
	.text
# -- Begin  _Z6dgemm2PKdS0_Pd, L__Z6dgemm2PKdS0_Pd_42__par_region0_2.24
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z6dgemm2PKdS0_Pd
# --- dgemm2(const double *, const double *, double *)
_Z6dgemm2PKdS0_Pd:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z6dgemm2PKdS0_Pd.254:
..L255:
                                                        #41.35
        push      rbp                                           #41.35
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #41.35
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #41.35
        sub       rsp, 704                                      #41.35 c1
        mov       QWORD PTR [48+rsp], rdi                       #41.35 c3
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.12 #42.1 c3
        mov       QWORD PTR [40+rsp], rbx                       #41.35[spill] c3
        mov       QWORD PTR [8+rsp], r15                        #41.35[spill] c5
        mov       QWORD PTR [16+rsp], r14                       #41.35[spill] c5
        mov       QWORD PTR [24+rsp], r13                       #41.35[spill] c7
        mov       QWORD PTR [32+rsp], r12                       #41.35[spill] c7
        mov       QWORD PTR [56+rsp], rsi                       #41.35 c9
        mov       QWORD PTR [640+rsp], rdx                      #41.35 c9
        call      __kmpc_global_thread_num                      #42.1 c9
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x58, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x50, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x48, 0xfd, 0xff, 0xff, 0x22
                                # LOE eax
..B5.25:                        # Preds ..B5.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [4+rsp], eax                        #42.1 c1
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.58 #42.1 c1
        xor       eax, eax                                      #42.1 c1
..___tag_value__Z6dgemm2PKdS0_Pd.264:
        call      __kmpc_ok_to_fork                             #42.1
..___tag_value__Z6dgemm2PKdS0_Pd.265:
                                # LOE eax
..B5.2:                         # Preds ..B5.25
                                # Execution count [1.00e+00]
        test      eax, eax                                      #42.1 c1
        je        ..B5.4        # Prob 50%                      #42.1 c3
                                # LOE
..B5.3:                         # Preds ..B5.2
                                # Execution count [0.00e+00]
        add       rsp, -80                                      #42.1 c1
        mov       edx, offset flat: L__Z6dgemm2PKdS0_Pd_42__par_region0_2.24 #42.1 c1
        lea       rax, QWORD PTR [80+rsp]                       #42.1 c3
        mov       QWORD PTR [rsp], rax                          #42.1 c5
        lea       r8, QWORD PTR [136+rsp]                       #42.1 c5
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.58 #42.1 c5
        mov       esi, 13                                       #42.1 c5
        lea       rbx, QWORD PTR [64+rax]                       #42.1 c7
        mov       QWORD PTR [8+rsp], rbx                        #42.1 c9
        lea       r10, QWORD PTR [128+rax]                      #42.1 c9
        mov       QWORD PTR [16+rsp], r10                       #42.1 c11
        lea       r11, QWORD PTR [192+rax]                      #42.1 c11
        mov       QWORD PTR [24+rsp], r11                       #42.1 c13
        lea       r12, QWORD PTR [256+rax]                      #42.1 c13
        mov       QWORD PTR [32+rsp], r12                       #42.1 c15
        lea       r13, QWORD PTR [320+rax]                      #42.1 c15
        mov       QWORD PTR [40+rsp], r13                       #42.1 c17
        lea       r14, QWORD PTR [384+rax]                      #42.1 c17
        mov       QWORD PTR [48+rsp], r14                       #42.1 c19
        lea       r15, QWORD PTR [448+rax]                      #42.1 c19
        mov       QWORD PTR [56+rsp], r15                       #42.1 c21
        lea       rax, QWORD PTR [512+rax]                      #42.1 c21
        mov       QWORD PTR [64+rsp], rax                       #42.1 c23
        lea       rcx, QWORD PTR [720+rsp]                      #42.1 c23
        lea       r9, QWORD PTR [-8+r8]                         #42.1 c25
        lea       rbx, QWORD PTR [64+rax]                       #42.1 c25
        mov       QWORD PTR [72+rsp], rbx                       #42.1 c27
        xor       eax, eax                                      #42.1 c27
..___tag_value__Z6dgemm2PKdS0_Pd.266:
        call      __kmpc_fork_call                              #42.1
..___tag_value__Z6dgemm2PKdS0_Pd.267:
                                # LOE
..B5.26:                        # Preds ..B5.3
                                # Execution count [0.00e+00]
        add       rsp, 80                                       #42.1 c1
        jmp       ..B5.7        # Prob 100%                     #42.1 c1
                                # LOE
..B5.4:                         # Preds ..B5.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.58 #42.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #42.1 c1
        xor       eax, eax                                      #42.1 c1
..___tag_value__Z6dgemm2PKdS0_Pd.268:
        call      __kmpc_serialized_parallel                    #42.1
..___tag_value__Z6dgemm2PKdS0_Pd.269:
                                # LOE
..B5.5:                         # Preds ..B5.4
                                # Execution count [0.00e+00]
        add       rsp, -80                                      #42.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z6dgemm2PKdS0_Pd_0 #42.1 c1
        lea       rdi, QWORD PTR [84+rsp]                       #42.1 c3
        lea       r9, QWORD PTR [80+rsp]                        #42.1 c3
        lea       rcx, QWORD PTR [52+rdi]                       #42.1 c5
        lea       rdx, QWORD PTR [636+rdi]                      #42.1 c5
        lea       rax, QWORD PTR [8+rcx]                        #42.1 c7
        mov       QWORD PTR [rsp], rax                          #42.1 c9
        lea       r8, QWORD PTR [-8+rcx]                        #42.1 c9
        lea       rbx, QWORD PTR [64+rax]                       #42.1 c11
        mov       QWORD PTR [8+rsp], rbx                        #42.1 c13
        lea       r10, QWORD PTR [128+rax]                      #42.1 c13
        mov       QWORD PTR [16+rsp], r10                       #42.1 c15
        lea       r11, QWORD PTR [192+rax]                      #42.1 c15
        mov       QWORD PTR [24+rsp], r11                       #42.1 c17
        lea       r12, QWORD PTR [256+rax]                      #42.1 c17
        mov       QWORD PTR [32+rsp], r12                       #42.1 c19
        lea       r13, QWORD PTR [320+rax]                      #42.1 c19
        mov       QWORD PTR [40+rsp], r13                       #42.1 c21
        lea       r14, QWORD PTR [384+rax]                      #42.1 c21
        mov       QWORD PTR [48+rsp], r14                       #42.1 c23
        lea       r15, QWORD PTR [448+rax]                      #42.1 c23
        mov       QWORD PTR [56+rsp], r15                       #42.1 c25
        lea       rax, QWORD PTR [512+rax]                      #42.1 c25
        mov       QWORD PTR [64+rsp], rax                       #42.1 c27
..___tag_value__Z6dgemm2PKdS0_Pd.270:
        call      L__Z6dgemm2PKdS0_Pd_42__par_region0_2.24      #42.1
..___tag_value__Z6dgemm2PKdS0_Pd.271:
                                # LOE
..B5.27:                        # Preds ..B5.5
                                # Execution count [0.00e+00]
        add       rsp, 80                                       #42.1 c1
                                # LOE
..B5.6:                         # Preds ..B5.27
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.58 #42.1 c1
        mov       esi, DWORD PTR [4+rsp]                        #42.1 c1
        xor       eax, eax                                      #42.1 c1
..___tag_value__Z6dgemm2PKdS0_Pd.272:
        call      __kmpc_end_serialized_parallel                #42.1
..___tag_value__Z6dgemm2PKdS0_Pd.273:
                                # LOE
..B5.7:                         # Preds ..B5.26 ..B5.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #80.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #80.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #80.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #80.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #80.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #80.1 c11
        pop       rbp                                           #80.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #80.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z6dgemm2PKdS0_Pd_42__par_region0_2.24:
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
# parameter 12: 56 + rbp
# parameter 13: 64 + rbp
# parameter 14: 72 + rbp
# parameter 15: 80 + rbp
..B5.8:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
        push      rbp                                           #42.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #42.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #42.1
        sub       rsp, 704                                      #42.1 c1
        mov       QWORD PTR [40+rsp], rbx                       #42.1[spill] c3
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfd, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdi]                          #42.1 c3
        mov       QWORD PTR [8+rsp], r15                        #42.1[spill] c5
        xor       eax, eax                                      #49.1 c5
        mov       QWORD PTR [16+rsp], r14                       #42.1[spill] c7
        mov       r11d, 4                                       #49.1 c7
        mov       QWORD PTR [24+rsp], r13                       #42.1[spill] c7
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.20 #49.1 c7
        mov       QWORD PTR [32+rsp], r12                       #42.1[spill] c9
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x58, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x50, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x48, 0xfd, 0xff, 0xff, 0x22
        mov       r14, QWORD PTR [r8]                           #42.1 c9
        mov       DWORD PTR [48+rsp], eax                       #49.1 c11
        mov       esi, ebx                                      #49.1 c11
        mov       DWORD PTR [52+rsp], 1023                      #49.1 c13
        mov       r12, QWORD PTR [rcx]                          #42.1 c13
        mov       DWORD PTR [56+rsp], eax                       #49.1 c15
        mov       r13, QWORD PTR [rdx]                          #42.1 c17
        mov       DWORD PTR [60+rsp], r11d                      #49.1 c17
        add       rsp, -32                                      #49.1 c17
        mov       edx, 34                                       #49.1 c17
        lea       r10, QWORD PTR [92+rsp]                       #49.1 c19
        mov       QWORD PTR [rsp], r10                          #49.1 c21
        lea       rcx, QWORD PTR [88+rsp]                       #49.1 c21
        mov       DWORD PTR [8+rsp], r11d                       #49.1 c23
        lea       r8, QWORD PTR [80+rsp]                        #49.1 c23
        mov       DWORD PTR [16+rsp], 1                         #49.1 c25
        lea       r9, QWORD PTR [84+rsp]                        #49.1 c25
        call      __kmpc_for_static_init_4                      #49.1 c27
                                # LOE r12 r13 r14 ebx
..B5.28:                        # Preds ..B5.8
                                # Execution count [1.00e+00]
        add       rsp, 32                                       #49.1 c1
                                # LOE r12 r13 r14 ebx
..B5.9:                         # Preds ..B5.28
                                # Execution count [0.00e+00]
        mov       r10d, DWORD PTR [48+rsp]                      #49.1 c1
        mov       eax, DWORD PTR [52+rsp]                       #49.1 c1
        cmp       r10d, 1023                                    #49.1 c5 stall 1
        jg        ..B5.19       # Prob 50%                      #49.1 c7
                                # LOE r12 r13 r14 eax ebx r10d
..B5.10:                        # Preds ..B5.9
                                # Execution count [0.00e+00]
        mov       r11d, 1023                                    #49.1 c1
        mov       DWORD PTR [rsp], ebx                          #49.1[spill] c1
        cmp       eax, 1023                                     #49.1 c1
        cmovl     r11d, eax                                     #49.1 c3
        xor       r9d, r9d                                      #49.1 c3
                                # LOE r9 r12 r13 r14 r10d r11d
..B5.11:                        # Preds ..B5.17 ..B5.10
                                # Execution count [0.00e+00]
        mov       eax, r10d                                     #53.49 c1
        mov       rbx, r9                                       #51.19 c1
        shl       eax, 10                                       #53.49 c3
        cdqe                                                    #53.43 c5
        lea       rsi, QWORD PTR [r14+rax*8]                    #61.48 c7
        lea       rcx, QWORD PTR [r13+rax*8]                    #53.43 c7
                                # LOE rcx rbx rsi r9 r12 r13 r14 r10d r11d
..B5.12:                        # Preds ..B5.16 ..B5.11
                                # Execution count [0.00e+00]
        mov       r8, r9                                        #52.21 c1
        lea       rax, QWORD PTR [8+rbx]                        #58.37 c1
                                # LOE rax rcx rbx rsi r8 r9 r12 r13 r14 r10d r11d
..B5.13:                        # Preds ..B5.15 ..B5.12
                                # Execution count [8.19e+04]
        vmovups   zmm3, ZMMWORD PTR [rcx+r8*8]                  #53.43 c1
        vmovups   zmm2, ZMMWORD PTR [8192+rcx+r8*8]             #54.43 c1
        mov       rdi, rbx                                      #58.24 c1
        vmovups   zmm1, ZMMWORD PTR [16384+rcx+r8*8]            #55.43 c7 stall 2
        vmovups   zmm0, ZMMWORD PTR [24576+rcx+r8*8]            #56.43 c7
        lea       rdx, QWORD PTR [r12+r8*8]                     #59.48 c13 stall 2
        .align    16,0x90
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r10d r11d zmm0 zmm1 zmm2 zmm3
..B5.14:                        # Preds ..B5.14 ..B5.13
                                # Execution count [4.55e+05]
        mov       r15d, edi                                     #59.32 c1
        shl       r15d, 10                                      #59.54 c3
        movsxd    r15, r15d                                     #59.48 c5
        vmovups   zmm4, ZMMWORD PTR [rdx+r15*8]                 #59.48 c7
        vfmadd231pd zmm3, zmm4, QWORD PTR [rsi+rdi*8]{1to8}     #66.24 c13 stall 2
        vfmadd231pd zmm2, zmm4, QWORD PTR [8192+rsi+rdi*8]{1to8} #67.24 c13
        vfmadd231pd zmm1, zmm4, QWORD PTR [16384+rsi+rdi*8]{1to8} #68.24 c19 stall 2
        vfmadd231pd zmm0, zmm4, QWORD PTR [24576+rsi+rdi*8]{1to8} #69.24 c19
        add       rdi, 1                                        #58.42 c19
        cmp       rdi, rax                                      #58.37 c21
        jl        ..B5.14       # Prob 82%                      #58.37 c23
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r10d r11d zmm0 zmm1 zmm2 zmm3
..B5.15:                        # Preds ..B5.14
                                # Execution count [9.10e+04]
        vmovups   ZMMWORD PTR [rcx+r8*8], zmm3                  #72.28 c1
        vmovups   ZMMWORD PTR [8192+rcx+r8*8], zmm2             #73.28 c1
        vmovups   ZMMWORD PTR [16384+rcx+r8*8], zmm1            #74.28 c7 stall 2
        vmovups   ZMMWORD PTR [24576+rcx+r8*8], zmm0            #75.28 c7
        add       r8, 8                                         #52.34 c7
        cmp       r8, 1024                                      #52.31 c9
        jl        ..B5.13       # Prob 99%                      #52.31 c11
                                # LOE rax rcx rbx rsi r8 r9 r12 r13 r14 r10d r11d
..B5.16:                        # Preds ..B5.15
                                # Execution count [7.11e+02]
        mov       rbx, rax                                      #51.32 c1
        cmp       rax, 1024                                     #51.29 c1
        jl        ..B5.12       # Prob 99%                      #51.29 c3
                                # LOE rcx rbx rsi r9 r12 r13 r14 r10d r11d
..B5.17:                        # Preds ..B5.16
                                # Execution count [5.56e+00]
        add       r10d, 4                                       #50.30 c1
        cmp       r10d, r11d                                    #50.41 c3
        jle       ..B5.11       # Prob 82%                      #50.41 c5
                                # LOE r9 r12 r13 r14 r10d r11d
..B5.18:                        # Preds ..B5.17
                                # Execution count [1.00e+00]
        mov       ebx, DWORD PTR [rsp]                          #[spill] c1
                                # LOE ebx
..B5.19:                        # Preds ..B5.18 ..B5.9
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.20 #49.1 c1
        mov       esi, ebx                                      #49.1 c1
        call      __kmpc_for_static_fini                        #49.1 c3
                                # LOE ebx
..B5.20:                        # Preds ..B5.19
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.141_2_kmpc_loc_struct_pack.50 #78.5 c1
        mov       esi, ebx                                      #78.5 c1
        xor       eax, eax                                      #78.5 c3
..___tag_value__Z6dgemm2PKdS0_Pd.291:
        call      __kmpc_barrier                                #78.5
..___tag_value__Z6dgemm2PKdS0_Pd.292:
                                # LOE
..B5.21:                        # Preds ..B5.20
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [8+rsp]                        #42.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [16+rsp]                       #42.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [24+rsp]                       #42.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [32+rsp]                       #42.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [40+rsp]                       #42.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #42.1 c11
        pop       rbp                                           #42.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #42.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z6dgemm2PKdS0_Pd,@function
	.size	_Z6dgemm2PKdS0_Pd,.-_Z6dgemm2PKdS0_Pd
	.data
	.space 1, 0x00 	# pad
	.align 4
.2.141_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.141_2__kmpc_loc_pack.11
	.align 4
.2.141_2__kmpc_loc_pack.11:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	50
	.byte	59
	.byte	52
	.byte	50
	.byte	59
	.byte	52
	.byte	50
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.141_2_kmpc_loc_struct_pack.58:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.141_2__kmpc_loc_pack.57
	.align 4
.2.141_2__kmpc_loc_pack.57:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	50
	.byte	59
	.byte	52
	.byte	50
	.byte	59
	.byte	55
	.byte	57
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.141_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.141_2__kmpc_loc_pack.19
	.align 4
.2.141_2__kmpc_loc_pack.19:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	50
	.byte	59
	.byte	52
	.byte	57
	.byte	59
	.byte	55
	.byte	56
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.141_2_kmpc_loc_struct_pack.50:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.141_2__kmpc_loc_pack.49
	.align 4
.2.141_2__kmpc_loc_pack.49:
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
	.byte	103
	.byte	101
	.byte	109
	.byte	109
	.byte	50
	.byte	59
	.byte	55
	.byte	56
	.byte	59
	.byte	55
	.byte	56
	.byte	59
	.byte	59
	.data
# -- End  _Z6dgemm2PKdS0_Pd, L__Z6dgemm2PKdS0_Pd_42__par_region0_2.24
	.text
# -- Begin  _Z9dgemm_mklPKdS0_Pdi
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z9dgemm_mklPKdS0_Pdi
# --- dgemm_mkl(const double *, const double *, double *, int)
_Z9dgemm_mklPKdS0_Pdi:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: ecx
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z9dgemm_mklPKdS0_Pdi.301:
..L302:
                                                        #145.40
        sub       rsp, 56                                       #145.40 c1
	.cfi_def_cfa_offset 64
        mov       r8d, ecx                                      #149.3 c1
        vmovsd    xmm0, QWORD PTR .L_2il0floatpacket.18[rip]    #149.3 c1
        vxorpd    xmm1, xmm1, xmm1                              #149.3 c1
        mov       QWORD PTR [rsp], rdi                          #149.3 c5
        mov       edi, 101                                      #149.3 c5
        mov       DWORD PTR [8+rsp], ecx                        #149.3 c7
        mov       r9d, ecx                                      #149.3 c7
        mov       QWORD PTR [16+rsp], rsi                       #149.3 c7
        mov       esi, 111                                      #149.3 c7
        mov       DWORD PTR [24+rsp], ecx                       #149.3 c9
        mov       QWORD PTR [32+rsp], rdx                       #149.3 c9
        mov       edx, esi                                      #149.3 c9
        mov       DWORD PTR [40+rsp], ecx                       #149.3 c11
..___tag_value__Z9dgemm_mklPKdS0_Pdi.304:
#       cblas_dgemm(CBLAS_LAYOUT, CBLAS_TRANSPOSE, CBLAS_TRANSPOSE, int, int, int, double, const double *, int, const double *, int, double, double *, int)
        call      cblas_dgemm                                   #149.3
..___tag_value__Z9dgemm_mklPKdS0_Pdi.305:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
        add       rsp, 56                                       #154.1 c1
	.cfi_def_cfa_offset 8
        ret                                                     #154.1 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z9dgemm_mklPKdS0_Pdi,@function
	.size	_Z9dgemm_mklPKdS0_Pdi,.-_Z9dgemm_mklPKdS0_Pdi
	.data
# -- End  _Z9dgemm_mklPKdS0_Pdi
	.text
# -- Begin  _Z9referencePKdS0_Pdi, L__Z9referencePKdS0_Pdi_160__par_loop0_2.25
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z9referencePKdS0_Pdi
# --- reference(const double *, const double *, double *, int)
_Z9referencePKdS0_Pdi:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: ecx
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z9referencePKdS0_Pdi.308:
..L309:
                                                        #159.40
        push      rbp                                           #159.40
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #159.40
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #159.40
        sub       rsp, 512                                      #159.40 c1
        mov       QWORD PTR [40+rsp], rdi                       #159.40 c3
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.12 #160.1 c3
        mov       QWORD PTR [32+rsp], rbx                       #159.40[spill] c3
        mov       QWORD PTR [rsp], r15                          #159.40[spill] c5
        mov       QWORD PTR [8+rsp], r14                        #159.40[spill] c5
        mov       QWORD PTR [16+rsp], r13                       #159.40[spill] c7
        mov       QWORD PTR [24+rsp], r12                       #159.40[spill] c7
        mov       QWORD PTR [48+rsp], rsi                       #159.40 c9
        mov       QWORD PTR [56+rsp], rdx                       #159.40 c9
        mov       DWORD PTR [72+rsp], ecx                       #159.40 c11
        call      __kmpc_global_thread_num                      #160.1 c11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xfe, 0xff, 0xff, 0x22
                                # LOE eax
..B7.88:                        # Preds ..B7.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [64+rsp], eax                       #160.1 c1
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.20 #160.1 c1
        xor       eax, eax                                      #160.1 c1
..___tag_value__Z9referencePKdS0_Pdi.318:
        call      __kmpc_ok_to_fork                             #160.1
..___tag_value__Z9referencePKdS0_Pdi.319:
                                # LOE eax
..B7.2:                         # Preds ..B7.88
                                # Execution count [1.00e+00]
        test      eax, eax                                      #160.1 c1
        je        ..B7.4        # Prob 50%                      #160.1 c3
                                # LOE
..B7.3:                         # Preds ..B7.2
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #160.1 c1
        mov       edx, offset flat: L__Z9referencePKdS0_Pdi_160__par_loop0_2.25 #160.1 c1
        lea       rcx, QWORD PTR [88+rsp]                       #160.1 c3
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.20 #160.1 c3
        mov       esi, 4                                        #160.1 c3
        lea       rax, QWORD PTR [-24+rcx]                      #160.1 c5
        mov       QWORD PTR [rsp], rax                          #160.1 c7
        lea       r8, QWORD PTR [-16+rcx]                       #160.1 c7
        xor       eax, eax                                      #160.1 c7
        lea       r9, QWORD PTR [-32+rcx]                       #160.1 c9
..___tag_value__Z9referencePKdS0_Pdi.320:
        call      __kmpc_fork_call                              #160.1
..___tag_value__Z9referencePKdS0_Pdi.321:
                                # LOE
..B7.89:                        # Preds ..B7.3
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #160.1 c1
        jmp       ..B7.7        # Prob 100%                     #160.1 c1
                                # LOE
..B7.4:                         # Preds ..B7.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.20 #160.1 c1
        mov       esi, DWORD PTR [64+rsp]                       #160.1 c1
        xor       eax, eax                                      #160.1 c1
..___tag_value__Z9referencePKdS0_Pdi.322:
        call      __kmpc_serialized_parallel                    #160.1
..___tag_value__Z9referencePKdS0_Pdi.323:
                                # LOE
..B7.5:                         # Preds ..B7.4
                                # Execution count [0.00e+00]
        lea       rdi, QWORD PTR [64+rsp]                       #160.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z9referencePKdS0_Pdi_0 #160.1 c1
        lea       rdx, QWORD PTR [8+rdi]                        #160.1 c3
        lea       rcx, QWORD PTR [-16+rdx]                      #160.1 c5
        lea       r8, QWORD PTR [-32+rdx]                       #160.1 c5
        lea       r9, QWORD PTR [-24+rdx]                       #160.1 c7
..___tag_value__Z9referencePKdS0_Pdi.324:
        call      L__Z9referencePKdS0_Pdi_160__par_loop0_2.25   #160.1
..___tag_value__Z9referencePKdS0_Pdi.325:
                                # LOE
..B7.6:                         # Preds ..B7.5
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.20 #160.1 c1
        mov       esi, DWORD PTR [64+rsp]                       #160.1 c1
        xor       eax, eax                                      #160.1 c1
..___tag_value__Z9referencePKdS0_Pdi.326:
        call      __kmpc_end_serialized_parallel                #160.1
..___tag_value__Z9referencePKdS0_Pdi.327:
                                # LOE
..B7.7:                         # Preds ..B7.6 ..B7.89
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [rsp]                          #165.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [8+rsp]                        #165.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [16+rsp]                       #165.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [24+rsp]                       #165.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [32+rsp]                       #165.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #165.1 c11
        pop       rbp                                           #165.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #165.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z9referencePKdS0_Pdi_160__par_loop0_2.25:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
..B7.8:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
        push      rbp                                           #160.1
	.cfi_def_cfa 7, 16
        mov       rbp, rsp                                      #160.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -64                                      #160.1
        sub       rsp, 512                                      #160.1 c1
        mov       QWORD PTR [32+rsp], rbx                       #160.1[spill] c3
        mov       eax, DWORD PTR [rdi]                          #160.1 c3
        mov       QWORD PTR [rsp], r15                          #160.1[spill] c5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xfe, 0xff, 0xff, 0x22
        mov       ebx, DWORD PTR [rdx]                          #160.1 c7
        mov       DWORD PTR [80+rsp], eax                       #160.1[spill] c7
        mov       r10, QWORD PTR [r9]                           #160.1 c9
        mov       QWORD PTR [8+rsp], r14                        #160.1[spill] c11
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xfe, 0xff, 0xff, 0x22
        movsxd    rbx, ebx                                      #164.9 c11
        mov       QWORD PTR [16+rsp], r13                       #160.1[spill] c13
        mov       r11, QWORD PTR [r8]                           #160.1 c13
        mov       QWORD PTR [24+rsp], r12                       #160.1[spill] c15
        mov       rax, QWORD PTR [rcx]                          #160.1 c17
        mov       QWORD PTR [216+rsp], r10                      #160.1[spill] c17
        test      ebx, ebx                                      #162.5 c17
        mov       QWORD PTR [208+rsp], r11                      #160.1[spill] c19
        mov       QWORD PTR [88+rsp], rax                       #160.1[spill] c21
        mov       QWORD PTR [240+rsp], rbx                      #164.9[spill] c21
        jle       ..B7.78       # Prob 10%                      #162.5 c21
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xfe, 0xff, 0xff, 0x22
                                # LOE ebx
..B7.9:                         # Preds ..B7.8
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #160.1 c1
        mov       DWORD PTR [112+rsp], eax                      #160.1 c3
        lea       r12d, DWORD PTR [-1+rbx]                      #160.1 c3
        mov       DWORD PTR [116+rsp], r12d                     #160.1 c5
        mov       r11d, 1                                       #160.1 c5
        mov       DWORD PTR [120+rsp], eax                      #160.1 c5
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.20 #160.1 c5
        mov       DWORD PTR [124+rsp], r11d                     #160.1 c7
        add       rsp, -32                                      #160.1 c7
        mov       edx, 34                                       #160.1 c7
        lea       r10, QWORD PTR [156+rsp]                      #160.1 c9
        mov       QWORD PTR [rsp], r10                          #160.1 c11
        lea       rcx, QWORD PTR [152+rsp]                      #160.1 c11
        mov       DWORD PTR [8+rsp], r11d                       #160.1 c13
        lea       r8, QWORD PTR [144+rsp]                       #160.1 c13
        mov       DWORD PTR [16+rsp], r11d                      #160.1 c15
        mov       esi, DWORD PTR [-44+r10]                      #160.1[spill] c15
        lea       r9, QWORD PTR [148+rsp]                       #160.1 c17
        call      __kmpc_for_static_init_4                      #160.1 c19
                                # LOE ebx r12d
..B7.90:                        # Preds ..B7.9
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #160.1 c1
                                # LOE ebx r12d
..B7.10:                        # Preds ..B7.90
                                # Execution count [0.00e+00]
        mov       eax, DWORD PTR [112+rsp]                      #160.1 c1
        mov       DWORD PTR [64+rsp], eax                       #160.1[spill] c5 stall 1
        mov       edx, DWORD PTR [116+rsp]                      #160.1 c5
        cmp       eax, r12d                                     #160.1 c5
        jg        ..B7.77       # Prob 50%                      #160.1 c7
                                # LOE edx ebx r12d
..B7.11:                        # Preds ..B7.10
                                # Execution count [9.00e-01]
        cmp       edx, r12d                                     #160.1 c1
        mov       DWORD PTR [48+rsp], 0                         #161.3[spill] c1
        cmovl     r12d, edx                                     #160.1 c3
        mov       edx, 1                                        #161.3 c3
        mov       eax, r12d                                     #161.3 c5
        sub       eax, DWORD PTR [64+rsp]                       #161.3[spill] c7
        add       eax, 1                                        #161.3 c9
        mov       ecx, eax                                      #161.3 c11
        sar       ecx, 1                                        #161.3 c13
        shr       ecx, 30                                       #161.3 c15
        sub       ecx, DWORD PTR [64+rsp]                       #161.3[spill] c17
        lea       esi, DWORD PTR [1+rcx+r12]                    #161.3 c19
        sar       esi, 2                                        #161.3 c21
        mov       DWORD PTR [40+rsp], esi                       #161.3[spill] c23
        test      esi, esi                                      #161.3 c23
        jbe       ..B7.55       # Prob 0%                       #161.3 c25
                                # LOE eax edx ebx
..B7.12:                        # Preds ..B7.11
                                # Execution count [4.65e+00]
        mov       r13d, DWORD PTR [64+rsp]                      #164.9[spill] c1
        mov       DWORD PTR [152+rsp], 0                        #162.16[spill] c1
        mov       r12d, 8                                       #162.5 c1
        mov       DWORD PTR [56+rsp], eax                       #164.9[spill] c3
        vmovd     xmm1, r12d                                    #162.5 c3
        mov       r12d, ebx                                     #160.1 c3
        lea       r14d, DWORD PTR [rbx*4]                       #164.40 c5
        lea       r13d, DWORD PTR [-1+r13]                      #164.9 c5
        sar       r12d, 1                                       #160.1 c5
        vpbroadcastd ymm1, xmm1                                 #162.5 c5
        lea       r9d, DWORD PTR [rbx+rbx*2]                    #164.9 c7
        lea       edx, DWORD PTR [rbx+rbx]                      #164.9 c7
        neg       r14d                                          #164.40 c7
        imul      r13d, ebx                                     #164.9 c7
        mov       DWORD PTR [184+rsp], r13d                     #164.9[spill] c11 stall 1
        neg       r9d                                           #164.9 c11
        neg       edx                                           #164.9 c11
        lea       r15d, DWORD PTR [r14+rbx*4]                   #164.40 c11
        mov       DWORD PTR [248+rsp], r15d                     #164.40[spill] c13
        mov       r14d, ebx                                     #160.1 c13
        shr       r12d, 30                                      #160.1 c13
        lea       r11d, DWORD PTR [r9+rbx*4]                    #164.9 c13
        mov       DWORD PTR [280+rsp], r11d                     #164.9[spill] c15
        lea       edi, DWORD PTR [rdx+rbx*4]                    #164.9 c15
        mov       DWORD PTR [272+rsp], edi                      #164.9[spill] c17
        neg       r14d                                          #160.1 c17
        add       r12d, ebx                                     #160.1 c17
        lea       r10d, DWORD PTR [r11+r13]                     #164.25 c17
        mov       DWORD PTR [168+rsp], r10d                     #164.9[spill] c19
        lea       esi, DWORD PTR [rdi+r13]                      #164.25 c19
        mov       DWORD PTR [176+rsp], esi                      #164.9[spill] c21
        mov       edx, ebx                                      #162.5 c21
        lea       r14d, DWORD PTR [r14+rbx*4]                   #160.1 c21
        mov       DWORD PTR [192+rsp], r14d                     #164.9[spill] c23
        sar       r12d, 2                                       #160.1 c23
        mov       DWORD PTR [104+rsp], r12d                     #164.9[spill] c25
        mov       r9d, r10d                                     #162.16 c25
        mov       DWORD PTR [144+rsp], r9d                      #164.9[spill] c27
        lea       r8d, DWORD PTR [r13+rbx*4]                    #164.25 c27
        mov       DWORD PTR [264+rsp], r8d                      #162.16[spill] c29
        mov       ecx, esi                                      #162.16 c29
        mov       DWORD PTR [136+rsp], r8d                      #164.9[spill] c29
        and       edx, -16                                      #162.5 c29
        mov       DWORD PTR [128+rsp], ecx                      #164.9[spill] c31
        lea       r15d, DWORD PTR [r14+r13]                     #164.9 c31
        mov       DWORD PTR [256+rsp], r15d                     #164.9[spill] c33
        vmovdqu   ymm0, YMMWORD PTR .L_2il0floatpacket.19[rip]  #162.5 c33
        mov       DWORD PTR [72+rsp], edx                       #164.9[spill] c35
        xor       esi, esi                                      #164.9 c35
        mov       DWORD PTR [288+rsp], ecx                      #164.9[spill] c37
        mov       ecx, 1                                        #164.9 c37
        mov       DWORD PTR [160+rsp], r8d                      #164.9[spill] c39
        mov       edx, DWORD PTR [152+rsp]                      #164.9[spill] c39
        mov       DWORD PTR [296+rsp], r9d                      #164.9[spill] c41
        mov       r8, QWORD PTR [88+rsp]                        #164.9[spill] c43
        mov       rax, QWORD PTR [208+rsp]                      #164.9[spill] c43
                                # LOE rax r8 edx ecx ebx esi ymm0 ymm1
..B7.13:                        # Preds ..B7.53 ..B7.12
                                # Execution count [5.00e+00]
        mov       r9d, esi                                      #163.7 c1
        mov       edi, ecx                                      #163.7 c1
        cmp       DWORD PTR [104+rsp], 0                        #163.7[spill] c1
        mov       r10d, r9d                                     #164.9 c3
        jbe       ..B7.33       # Prob 0%                       #163.7 c3
                                # LOE rax r8 edx ecx ebx esi edi r9d r10d ymm0 ymm1
..B7.14:                        # Preds ..B7.13
                                # Execution count [2.58e+01]
        mov       r11d, DWORD PTR [184+rsp]                     #164.9[spill] c1
        mov       DWORD PTR [152+rsp], edx                      #162.5[spill] c1
        mov       edi, DWORD PTR [192+rsp]                      #164.9[spill] c3
        mov       r13d, DWORD PTR [136+rsp]                     #164.9[spill] c5
        lea       r14d, DWORD PTR [r11+rdi]                     #164.9 c7
        movsxd    r14, r14d                                     #164.9 c9
        mov       r15d, DWORD PTR [144+rsp]                     #164.9[spill] c9
        lea       r12d, DWORD PTR [r13+rdx]                     #164.9 c9
        lea       r11, QWORD PTR [r8+r14*8]                     #164.9 c11
        mov       QWORD PTR [392+rsp], r11                      #162.5[spill] c13
        mov       r14d, DWORD PTR [128+rsp]                     #164.9[spill] c13
        movsxd    r12, r12d                                     #164.9 c13
        lea       r13, QWORD PTR [r8+r12*8]                     #164.9 c15
        mov       QWORD PTR [400+rsp], r13                      #162.5[spill] c17
        lea       edi, DWORD PTR [r15+rdx]                      #164.9 c17
        mov       r12, r13                                      #162.5 c17
        lea       r15d, DWORD PTR [r14+rdx]                     #164.9 c19
        movsxd    rdi, edi                                      #164.9 c19
        and       r12, 63                                       #162.5 c19
        mov       DWORD PTR [232+rsp], r12d                     #162.5[spill] c19
        movsxd    r15, r15d                                     #164.9 c21
        mov       r14d, r12d                                    #162.5 c21
        lea       rdi, QWORD PTR [r8+rdi*8]                     #164.9 c21
        mov       QWORD PTR [384+rsp], rdi                      #162.5[spill] c23
        lea       r15, QWORD PTR [r8+r15*8]                     #164.9 c23
        mov       QWORD PTR [376+rsp], r15                      #162.5[spill] c25
        and       r14d, 7                                       #162.5 c25
        mov       DWORD PTR [224+rsp], r14d                     #162.5[spill] c27
        mov       rdi, QWORD PTR [216+rsp]                      #162.5[spill] c27
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B7.15:                        # Preds ..B7.31 ..B7.14
                                # Execution count [2.78e+01]
        cmp       ebx, 866                                      #162.5 c1
        jl        ..B7.84       # Prob 10%                      #162.5 c3
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B7.16:                        # Preds ..B7.15
                                # Execution count [2.78e+01]
        mov       r13d, DWORD PTR [232+rsp]                     #162.5[spill] c1
        test      r13d, r13d                                    #162.5 c5 stall 1
        je        ..B7.19       # Prob 50%                      #162.5 c7
                                # LOE rax rdi ebx r9d r10d r13d ymm0 ymm1
..B7.17:                        # Preds ..B7.16
                                # Execution count [2.78e+01]
        cmp       DWORD PTR [224+rsp], 0                        #162.5[spill] c1
        jne       ..B7.83       # Prob 10%                      #162.5 c3
                                # LOE rax rdi ebx r9d r10d r13d ymm0 ymm1
..B7.18:                        # Preds ..B7.17
                                # Execution count [0.00e+00]
        neg       r13d                                          #162.5 c1
        add       r13d, 64                                      #162.5 c3
        shr       r13d, 3                                       #162.5 c5
        cmp       ebx, r13d                                     #162.5 c7
        cmovl     r13d, ebx                                     #162.5 c9
                                # LOE rax rdi ebx r9d r10d r13d ymm0 ymm1
..B7.19:                        # Preds ..B7.18 ..B7.16
                                # Execution count [2.78e+01]
        mov       edx, ebx                                      #162.5 c1
        sub       edx, r13d                                     #162.5 c3
        and       edx, 15                                       #162.5 c5
        neg       edx                                           #162.5 c7
        add       edx, ebx                                      #162.5 c9
        cmp       r13d, 1                                       #162.5 c9
        jb        ..B7.23       # Prob 50%                      #162.5 c11
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
..B7.20:                        # Preds ..B7.19
                                # Execution count [2.78e+01]
        mov       esi, DWORD PTR [272+rsp]                      #164.40[spill] c1
        mov       DWORD PTR [480+rsp], edx                      #162.5[spill] c1
        mov       ecx, 255                                      #162.5 c1
        mov       DWORD PTR [472+rsp], r10d                     #162.5[spill] c3
        kmovw     k1, ecx                                       #162.5 c3
        mov       DWORD PTR [464+rsp], r9d                      #162.5[spill] c5
        mov       r11d, DWORD PTR [280+rsp]                     #164.40[spill] c5
        mov       DWORD PTR [344+rsp], ebx                      #162.5[spill] c7
        mov       r14d, r10d                                    #164.40 c7
        vmovd     xmm2, r13d                                    #162.5 c7
        movsxd    r13, r13d                                     #162.5 c7
        mov       QWORD PTR [496+rsp], r13                      #162.5[spill] c9
        lea       ecx, DWORD PTR [rsi+r10]                      #164.40 c9
        mov       DWORD PTR [488+rsp], r13d                     #162.5[spill] c11
        movsxd    rcx, ecx                                      #164.40 c11
        lea       r8d, DWORD PTR [r11+r10]                      #164.40 c11
        sub       r14d, ebx                                     #164.40 c11
        vmovdqa   ymm3, ymm0                                    #162.5 c11
        lea       r11, QWORD PTR [rdi+rcx*8]                    #164.40 c13
        mov       ecx, DWORD PTR [256+rsp]                      #164.25[spill] c13
        movsxd    r8, r8d                                       #164.40 c13
        vpbroadcastd ymm2, xmm2                                 #162.5 c13
        lea       r12d, DWORD PTR [r14+rbx*4]                   #164.40 c15
        xor       r15d, r15d                                    #162.5 c15
        lea       ecx, DWORD PTR [rcx+r9*4]                     #164.25 c17
        movsxd    r12, r12d                                     #164.40 c17
        mov       esi, DWORD PTR [288+rsp]                      #164.25[spill] c17
        movsxd    rcx, ecx                                      #164.25 c19
        mov       QWORD PTR [408+rsp], rcx                      #164.25[spill] c21
        mov       ecx, DWORD PTR [264+rsp]                      #164.25[spill] c21
        lea       r14, QWORD PTR [rdi+r12*8]                    #164.40 c23
        lea       ecx, DWORD PTR [rcx+r9*4]                     #164.25 c25
        lea       r12, QWORD PTR [rdi+r8*8]                     #164.40 c25
        movsxd    rcx, ecx                                      #164.25 c27
        mov       QWORD PTR [416+rsp], rcx                      #164.25[spill] c29
        mov       ecx, DWORD PTR [248+rsp]                      #164.40[spill] c29
        mov       r8d, DWORD PTR [296+rsp]                      #164.25[spill] c31
        add       ecx, r10d                                     #164.40 c33
        movsxd    rcx, ecx                                      #164.40 c35
        lea       r8d, DWORD PTR [r8+r9*4]                      #164.25 c35
        lea       esi, DWORD PTR [rsi+r9*4]                     #164.25 c35
        movsxd    r8, r8d                                       #164.25 c37
        movsxd    rsi, esi                                      #164.25 c37
        lea       rcx, QWORD PTR [rdi+rcx*8]                    #164.40 c37
        mov       rdx, QWORD PTR [416+rsp]                      #162.5[spill] c37
        mov       rbx, QWORD PTR [408+rsp]                      #162.5[spill] c39
        mov       rdi, QWORD PTR [376+rsp]                      #162.5[spill] c41
        mov       r9, QWORD PTR [384+rsp]                       #162.5[spill] c43
        mov       r10, QWORD PTR [392+rsp]                      #162.5[spill] c45
        mov       r13, QWORD PTR [400+rsp]                      #162.5[spill] c47
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B7.21:                        # Preds ..B7.21 ..B7.20
                                # Execution count [1.54e+02]
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #162.5 c3
        vpaddd    ymm3, ymm3, ymm1                              #162.5 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r9+r15*8]           #164.9 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rcx+r15*8]          #164.40 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [rax+r8*8]{1to8}      #164.9 c11 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm5              #164.9 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rdi+r15*8]          #164.9 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [rcx+r15*8]          #164.40 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [rax+rsi*8]{1to8}     #164.9 c29 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm7             #164.9 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [r10+r15*8]          #164.9 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [rcx+r15*8]          #164.40 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [rax+rbx*8]{1to8}     #164.9 c47 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm9             #164.9 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [r13+r15*8]         #164.9 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [rcx+r15*8]         #164.40 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [rax+rdx*8]{1to8}   #164.9 c65 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm11            #164.9 c71 stall 2
        vmovupd   zmm13{k2}{z}, ZMMWORD PTR [r9+r15*8]          #164.9 c71
        vmovupd   zmm12{k2}{z}, ZMMWORD PTR [r12+r15*8]         #164.40 c77 stall 2
        vfmadd231pd zmm13, zmm12, QWORD PTR [8+rax+r8*8]{1to8}  #164.9 c83 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm13             #164.9 c89 stall 2
        vmovupd   zmm15{k2}{z}, ZMMWORD PTR [rdi+r15*8]         #164.9 c89
        vmovupd   zmm14{k2}{z}, ZMMWORD PTR [r12+r15*8]         #164.40 c95 stall 2
        vfmadd231pd zmm15, zmm14, QWORD PTR [8+rax+rsi*8]{1to8} #164.9 c101 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm15            #164.9 c107 stall 2
        vmovupd   zmm17{k2}{z}, ZMMWORD PTR [r10+r15*8]         #164.9 c107
        vmovupd   zmm16{k2}{z}, ZMMWORD PTR [r12+r15*8]         #164.40 c113 stall 2
        vfmadd231pd zmm17, zmm16, QWORD PTR [8+rax+rbx*8]{1to8} #164.9 c119 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm17            #164.9 c125 stall 2
        vmovupd   zmm19{k2}{z}, ZMMWORD PTR [r13+r15*8]         #164.9 c125
        vmovupd   zmm18{k2}{z}, ZMMWORD PTR [r12+r15*8]         #164.40 c131 stall 2
        vfmadd231pd zmm19, zmm18, QWORD PTR [8+rax+rdx*8]{1to8} #164.9 c137 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm19            #164.9 c143 stall 2
        vmovupd   zmm21{k2}{z}, ZMMWORD PTR [r9+r15*8]          #164.9 c143
        vmovupd   zmm20{k2}{z}, ZMMWORD PTR [r11+r15*8]         #164.40 c149 stall 2
        vfmadd231pd zmm21, zmm20, QWORD PTR [16+rax+r8*8]{1to8} #164.9 c155 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm21             #164.9 c161 stall 2
        vmovupd   zmm23{k2}{z}, ZMMWORD PTR [rdi+r15*8]         #164.9 c161
        vmovupd   zmm22{k2}{z}, ZMMWORD PTR [r11+r15*8]         #164.40 c167 stall 2
        vfmadd231pd zmm23, zmm22, QWORD PTR [16+rax+rsi*8]{1to8} #164.9 c173 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm23            #164.9 c179 stall 2
        vmovupd   zmm25{k2}{z}, ZMMWORD PTR [r10+r15*8]         #164.9 c179
        vmovupd   zmm24{k2}{z}, ZMMWORD PTR [r11+r15*8]         #164.40 c185 stall 2
        vfmadd231pd zmm25, zmm24, QWORD PTR [16+rax+rbx*8]{1to8} #164.9 c191 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm25            #164.9 c197 stall 2
        .byte     144                                           #164.9 c197
        vmovupd   zmm27{k2}{z}, ZMMWORD PTR [r13+r15*8]         #164.9 c197
        vmovupd   zmm26{k2}{z}, ZMMWORD PTR [r11+r15*8]         #164.40 c203 stall 2
        vfmadd231pd zmm27, zmm26, QWORD PTR [16+rax+rdx*8]{1to8} #164.9 c209 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm27            #164.9 c215 stall 2
        vmovupd   zmm29{k2}{z}, ZMMWORD PTR [r9+r15*8]          #164.9 c215
        vmovupd   zmm28{k2}{z}, ZMMWORD PTR [r14+r15*8]         #164.40 c221 stall 2
        vfmadd231pd zmm29, zmm28, QWORD PTR [24+rax+r8*8]{1to8} #164.9 c227 stall 2
        vmovupd   ZMMWORD PTR [r9+r15*8]{k2}, zmm29             #164.9 c233 stall 2
        vmovupd   zmm31{k2}{z}, ZMMWORD PTR [rdi+r15*8]         #164.9 c233
        vmovupd   zmm30{k2}{z}, ZMMWORD PTR [r14+r15*8]         #164.40 c239 stall 2
        vfmadd231pd zmm31, zmm30, QWORD PTR [24+rax+rsi*8]{1to8} #164.9 c245 stall 2
        vmovupd   ZMMWORD PTR [rdi+r15*8]{k2}, zmm31            #164.9 c251 stall 2
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r10+r15*8]          #164.9 c251
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r14+r15*8]          #164.40 c257 stall 2
        vfmadd231pd zmm5, zmm4, QWORD PTR [24+rax+rbx*8]{1to8}  #164.9 c263 stall 2
        vmovupd   ZMMWORD PTR [r10+r15*8]{k2}, zmm5             #164.9 c269 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [r13+r15*8]          #164.9 c269
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r14+r15*8]          #164.40 c275 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [24+rax+rdx*8]{1to8}  #164.9 c281 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8]{k2}, zmm7             #164.9 c287 stall 2
        add       r15, 8                                        #162.5 c287
        cmp       r15, QWORD PTR [496+rsp]                      #162.5[spill] c289
        jb        ..B7.21       # Prob 82%                      #162.5 c291
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B7.22:                        # Preds ..B7.21
                                # Execution count [2.78e+01]
        mov       r13d, DWORD PTR [488+rsp]                     #[spill] c1
        mov       ebx, DWORD PTR [344+rsp]                      #[spill] c1
        mov       edx, DWORD PTR [480+rsp]                      #[spill] c5 stall 1
        mov       r10d, DWORD PTR [472+rsp]                     #[spill] c5
        mov       r9d, DWORD PTR [464+rsp]                      #[spill] c9 stall 1
        mov       rdi, QWORD PTR [216+rsp]                      #[spill] c9
        cmp       ebx, r13d                                     #162.5 c9
        je        ..B7.31       # Prob 10%                      #162.5 c11
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
..B7.23:                        # Preds ..B7.22 ..B7.19 ..B7.84
                                # Execution count [0.00e+00]
        lea       ecx, DWORD PTR [16+r13]                       #162.5 c1
        cmp       edx, ecx                                      #162.5 c3
        jl        ..B7.27       # Prob 50%                      #162.5 c5
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
..B7.24:                        # Preds ..B7.23
                                # Execution count [2.78e+01]
        mov       r8d, DWORD PTR [280+rsp]                      #164.40[spill] c1
        mov       r12d, r10d                                    #164.40 c1
        mov       esi, DWORD PTR [272+rsp]                      #164.40[spill] c1
        movsxd    r13, r13d                                     #162.5 c1
        sub       r12d, ebx                                     #164.40 c3
        mov       r15d, DWORD PTR [296+rsp]                     #164.25[spill] c5
        lea       r11d, DWORD PTR [r12+rbx*4]                   #164.40 c5
        lea       ecx, DWORD PTR [r8+r10]                       #164.40 c7
        movsxd    r11, r11d                                     #164.40 c7
        movsxd    rcx, ecx                                      #164.40 c9
        lea       r12, QWORD PTR [rdi+r11*8]                    #164.40 c9
        lea       r14d, DWORD PTR [rsi+r10]                     #164.40 c9
        mov       esi, DWORD PTR [288+rsp]                      #164.25[spill] c11
        lea       r11, QWORD PTR [rdi+rcx*8]                    #164.40 c11
        movsxd    r14, r14d                                     #164.40 c11
        lea       ecx, DWORD PTR [r15+r9*4]                     #164.25 c13
        mov       r15d, DWORD PTR [256+rsp]                     #164.25[spill] c15
        movsxd    rcx, ecx                                      #164.25 c15
        lea       r8, QWORD PTR [rdi+r14*8]                     #164.40 c15
        vbroadcastsd zmm16, QWORD PTR [rax+rcx*8]               #164.25 c17
        vbroadcastsd zmm15, QWORD PTR [8+rax+rcx*8]             #164.25 c19
        vbroadcastsd zmm14, QWORD PTR [16+rax+rcx*8]            #164.25 c23 stall 1
        vbroadcastsd zmm13, QWORD PTR [24+rax+rcx*8]            #164.25 c25
        lea       r14d, DWORD PTR [rsi+r9*4]                    #164.25 c29 stall 1
        lea       ecx, DWORD PTR [r15+r9*4]                     #164.25 c31
        mov       esi, DWORD PTR [264+rsp]                      #164.25[spill] c31
        movsxd    r14, r14d                                     #164.25 c31
        mov       r15d, DWORD PTR [248+rsp]                     #164.40[spill] c33
        movsxd    rcx, ecx                                      #164.25 c33
        vbroadcastsd zmm12, QWORD PTR [rax+r14*8]               #164.25 c35
        vbroadcastsd zmm11, QWORD PTR [8+rax+r14*8]             #164.25 c37
        vbroadcastsd zmm10, QWORD PTR [16+rax+r14*8]            #164.25 c41 stall 1
        vbroadcastsd zmm9, QWORD PTR [24+rax+r14*8]             #164.25 c43
        vbroadcastsd zmm8, QWORD PTR [rax+rcx*8]                #164.25 c47 stall 1
        vbroadcastsd zmm7, QWORD PTR [8+rax+rcx*8]              #164.25 c49
        vbroadcastsd zmm6, QWORD PTR [16+rax+rcx*8]             #164.25 c53 stall 1
        vbroadcastsd zmm5, QWORD PTR [24+rax+rcx*8]             #164.25 c55
        lea       r14d, DWORD PTR [rsi+r9*4]                    #164.25 c59 stall 1
        lea       ecx, DWORD PTR [r15+r10]                      #164.40 c61
        movsxd    r14, r14d                                     #164.25 c61
        mov       r15, QWORD PTR [400+rsp]                      #162.5[spill] c61
        movsxd    rcx, ecx                                      #164.40 c63
        vbroadcastsd zmm4, QWORD PTR [rax+r14*8]                #164.25 c63
        vbroadcastsd zmm3, QWORD PTR [8+rax+r14*8]              #164.25 c65
        vbroadcastsd zmm2, QWORD PTR [16+rax+r14*8]             #164.25 c69 stall 1
        vbroadcastsd zmm17, QWORD PTR [24+rax+r14*8]            #164.25 c71
        lea       rsi, QWORD PTR [rdi+rcx*8]                    #164.40 c75 stall 1
        movsxd    rcx, edx                                      #162.5 c75
        mov       rax, QWORD PTR [376+rsp]                      #162.5[spill] c77
        mov       rdi, QWORD PTR [384+rsp]                      #162.5[spill] c77
        mov       r14, QWORD PTR [392+rsp]                      #162.5[spill] c81 stall 1
                                # LOE rax rcx rsi rdi r8 r11 r12 r13 r14 r15 edx ebx r9d r10d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17
..B7.25:                        # Preds ..B7.25 ..B7.24
                                # Execution count [1.54e+02]
        vmovups   zmm18, ZMMWORD PTR [rdi+r13*8]                #164.9 c1
        vmovups   zmm19, ZMMWORD PTR [64+rdi+r13*8]             #164.9 c1
        vfmadd231pd zmm18, zmm16, ZMMWORD PTR [rsi+r13*8]       #164.9 c7 stall 2
        vmovupd   ZMMWORD PTR [rdi+r13*8], zmm18                #164.9 c13 stall 2
        vfmadd231pd zmm19, zmm16, ZMMWORD PTR [64+rsi+r13*8]    #164.9 c13
        vmovupd   ZMMWORD PTR [64+rdi+r13*8], zmm19             #164.9 c19 stall 2
        vmovups   zmm20, ZMMWORD PTR [rax+r13*8]                #164.9 c19
        vmovups   zmm21, ZMMWORD PTR [64+rax+r13*8]             #164.9 c25 stall 2
        vfmadd231pd zmm20, zmm12, ZMMWORD PTR [rsi+r13*8]       #164.9 c25
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm20                #164.9 c31 stall 2
        vfmadd231pd zmm21, zmm12, ZMMWORD PTR [64+rsi+r13*8]    #164.9 c31
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm21             #164.9 c37 stall 2
        vmovups   zmm22, ZMMWORD PTR [r14+r13*8]                #164.9 c37
        vmovups   zmm23, ZMMWORD PTR [64+r14+r13*8]             #164.9 c43 stall 2
        vfmadd231pd zmm22, zmm8, ZMMWORD PTR [rsi+r13*8]        #164.9 c43
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm22                #164.9 c49 stall 2
        vfmadd231pd zmm23, zmm8, ZMMWORD PTR [64+rsi+r13*8]     #164.9 c49
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm23             #164.9 c55 stall 2
        vmovups   zmm24, ZMMWORD PTR [rsi+r13*8]                #164.40 c55
        vmovups   zmm25, ZMMWORD PTR [64+rsi+r13*8]             #164.40 c61 stall 2
        vfmadd213pd zmm24, zmm4, ZMMWORD PTR [r15+r13*8]        #164.9 c61
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm24                #164.9 c67 stall 2
        vfmadd213pd zmm25, zmm4, ZMMWORD PTR [64+r15+r13*8]     #164.9 c67
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm25             #164.9 c73 stall 2
        vmovups   zmm26, ZMMWORD PTR [rdi+r13*8]                #164.9 c73
        vmovups   zmm27, ZMMWORD PTR [64+rdi+r13*8]             #164.9 c79 stall 2
        vfmadd231pd zmm26, zmm15, ZMMWORD PTR [r11+r13*8]       #164.9 c79
        vmovupd   ZMMWORD PTR [rdi+r13*8], zmm26                #164.9 c85 stall 2
        vfmadd231pd zmm27, zmm15, ZMMWORD PTR [64+r11+r13*8]    #164.9 c85
        vmovupd   ZMMWORD PTR [64+rdi+r13*8], zmm27             #164.9 c91 stall 2
        vmovups   zmm28, ZMMWORD PTR [rax+r13*8]                #164.9 c91
        vmovups   zmm29, ZMMWORD PTR [64+rax+r13*8]             #164.9 c97 stall 2
        vfmadd231pd zmm28, zmm11, ZMMWORD PTR [r11+r13*8]       #164.9 c97
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm28                #164.9 c103 stall 2
        vfmadd231pd zmm29, zmm11, ZMMWORD PTR [64+r11+r13*8]    #164.9 c103
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm29             #164.9 c109 stall 2
        vmovups   zmm30, ZMMWORD PTR [r14+r13*8]                #164.9 c109
        vmovups   zmm31, ZMMWORD PTR [64+r14+r13*8]             #164.9 c115 stall 2
        .byte     15                                            #164.9 c115
        .byte     31                                            #164.9 c115
        .byte     64                                            #164.9 c115
        .byte     0                                             #164.9 c115
        vfmadd231pd zmm30, zmm7, ZMMWORD PTR [r11+r13*8]        #164.9 c115
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm30                #164.9 c121 stall 2
        vfmadd231pd zmm31, zmm7, ZMMWORD PTR [64+r11+r13*8]     #164.9 c121
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm31             #164.9 c127 stall 2
        vmovups   zmm18, ZMMWORD PTR [r11+r13*8]                #164.40 c127
        vmovups   zmm19, ZMMWORD PTR [64+r11+r13*8]             #164.40 c133 stall 2
        vfmadd213pd zmm18, zmm3, ZMMWORD PTR [r15+r13*8]        #164.9 c133
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm18                #164.9 c139 stall 2
        vfmadd213pd zmm19, zmm3, ZMMWORD PTR [64+r15+r13*8]     #164.9 c139
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm19             #164.9 c145 stall 2
        vmovups   zmm20, ZMMWORD PTR [rdi+r13*8]                #164.9 c145
        vmovups   zmm21, ZMMWORD PTR [64+rdi+r13*8]             #164.9 c151 stall 2
        vfmadd231pd zmm20, zmm14, ZMMWORD PTR [r8+r13*8]        #164.9 c151
        vmovupd   ZMMWORD PTR [rdi+r13*8], zmm20                #164.9 c157 stall 2
        vfmadd231pd zmm21, zmm14, ZMMWORD PTR [64+r8+r13*8]     #164.9 c157
        vmovupd   ZMMWORD PTR [64+rdi+r13*8], zmm21             #164.9 c163 stall 2
        vmovups   zmm22, ZMMWORD PTR [rax+r13*8]                #164.9 c163
        vmovups   zmm23, ZMMWORD PTR [64+rax+r13*8]             #164.9 c169 stall 2
        vfmadd231pd zmm22, zmm10, ZMMWORD PTR [r8+r13*8]        #164.9 c169
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm22                #164.9 c175 stall 2
        vfmadd231pd zmm23, zmm10, ZMMWORD PTR [64+r8+r13*8]     #164.9 c175
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm23             #164.9 c181 stall 2
        vmovups   zmm24, ZMMWORD PTR [r14+r13*8]                #164.9 c181
        vmovups   zmm25, ZMMWORD PTR [64+r14+r13*8]             #164.9 c187 stall 2
        vfmadd231pd zmm24, zmm6, ZMMWORD PTR [r8+r13*8]         #164.9 c187
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm24                #164.9 c193 stall 2
        vfmadd231pd zmm25, zmm6, ZMMWORD PTR [64+r8+r13*8]      #164.9 c193
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm25             #164.9 c199 stall 2
        vmovups   zmm26, ZMMWORD PTR [r8+r13*8]                 #164.40 c199
        vmovups   zmm27, ZMMWORD PTR [64+r8+r13*8]              #164.40 c205 stall 2
        vfmadd213pd zmm26, zmm2, ZMMWORD PTR [r15+r13*8]        #164.9 c205
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm26                #164.9 c211 stall 2
        vfmadd213pd zmm27, zmm2, ZMMWORD PTR [64+r15+r13*8]     #164.9 c211
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm27             #164.9 c217 stall 2
        vmovups   zmm28, ZMMWORD PTR [rdi+r13*8]                #164.9 c217
        vmovups   zmm29, ZMMWORD PTR [64+rdi+r13*8]             #164.9 c223 stall 2
        .byte     15                                            #164.9 c223
        .byte     31                                            #164.9 c223
        .byte     0                                             #164.9 c223
        vfmadd231pd zmm28, zmm13, ZMMWORD PTR [r12+r13*8]       #164.9 c223
        vmovupd   ZMMWORD PTR [rdi+r13*8], zmm28                #164.9 c229 stall 2
        vfmadd231pd zmm29, zmm13, ZMMWORD PTR [64+r12+r13*8]    #164.9 c229
        vmovupd   ZMMWORD PTR [64+rdi+r13*8], zmm29             #164.9 c235 stall 2
        vmovups   zmm30, ZMMWORD PTR [rax+r13*8]                #164.9 c235
        vmovups   zmm28, ZMMWORD PTR [64+rax+r13*8]             #164.9 c241 stall 2
        vfmadd231pd zmm30, zmm9, ZMMWORD PTR [r12+r13*8]        #164.9 c241
        vmovupd   ZMMWORD PTR [rax+r13*8], zmm30                #164.9 c247 stall 2
        vfmadd231pd zmm28, zmm9, ZMMWORD PTR [64+r12+r13*8]     #164.9 c247
        vmovupd   ZMMWORD PTR [64+rax+r13*8], zmm28             #164.9 c253 stall 2
        vmovups   zmm29, ZMMWORD PTR [r14+r13*8]                #164.9 c253
        vmovups   zmm18, ZMMWORD PTR [64+r14+r13*8]             #164.9 c259 stall 2
        vfmadd231pd zmm29, zmm5, ZMMWORD PTR [r12+r13*8]        #164.9 c259
        vmovupd   ZMMWORD PTR [r14+r13*8], zmm29                #164.9 c265 stall 2
        vfmadd231pd zmm18, zmm5, ZMMWORD PTR [64+r12+r13*8]     #164.9 c265
        vmovupd   ZMMWORD PTR [64+r14+r13*8], zmm18             #164.9 c271 stall 2
        vmovups   zmm19, ZMMWORD PTR [r12+r13*8]                #164.40 c271
        vmovups   zmm20, ZMMWORD PTR [64+r12+r13*8]             #164.40 c277 stall 2
        vfmadd213pd zmm19, zmm17, ZMMWORD PTR [r15+r13*8]       #164.9 c277
        vmovupd   ZMMWORD PTR [r15+r13*8], zmm19                #164.9 c283 stall 2
        vfmadd213pd zmm20, zmm17, ZMMWORD PTR [64+r15+r13*8]    #164.9 c283
        vmovupd   ZMMWORD PTR [64+r15+r13*8], zmm20             #164.9 c289 stall 2
        add       r13, 16                                       #162.5 c289
        cmp       r13, rcx                                      #162.5 c291
        jb        ..B7.25       # Prob 82%                      #162.5 c293
                                # LOE rax rcx rsi rdi r8 r11 r12 r13 r14 r15 edx ebx r9d r10d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17
..B7.26:                        # Preds ..B7.25
                                # Execution count [2.78e+01]
        mov       rax, QWORD PTR [208+rsp]                      #[spill] c1
        mov       rdi, QWORD PTR [216+rsp]                      #[spill] c1
                                # LOE rax rdi edx ebx r9d r10d ymm0 ymm1
..B7.27:                        # Preds ..B7.26 ..B7.23 ..B7.83
                                # Execution count [2.78e+01]
        lea       ecx, DWORD PTR [1+rdx]                        #162.5 c1
        cmp       ecx, ebx                                      #162.5 c3
        ja        ..B7.31       # Prob 50%                      #162.5 c5
                                # LOE rax rdi edx ebx r9d r10d ymm0 ymm1
..B7.28:                        # Preds ..B7.27
                                # Execution count [2.78e+01]
        mov       ecx, 255                                      #162.5 c1
        mov       DWORD PTR [472+rsp], r10d                     #162.5[spill] c1
        mov       r14d, DWORD PTR [288+rsp]                     #164.25[spill] c1
        mov       DWORD PTR [464+rsp], r9d                      #162.5[spill] c3
        kmovw     k1, ecx                                       #162.5 c3
        mov       DWORD PTR [344+rsp], ebx                      #162.5[spill] c5
        mov       ecx, DWORD PTR [296+rsp]                      #164.25[spill] c5
        vmovdqa   ymm3, ymm0                                    #162.5 c5
        xor       esi, esi                                      #162.5 c5
        mov       r13d, DWORD PTR [256+rsp]                     #164.25[spill] c7
        lea       r15d, DWORD PTR [rcx+r9*4]                    #164.25 c9
        lea       ecx, DWORD PTR [r14+r9*4]                     #164.25 c11
        mov       r14d, r10d                                    #164.40 c11
        movsxd    r15, r15d                                     #164.25 c11
        mov       QWORD PTR [424+rsp], r15                      #164.25[spill] c13
        sub       r14d, ebx                                     #164.40 c13
        lea       r12d, DWORD PTR [r13+r9*4]                    #164.25 c13
        mov       r15d, ebx                                     #162.5 c13
        lea       r13d, DWORD PTR [r14+rbx*4]                   #164.40 c15
        mov       r11d, DWORD PTR [264+rsp]                     #164.25[spill] c15
        movsxd    r12, r12d                                     #164.25 c15
        mov       QWORD PTR [432+rsp], r12                      #164.25[spill] c17
        movsxd    r13, r13d                                     #164.40 c17
        sub       r15d, edx                                     #162.5 c17
        movsxd    rdx, edx                                      #164.9 c19
        lea       r12, QWORD PTR [rdi+r13*8]                    #164.40 c19
        lea       r8d, DWORD PTR [r11+r9*4]                     #164.25 c19
        vmovd     xmm2, r15d                                    #162.5 c19
        movsxd    rcx, ecx                                      #164.25 c19
        lea       r15, QWORD PTR [r12+rdx*8]                    #164.40 c21
        mov       r11d, DWORD PTR [272+rsp]                     #164.40[spill] c21
        movsxd    r8, r8d                                       #164.25 c21
        mov       QWORD PTR [448+rsp], r8                       #164.25[spill] c23
        vpbroadcastd ymm2, xmm2                                 #162.5 c23
        mov       r12d, DWORD PTR [280+rsp]                     #164.40[spill] c25
        lea       r14d, DWORD PTR [r11+r10]                     #164.40 c25
        movsxd    r14, r14d                                     #164.40 c27
        mov       r9, QWORD PTR [432+rsp]                       #162.5[spill] c27
        lea       r11d, DWORD PTR [r12+r10]                     #164.40 c29
        movsxd    r11, r11d                                     #164.40 c31
        lea       r13, QWORD PTR [rdi+r14*8]                    #164.40 c31
        mov       r12, QWORD PTR [400+rsp]                      #164.9[spill] c31
        lea       r8, QWORD PTR [rdi+r11*8]                     #164.40 c33
        mov       r11, QWORD PTR [392+rsp]                      #164.9[spill] c35
        lea       r14, QWORD PTR [r13+rdx*8]                    #164.40 c35
        lea       r13, QWORD PTR [r8+rdx*8]                     #164.40 c37
        mov       QWORD PTR [440+rsp], r13                      #164.40[spill] c39
        mov       r8, QWORD PTR [376+rsp]                       #164.9[spill] c39
        lea       r13, QWORD PTR [r12+rdx*8]                    #164.9 c41
        lea       r12, QWORD PTR [r11+rdx*8]                    #164.9 c43
        lea       r11, QWORD PTR [r8+rdx*8]                     #164.9 c43
        mov       QWORD PTR [456+rsp], r11                      #164.9[spill] c45
        mov       r8d, DWORD PTR [248+rsp]                      #164.40[spill] c45
        mov       rbx, QWORD PTR [440+rsp]                      #162.5[spill] c47
        lea       r11d, DWORD PTR [r8+r10]                      #164.40 c49
        movsxd    r11, r11d                                     #164.40 c51
        mov       r10, QWORD PTR [424+rsp]                      #162.5[spill] c51
        lea       r8, QWORD PTR [rdi+r11*8]                     #164.40 c53
        lea       r11, QWORD PTR [r8+rdx*8]                     #164.40 c55
        mov       r8, QWORD PTR [384+rsp]                       #164.9[spill] c55
        mov       rdi, QWORD PTR [448+rsp]                      #162.5[spill] c57
        lea       r8, QWORD PTR [r8+rdx*8]                      #164.9 c59
        neg       rdx                                           #162.5 c59
        add       rdx, QWORD PTR [240+rsp]                      #162.5[spill] c61
        mov       QWORD PTR [504+rsp], rdx                      #162.5[spill] c63
        mov       rdx, QWORD PTR [456+rsp]                      #162.5[spill] c63
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B7.29:                        # Preds ..B7.29 ..B7.28
                                # Execution count [1.54e+02]
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #162.5 c3
        vpaddd    ymm3, ymm3, ymm1                              #162.5 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r8+rsi*8]           #164.9 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r11+rsi*8]          #164.40 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [rax+r10*8]{1to8}     #164.9 c11 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm5              #164.9 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rdx+rsi*8]          #164.9 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r11+rsi*8]          #164.40 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [rax+rcx*8]{1to8}     #164.9 c29 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm7             #164.9 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [r12+rsi*8]          #164.9 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [r11+rsi*8]          #164.40 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [rax+r9*8]{1to8}      #164.9 c47 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm9             #164.9 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [r13+rsi*8]         #164.9 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [r11+rsi*8]         #164.40 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [rax+rdi*8]{1to8}   #164.9 c65 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm11            #164.9 c71 stall 2
        vmovupd   zmm13{k2}{z}, ZMMWORD PTR [r8+rsi*8]          #164.9 c71
        vmovupd   zmm12{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #164.40 c77 stall 2
        vfmadd231pd zmm13, zmm12, QWORD PTR [8+rax+r10*8]{1to8} #164.9 c83 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm13             #164.9 c89 stall 2
        vmovupd   zmm15{k2}{z}, ZMMWORD PTR [rdx+rsi*8]         #164.9 c89
        vmovupd   zmm14{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #164.40 c95 stall 2
        vfmadd231pd zmm15, zmm14, QWORD PTR [8+rax+rcx*8]{1to8} #164.9 c101 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm15            #164.9 c107 stall 2
        vmovupd   zmm17{k2}{z}, ZMMWORD PTR [r12+rsi*8]         #164.9 c107
        vmovupd   zmm16{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #164.40 c113 stall 2
        vfmadd231pd zmm17, zmm16, QWORD PTR [8+rax+r9*8]{1to8}  #164.9 c119 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm17            #164.9 c125 stall 2
        vmovupd   zmm19{k2}{z}, ZMMWORD PTR [r13+rsi*8]         #164.9 c125
        vmovupd   zmm18{k2}{z}, ZMMWORD PTR [rbx+rsi*8]         #164.40 c131 stall 2
        vfmadd231pd zmm19, zmm18, QWORD PTR [8+rax+rdi*8]{1to8} #164.9 c137 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm19            #164.9 c143 stall 2
        vmovupd   zmm21{k2}{z}, ZMMWORD PTR [r8+rsi*8]          #164.9 c143
        vmovupd   zmm20{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #164.40 c149 stall 2
        vfmadd231pd zmm21, zmm20, QWORD PTR [16+rax+r10*8]{1to8} #164.9 c155 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm21             #164.9 c161 stall 2
        vmovupd   zmm23{k2}{z}, ZMMWORD PTR [rdx+rsi*8]         #164.9 c161
        vmovupd   zmm22{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #164.40 c167 stall 2
        vfmadd231pd zmm23, zmm22, QWORD PTR [16+rax+rcx*8]{1to8} #164.9 c173 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm23            #164.9 c179 stall 2
        vmovupd   zmm25{k2}{z}, ZMMWORD PTR [r12+rsi*8]         #164.9 c179
        vmovupd   zmm24{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #164.40 c185 stall 2
        vfmadd231pd zmm25, zmm24, QWORD PTR [16+rax+r9*8]{1to8} #164.9 c191 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm25            #164.9 c197 stall 2
        .byte     144                                           #164.9 c197
        vmovupd   zmm27{k2}{z}, ZMMWORD PTR [r13+rsi*8]         #164.9 c197
        vmovupd   zmm26{k2}{z}, ZMMWORD PTR [r14+rsi*8]         #164.40 c203 stall 2
        vfmadd231pd zmm27, zmm26, QWORD PTR [16+rax+rdi*8]{1to8} #164.9 c209 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm27            #164.9 c215 stall 2
        vmovupd   zmm29{k2}{z}, ZMMWORD PTR [r8+rsi*8]          #164.9 c215
        vmovupd   zmm28{k2}{z}, ZMMWORD PTR [r15+rsi*8]         #164.40 c221 stall 2
        vfmadd231pd zmm29, zmm28, QWORD PTR [24+rax+r10*8]{1to8} #164.9 c227 stall 2
        vmovupd   ZMMWORD PTR [r8+rsi*8]{k2}, zmm29             #164.9 c233 stall 2
        vmovupd   zmm31{k2}{z}, ZMMWORD PTR [rdx+rsi*8]         #164.9 c233
        vmovupd   zmm30{k2}{z}, ZMMWORD PTR [r15+rsi*8]         #164.40 c239 stall 2
        vfmadd231pd zmm31, zmm30, QWORD PTR [24+rax+rcx*8]{1to8} #164.9 c245 stall 2
        vmovupd   ZMMWORD PTR [rdx+rsi*8]{k2}, zmm31            #164.9 c251 stall 2
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r12+rsi*8]          #164.9 c251
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r15+rsi*8]          #164.40 c257 stall 2
        vfmadd231pd zmm5, zmm4, QWORD PTR [24+rax+r9*8]{1to8}   #164.9 c263 stall 2
        vmovupd   ZMMWORD PTR [r12+rsi*8]{k2}, zmm5             #164.9 c269 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [r13+rsi*8]          #164.9 c269
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [r15+rsi*8]          #164.40 c275 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [24+rax+rdi*8]{1to8}  #164.9 c281 stall 2
        vmovupd   ZMMWORD PTR [r13+rsi*8]{k2}, zmm7             #164.9 c287 stall 2
        add       rsi, 8                                        #162.5 c287
        cmp       rsi, QWORD PTR [504+rsp]                      #162.5[spill] c289
        jb        ..B7.29       # Prob 82%                      #162.5 c291
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B7.30:                        # Preds ..B7.29
                                # Execution count [2.78e+01]
        mov       r10d, DWORD PTR [472+rsp]                     #[spill] c1
        mov       r9d, DWORD PTR [464+rsp]                      #[spill] c1
        mov       ebx, DWORD PTR [344+rsp]                      #[spill] c5 stall 1
        mov       rdi, QWORD PTR [216+rsp]                      #[spill] c5
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B7.31:                        # Preds ..B7.22 ..B7.27 ..B7.30
                                # Execution count [6.94e+00]
        add       r9d, 1                                        #163.7 c1
        lea       r10d, DWORD PTR [r10+rbx*4]                   #163.7 c1
        cmp       r9d, DWORD PTR [104+rsp]                      #163.7[spill] c3
        jb        ..B7.15       # Prob 27%                      #163.7 c5
                                # LOE rax rdi ebx r9d r10d ymm0 ymm1
..B7.32:                        # Preds ..B7.31
                                # Execution count [5.00e+00]
        mov       edx, DWORD PTR [152+rsp]                      #[spill] c1
        mov       r8, QWORD PTR [88+rsp]                        #[spill] c1
        mov       ecx, 1                                        # c1
        xor       esi, esi                                      # c1
        lea       edi, DWORD PTR [1+r9*4]                       #164.9 c5 stall 1
                                # LOE rax r8 edx ecx ebx esi edi ymm0 ymm1
..B7.33:                        # Preds ..B7.32 ..B7.13
                                # Execution count [5.00e+00]
        xor       r11d, r11d                                    #163.7 c1
        mov       DWORD PTR [96+rsp], esi                       #163.7[spill] c1
        cmp       edi, ebx                                      #163.7 c1
        ja        ..B7.53       # Prob 0%                       #163.7 c3
                                # LOE rax r8 r11 edx ecx ebx esi edi ymm0 ymm1
..B7.34:                        # Preds ..B7.33
                                # Execution count [2.58e+01]
        mov       r12d, DWORD PTR [136+rsp]                     #164.9[spill] c1
        mov       DWORD PTR [152+rsp], edx                      #164.9[spill] c1
        mov       r10d, ebx                                     #164.9 c1
        mov       r9d, DWORD PTR [184+rsp]                      #164.9[spill] c3
        imul      r10d, edi                                     #164.9 c3
        mov       r13d, DWORD PTR [192+rsp]                     #164.9[spill] c5
        lea       r14d, DWORD PTR [r12+rdx]                     #164.9 c7
        sub       r10d, ebx                                     #164.40 c7
        lea       r12d, DWORD PTR [r9+r13]                      #164.9 c9
        movsxd    r14, r14d                                     #164.9 c9
        movsxd    r10, r10d                                     #163.7 c9
        movsxd    r12, r12d                                     #164.9 c11
        lea       r15, QWORD PTR [r8+r14*8]                     #164.9 c11
        mov       QWORD PTR [304+rsp], r15                      #164.9[spill] c13
        lea       r14, QWORD PTR [r8+r12*8]                     #164.9 c13
        mov       QWORD PTR [320+rsp], r14                      #164.9[spill] c15
        mov       r15d, DWORD PTR [144+rsp]                     #164.9[spill] c15
        mov       r14d, DWORD PTR [160+rsp]                     #164.25[spill] c17
        lea       r13d, DWORD PTR [r15+rdx]                     #164.9 c19
        lea       r15d, DWORD PTR [r14+rdx]                     #164.25 c21
        mov       r14d, DWORD PTR [168+rsp]                     #164.25[spill] c21
        movsxd    r13, r13d                                     #164.9 c21
        movsxd    r15, r15d                                     #164.25 c23
        lea       r9, QWORD PTR [rax+r12*8]                     #164.25 c23
        add       r14d, edx                                     #164.25 c25
        lea       r12, QWORD PTR [r8+r13*8]                     #164.9 c25
        mov       QWORD PTR [312+rsp], r12                      #164.9[spill] c27
        movsxd    r14, r14d                                     #164.25 c27
        movsxd    r13, edi                                      #164.25 c27
        lea       r12, QWORD PTR [rax+r15*8]                    #164.25 c27
        lea       r15, QWORD PTR [rax+r14*8]                    #164.25 c29
        lea       r9, QWORD PTR [r9+r13*8]                      #164.25 c29
        neg       edi                                           #160.1 c29
        lea       r14, QWORD PTR [r15+r13*8]                    #164.25 c31
        mov       QWORD PTR [368+rsp], r14                      #164.9[spill] c33
        mov       r15d, DWORD PTR [176+rsp]                     #164.25[spill] c33
        add       edi, ebx                                      #160.1 c33
        lea       r12, QWORD PTR [r12+r13*8]                    #164.25 c35
        add       edi, 1                                        #160.1 c35
        mov       DWORD PTR [200+rsp], edi                      #164.9[spill] c37
        add       r15d, edx                                     #164.25 c37
        movsxd    r15, r15d                                     #164.25 c39
        lea       r15, QWORD PTR [rax+r15*8]                    #164.25 c41
        lea       r13, QWORD PTR [r15+r13*8]                    #164.25 c43
        mov       QWORD PTR [360+rsp], r13                      #164.9[spill] c45
        mov       r15d, DWORD PTR [128+rsp]                     #164.9[spill] c45
        add       r15d, edx                                     #164.9 c49 stall 1
        mov       rdx, QWORD PTR [216+rsp]                      #164.9[spill] c49
        movsxd    r15, r15d                                     #164.9 c51
        lea       r15, QWORD PTR [r8+r15*8]                     #164.9 c53
        mov       QWORD PTR [352+rsp], r15                      #164.9[spill] c55
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B7.35:                        # Preds ..B7.51 ..B7.34
                                # Execution count [2.78e+01]
        cmp       ebx, 2257                                     #162.5 c1
        jl        ..B7.82       # Prob 10%                      #162.5 c3
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B7.36:                        # Preds ..B7.35
                                # Execution count [2.78e+01]
        lea       rdi, QWORD PTR [rdx+r10*8]                    #164.40 c1
        mov       r8, rdi                                       #162.5 c3
        and       r8, 63                                        #162.5 c5
        test      r8d, r8d                                      #162.5 c5
        je        ..B7.39       # Prob 50%                      #162.5 c7
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d ymm0 ymm1
..B7.37:                        # Preds ..B7.36
                                # Execution count [2.78e+01]
        test      r8d, 7                                        #162.5 c1
        jne       ..B7.81       # Prob 10%                      #162.5 c3
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d ymm0 ymm1
..B7.38:                        # Preds ..B7.37
                                # Execution count [0.00e+00]
        neg       r8d                                           #162.5 c1
        add       r8d, 64                                       #162.5 c3
        shr       r8d, 3                                        #162.5 c5
        cmp       ebx, r8d                                      #162.5 c7
        cmovl     r8d, ebx                                      #162.5 c9
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d ymm0 ymm1
..B7.39:                        # Preds ..B7.38 ..B7.36
                                # Execution count [2.78e+01]
        mov       r15d, ebx                                     #162.5 c1
        sub       r15d, r8d                                     #162.5 c3
        and       r15d, 15                                      #162.5 c5
        neg       r15d                                          #162.5 c7
        add       r15d, ebx                                     #162.5 c9
        cmp       r8d, 1                                        #162.5 c9
        jb        ..B7.43       # Prob 50%                      #162.5 c11
                                # LOE rdx rdi r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B7.40:                        # Preds ..B7.39
                                # Execution count [2.78e+01]
        vmovd     xmm2, r8d                                     #162.5 c1
        mov       DWORD PTR [328+rsp], r8d                      #162.5[spill] c1
        mov       eax, 255                                      #162.5 c1
        mov       QWORD PTR [336+rsp], r10                      #162.5[spill] c1
        vmovdqa   ymm3, ymm0                                    #162.5 c1
        mov       DWORD PTR [344+rsp], ebx                      #162.5[spill] c3
        vpbroadcastd ymm2, xmm2                                 #162.5 c3
        kmovw     k1, eax                                       #162.5 c3
        mov       rdx, QWORD PTR [352+rsp]                      #162.5[spill] c3
        mov       rbx, QWORD PTR [360+rsp]                      #162.5[spill] c5
        xor       eax, eax                                      #162.5 c5
        movsxd    rsi, r8d                                      #162.5 c5
        mov       r8, QWORD PTR [368+rsp]                       #162.5[spill] c7
        xor       ecx, ecx                                      #162.5 c7
        mov       r10, QWORD PTR [312+rsp]                      #162.5[spill] c9
        mov       r13, QWORD PTR [320+rsp]                      #162.5[spill] c11
        mov       r14, QWORD PTR [304+rsp]                      #162.5[spill] c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15d ymm0 ymm1 ymm3 zmm2 k1
..B7.41:                        # Preds ..B7.41 ..B7.40
                                # Execution count [1.54e+02]
        add       rax, 8                                        #162.5 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #162.5 c3
        vpaddd    ymm3, ymm3, ymm1                              #162.5 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [rcx+r10]            #164.9 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rcx+rdi]            #164.40 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [-8+r8+r11*8]{1to8}   #164.9 c11 stall 2
        vmovupd   ZMMWORD PTR [rcx+r10]{k2}, zmm5               #164.9 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rcx+rdx]            #164.9 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [rcx+rdi]            #164.40 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [-8+rbx+r11*8]{1to8}  #164.9 c29 stall 2
        vmovupd   ZMMWORD PTR [rcx+rdx]{k2}, zmm7               #164.9 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [rcx+r13]            #164.9 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [rcx+rdi]            #164.40 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [-8+r9+r11*8]{1to8}   #164.9 c47 stall 2
        vmovupd   ZMMWORD PTR [rcx+r13]{k2}, zmm9               #164.9 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [rcx+r14]           #164.9 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [rcx+rdi]           #164.40 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [-8+r12+r11*8]{1to8} #164.9 c65 stall 2
        vmovupd   ZMMWORD PTR [rcx+r14]{k2}, zmm11              #164.9 c71 stall 2
        add       rcx, 64                                       #162.5 c71
        cmp       rax, rsi                                      #162.5 c71
        jb        ..B7.41       # Prob 82%                      #162.5 c73
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15d ymm0 ymm1 ymm3 zmm2 k1
..B7.42:                        # Preds ..B7.41
                                # Execution count [2.78e+01]
        mov       r8d, DWORD PTR [328+rsp]                      #[spill] c1
        mov       ebx, DWORD PTR [344+rsp]                      #[spill] c1
        mov       r10, QWORD PTR [336+rsp]                      #[spill] c5 stall 1
        mov       rdx, QWORD PTR [216+rsp]                      #[spill] c5
        cmp       ebx, r8d                                      #162.5 c5
        je        ..B7.51       # Prob 10%                      #162.5 c7
                                # LOE rdx r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B7.43:                        # Preds ..B7.42 ..B7.39 ..B7.82
                                # Execution count [0.00e+00]
        lea       eax, DWORD PTR [16+r8]                        #162.5 c1
        cmp       r15d, eax                                     #162.5 c3
        jl        ..B7.47       # Prob 50%                      #162.5 c5
                                # LOE rdx r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B7.44:                        # Preds ..B7.43
                                # Execution count [2.78e+01]
        mov       rax, QWORD PTR [368+rsp]                      #164.25[spill] c1
        mov       rcx, QWORD PTR [360+rsp]                      #164.25[spill] c1
        movsxd    r8, r8d                                       #162.5 c1
        mov       rsi, QWORD PTR [352+rsp]                      #162.5[spill] c5 stall 1
        mov       rdi, QWORD PTR [312+rsp]                      #162.5[spill] c5
        mov       r13, QWORD PTR [320+rsp]                      #162.5[spill] c9 stall 1
        mov       r14, QWORD PTR [304+rsp]                      #162.5[spill] c9
        vbroadcastsd zmm5, QWORD PTR [-8+r12+r11*8]             #164.25 c13 stall 1
        vbroadcastsd zmm4, QWORD PTR [-8+r9+r11*8]              #164.25 c13
        vbroadcastsd zmm3, QWORD PTR [-8+rax+r11*8]             #164.25 c19 stall 2
        vbroadcastsd zmm2, QWORD PTR [-8+rcx+r11*8]             #164.25 c19
        movsxd    rax, r15d                                     #162.5 c19
        lea       rcx, QWORD PTR [rdx+r10*8]                    #164.40 c25 stall 2
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 ebx r15d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5
..B7.45:                        # Preds ..B7.45 ..B7.44
                                # Execution count [1.54e+02]
        vmovups   zmm6, ZMMWORD PTR [rdi+r8*8]                  #164.9 c1
        vmovups   zmm7, ZMMWORD PTR [64+rdi+r8*8]               #164.9 c1
        vfmadd231pd zmm6, zmm3, ZMMWORD PTR [rcx+r8*8]          #164.9 c7 stall 2
        vmovupd   ZMMWORD PTR [rdi+r8*8], zmm6                  #164.9 c13 stall 2
        vfmadd231pd zmm7, zmm3, ZMMWORD PTR [64+rcx+r8*8]       #164.9 c13
        vmovupd   ZMMWORD PTR [64+rdi+r8*8], zmm7               #164.9 c19 stall 2
        vmovups   zmm8, ZMMWORD PTR [rsi+r8*8]                  #164.9 c19
        vmovups   zmm9, ZMMWORD PTR [64+rsi+r8*8]               #164.9 c25 stall 2
        vfmadd231pd zmm8, zmm2, ZMMWORD PTR [rcx+r8*8]          #164.9 c25
        vmovupd   ZMMWORD PTR [rsi+r8*8], zmm8                  #164.9 c31 stall 2
        vfmadd231pd zmm9, zmm2, ZMMWORD PTR [64+rcx+r8*8]       #164.9 c31
        vmovupd   ZMMWORD PTR [64+rsi+r8*8], zmm9               #164.9 c37 stall 2
        vmovups   zmm10, ZMMWORD PTR [r13+r8*8]                 #164.9 c37
        vmovups   zmm11, ZMMWORD PTR [64+r13+r8*8]              #164.9 c43 stall 2
        vfmadd231pd zmm10, zmm4, ZMMWORD PTR [rcx+r8*8]         #164.9 c43
        vmovupd   ZMMWORD PTR [r13+r8*8], zmm10                 #164.9 c49 stall 2
        vfmadd231pd zmm11, zmm4, ZMMWORD PTR [64+rcx+r8*8]      #164.9 c49
        vmovupd   ZMMWORD PTR [64+r13+r8*8], zmm11              #164.9 c55 stall 2
        vmovups   zmm12, ZMMWORD PTR [rcx+r8*8]                 #164.40 c55
        vmovups   zmm13, ZMMWORD PTR [64+rcx+r8*8]              #164.40 c61 stall 2
        vfmadd213pd zmm12, zmm5, ZMMWORD PTR [r14+r8*8]         #164.9 c61
        vmovupd   ZMMWORD PTR [r14+r8*8], zmm12                 #164.9 c67 stall 2
        vfmadd213pd zmm13, zmm5, ZMMWORD PTR [64+r14+r8*8]      #164.9 c67
        vmovupd   ZMMWORD PTR [64+r14+r8*8], zmm13              #164.9 c73 stall 2
        add       r8, 16                                        #162.5 c73
        cmp       r8, rax                                       #162.5 c75
        jb        ..B7.45       # Prob 82%                      #162.5 c77
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 ebx r15d ymm0 ymm1 zmm2 zmm3 zmm4 zmm5
..B7.47:                        # Preds ..B7.45 ..B7.43 ..B7.81
                                # Execution count [2.78e+01]
        lea       eax, DWORD PTR [1+r15]                        #162.5 c1
        cmp       eax, ebx                                      #162.5 c3
        ja        ..B7.51       # Prob 50%                      #162.5 c5
                                # LOE rdx r9 r10 r11 r12 ebx r15d ymm0 ymm1
..B7.48:                        # Preds ..B7.47
                                # Execution count [2.78e+01]
        mov       r14d, ebx                                     #162.5 c1
        mov       DWORD PTR [344+rsp], ebx                      #162.5[spill] c1
        mov       r13, QWORD PTR [304+rsp]                      #164.9[spill] c1
        mov       eax, 255                                      #162.5 c1
        vmovdqa   ymm3, ymm0                                    #162.5 c1
        mov       r8, QWORD PTR [320+rsp]                       #164.9[spill] c3
        sub       r14d, r15d                                    #162.5 c3
        movsxd    r15, r15d                                     #164.9 c3
        mov       rdi, QWORD PTR [352+rsp]                      #164.9[spill] c5
        vmovd     xmm2, r14d                                    #162.5 c5
        kmovw     k1, eax                                       #162.5 c5
        xor       eax, eax                                      #162.5 c5
        mov       rsi, QWORD PTR [312+rsp]                      #164.9[spill] c7
        vpbroadcastd ymm2, xmm2                                 #162.5 c7
        lea       rcx, QWORD PTR [rdx+r10*8]                    #164.40 c9
        lea       r14, QWORD PTR [r13+r15*8]                    #164.9 c11
        lea       r13, QWORD PTR [r8+r15*8]                     #164.9 c11
        lea       r8, QWORD PTR [rdi+r15*8]                     #164.9 c13
        lea       rdi, QWORD PTR [rcx+r15*8]                    #164.40 c13
        lea       rcx, QWORD PTR [rsi+r15*8]                    #164.9 c15
        neg       r15                                           #162.5 c15
        mov       rdx, QWORD PTR [360+rsp]                      #162.5[spill] c15
        xor       esi, esi                                      #162.5 c15
        mov       rbx, QWORD PTR [368+rsp]                      #162.5[spill] c17
        add       r15, QWORD PTR [240+rsp]                      #162.5[spill] c19
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B7.49:                        # Preds ..B7.49 ..B7.48
                                # Execution count [1.54e+02]
        add       rax, 8                                        #162.5 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #162.5 c3
        vpaddd    ymm3, ymm3, ymm1                              #162.5 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [rsi+rcx]            #164.9 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [rsi+rdi]            #164.40 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [-8+rbx+r11*8]{1to8}  #164.9 c11 stall 2
        vmovupd   ZMMWORD PTR [rsi+rcx]{k2}, zmm5               #164.9 c17 stall 2
        vmovupd   zmm7{k2}{z}, ZMMWORD PTR [rsi+r8]             #164.9 c17
        vmovupd   zmm6{k2}{z}, ZMMWORD PTR [rsi+rdi]            #164.40 c23 stall 2
        vfmadd231pd zmm7, zmm6, QWORD PTR [-8+rdx+r11*8]{1to8}  #164.9 c29 stall 2
        vmovupd   ZMMWORD PTR [rsi+r8]{k2}, zmm7                #164.9 c35 stall 2
        vmovupd   zmm9{k2}{z}, ZMMWORD PTR [rsi+r13]            #164.9 c35
        vmovupd   zmm8{k2}{z}, ZMMWORD PTR [rsi+rdi]            #164.40 c41 stall 2
        vfmadd231pd zmm9, zmm8, QWORD PTR [-8+r9+r11*8]{1to8}   #164.9 c47 stall 2
        vmovupd   ZMMWORD PTR [rsi+r13]{k2}, zmm9               #164.9 c53 stall 2
        vmovupd   zmm11{k2}{z}, ZMMWORD PTR [rsi+r14]           #164.9 c53
        vmovupd   zmm10{k2}{z}, ZMMWORD PTR [rsi+rdi]           #164.40 c59 stall 2
        vfmadd231pd zmm11, zmm10, QWORD PTR [-8+r12+r11*8]{1to8} #164.9 c65 stall 2
        vmovupd   ZMMWORD PTR [rsi+r14]{k2}, zmm11              #164.9 c71 stall 2
        add       rsi, 64                                       #162.5 c71
        cmp       rax, r15                                      #162.5 c71
        jb        ..B7.49       # Prob 82%                      #162.5 c73
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ymm0 ymm1 ymm3 zmm2 k1
..B7.50:                        # Preds ..B7.49
                                # Execution count [2.78e+01]
        mov       ebx, DWORD PTR [344+rsp]                      #[spill] c1
        mov       rdx, QWORD PTR [216+rsp]                      #[spill] c1
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B7.51:                        # Preds ..B7.42 ..B7.47 ..B7.50
                                # Execution count [6.94e+00]
        mov       eax, DWORD PTR [96+rsp]                       #163.7[spill] c1
        add       r10, QWORD PTR [240+rsp]                      #163.7[spill] c1
        add       r11, 1                                        #163.7 c1
        add       eax, 1                                        #163.7 c5 stall 1
        mov       DWORD PTR [96+rsp], eax                       #163.7[spill] c7
        cmp       eax, DWORD PTR [200+rsp]                      #163.7[spill] c7
        jb        ..B7.35       # Prob 27%                      #163.7 c9
                                # LOE rdx r9 r10 r11 r12 ebx ymm0 ymm1
..B7.52:                        # Preds ..B7.51
                                # Execution count [5.00e+00]
        mov       edx, DWORD PTR [152+rsp]                      #[spill] c1
        mov       r8, QWORD PTR [88+rsp]                        #[spill] c1
        mov       ecx, 1                                        # c1
        xor       esi, esi                                      # c1
        mov       rax, QWORD PTR [208+rsp]                      #[spill] c5 stall 1
                                # LOE rax r8 edx ecx ebx esi ymm0 ymm1
..B7.53:                        # Preds ..B7.33 ..B7.52
                                # Execution count [1.25e+00]
        mov       r10d, DWORD PTR [192+rsp]                     #161.3[spill] c1
        mov       edi, DWORD PTR [256+rsp]                      #161.3[spill] c1
        lea       r11d, DWORD PTR [r10+rbx*4]                   #161.3 c5 stall 1
        mov       DWORD PTR [192+rsp], r11d                     #161.3[spill] c7
        mov       r10d, DWORD PTR [48+rsp]                      #161.3[spill] c7
        lea       r9d, DWORD PTR [rdi+rbx*4]                    #161.3 c9
        mov       DWORD PTR [256+rsp], r9d                      #161.3[spill] c11
        mov       r12d, DWORD PTR [288+rsp]                     #161.3[spill] c11
        add       r10d, 1                                       #161.3 c11
        mov       DWORD PTR [48+rsp], r10d                      #161.3[spill] c13
        mov       r14d, DWORD PTR [296+rsp]                     #161.3[spill] c15
        mov       edi, DWORD PTR [264+rsp]                      #161.3[spill] c15
        lea       r13d, DWORD PTR [r12+rbx*4]                   #161.3 c19 stall 1
        mov       DWORD PTR [288+rsp], r13d                     #161.3[spill] c21
        lea       r15d, DWORD PTR [r14+rbx*4]                   #161.3 c21
        mov       DWORD PTR [296+rsp], r15d                     #161.3[spill] c23
        lea       r9d, DWORD PTR [rdi+rbx*4]                    #161.3 c23
        mov       DWORD PTR [264+rsp], r9d                      #161.3[spill] c25
        lea       edx, DWORD PTR [rdx+rbx*4]                    #161.3 c25
        cmp       r10d, DWORD PTR [40+rsp]                      #161.3[spill] c27
        jb        ..B7.13       # Prob 27%                      #161.3 c29
                                # LOE rax r8 edx ecx ebx esi r10d ymm0 ymm1
..B7.54:                        # Preds ..B7.53
                                # Execution count [9.00e-01]
        mov       edx, r10d                                     #162.16 c1
        mov       eax, DWORD PTR [56+rsp]                       #[spill] c1
        lea       edx, DWORD PTR [1+rdx*4]                      #162.16 c3
                                # LOE eax edx ebx
..B7.55:                        # Preds ..B7.54 ..B7.11
                                # Execution count [9.00e-01]
        xor       r13d, r13d                                    #161.3 c1
        xor       r14d, r14d                                    #161.3 c1
        cmp       edx, eax                                      #161.3 c3
        ja        ..B7.77       # Prob 0%                       #161.3 c5
                                # LOE eax edx ebx r13d r14d
..B7.56:                        # Preds ..B7.55
                                # Execution count [4.65e+00]
        mov       r12d, ebx                                     #162.16 c1
        sub       eax, edx                                      #160.1 c1
        imul      r12d, edx                                     #162.16 c3
        mov       edx, DWORD PTR [64+rsp]                       #164.9[spill] c3
        mov       ecx, 8                                        #162.5 c3
        vmovd     xmm0, ecx                                     #162.5 c5
        add       eax, 1                                        #160.1 c5
        mov       DWORD PTR [56+rsp], eax                       #162.5[spill] c7
        add       edx, -1                                       #164.9 c7
        vpbroadcastd ymm1, xmm0                                 #162.5 c7
        vmovdqu   ymm0, YMMWORD PTR .L_2il0floatpacket.19[rip]  #162.5 c7
        imul      edx, ebx                                      #164.9 c9
        mov       rcx, QWORD PTR [208+rsp]                      #162.5[spill] c9
        lea       r11d, DWORD PTR [rdx+r12]                     #164.9 c13 stall 1
        add       r12d, edx                                     #164.25 c13
        mov       edx, ebx                                      #162.5 c13
        and       edx, -8                                       #162.5 c15
        mov       DWORD PTR [40+rsp], edx                       #162.5[spill] c17
        mov       rdx, QWORD PTR [88+rsp]                       #162.5[spill] c17
                                # LOE rdx rcx ebx r11d r12d r13d r14d ymm0 ymm1
..B7.57:                        # Preds ..B7.75 ..B7.56
                                # Execution count [5.00e+00]
        lea       eax, DWORD PTR [r11+r14]                      #164.9 c1
        mov       DWORD PTR [96+rsp], r12d                      #164.9[spill] c1
        xor       edi, edi                                      #163.7 c1
        mov       DWORD PTR [72+rsp], r11d                      #164.9[spill] c3
        movsxd    rax, eax                                      #164.9 c3
        mov       DWORD PTR [64+rsp], r14d                      #164.9[spill] c3
        xor       r10d, r10d                                    #164.9 c3
        mov       DWORD PTR [48+rsp], r13d                      #164.9[spill] c5
        lea       rax, QWORD PTR [rdx+rax*8]                    #164.9 c5
        mov       QWORD PTR [128+rsp], rax                      #164.9[spill] c7
        mov       rsi, rax                                      #162.5 c7
        lea       r8d, DWORD PTR [r12+r14]                      #164.25 c7
        and       rsi, 63                                       #162.5 c9
        mov       r15d, esi                                     #162.5 c9
        mov       rdx, QWORD PTR [240+rsp]                      #164.9[spill] c9
        movsxd    r8, r8d                                       #164.25 c11
        and       r15d, 7                                       #162.5 c11
        mov       DWORD PTR [104+rsp], r15d                     #164.9[spill] c13
        lea       r9, QWORD PTR [rcx+r8*8]                      #164.25 c13
        xor       r8d, r8d                                      #164.9 c13
        mov       rcx, QWORD PTR [216+rsp]                      #164.9[spill] c15
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B7.58:                        # Preds ..B7.74 ..B7.57
                                # Execution count [2.78e+01]
        cmp       ebx, 38                                       #162.5 c1
        jl        ..B7.80       # Prob 10%                      #162.5 c3
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B7.59:                        # Preds ..B7.58
                                # Execution count [2.78e+01]
        mov       r15d, esi                                     #162.5 c1
        test      esi, esi                                      #162.5 c1
        je        ..B7.62       # Prob 50%                      #162.5 c3
                                # LOE rdx rcx r8 r9 r10 ebx esi edi r15d ymm0 ymm1
..B7.60:                        # Preds ..B7.59
                                # Execution count [2.78e+01]
        cmp       DWORD PTR [104+rsp], 0                        #162.5[spill] c1
        jne       ..B7.79       # Prob 10%                      #162.5 c3
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B7.61:                        # Preds ..B7.60
                                # Execution count [0.00e+00]
        mov       r15d, esi                                     #162.5 c1
        neg       r15d                                          #162.5 c3
        add       r15d, 64                                      #162.5 c5
        shr       r15d, 3                                       #162.5 c7
        cmp       ebx, r15d                                     #162.5 c9
        cmovl     r15d, ebx                                     #162.5 c11
                                # LOE rdx rcx r8 r9 r10 ebx esi edi r15d ymm0 ymm1
..B7.62:                        # Preds ..B7.61 ..B7.59
                                # Execution count [2.78e+01]
        mov       eax, ebx                                      #162.5 c1
        sub       eax, r15d                                     #162.5 c3
        and       eax, 7                                        #162.5 c5
        neg       eax                                           #162.5 c7
        add       eax, ebx                                      #162.5 c9
        cmp       r15d, 1                                       #162.5 c9
        jb        ..B7.66       # Prob 50%                      #162.5 c11
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B7.63:                        # Preds ..B7.62
                                # Execution count [2.78e+01]
        vmovd     xmm2, r15d                                    #162.5 c1
        mov       r11d, 255                                     #162.5 c1
        vmovdqa   ymm3, ymm0                                    #162.5 c1
        xor       r13d, r13d                                    #162.5 c1
        lea       r12, QWORD PTR [rcx+r8*8]                     #164.40 c1
        mov       rcx, QWORD PTR [128+rsp]                      #162.5[spill] c1
        vpbroadcastd ymm2, xmm2                                 #162.5 c3
        kmovw     k1, r11d                                      #162.5 c3
        movsxd    r14, r15d                                     #162.5 c5
        xor       r11d, r11d                                    #162.5 c5
                                # LOE rdx rcx r8 r9 r10 r11 r12 r13 r14 eax ebx esi edi r15d ymm0 ymm1 ymm3 zmm2 k1
..B7.64:                        # Preds ..B7.64 ..B7.63
                                # Execution count [1.54e+02]
        add       r13, 8                                        #162.5 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #162.5 c3
        vpaddd    ymm3, ymm3, ymm1                              #162.5 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r11+rcx]            #164.9 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r11+r12]            #164.40 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [r9+r10*8]{1to8}      #164.9 c11 stall 2
        vmovupd   ZMMWORD PTR [r11+rcx]{k2}, zmm5               #164.9 c17 stall 2
        add       r11, 64                                       #162.5 c17
        cmp       r13, r14                                      #162.5 c17
        jb        ..B7.64       # Prob 82%                      #162.5 c19
                                # LOE rdx rcx r8 r9 r10 r11 r12 r13 r14 eax ebx esi edi r15d ymm0 ymm1 ymm3 zmm2 k1
..B7.65:                        # Preds ..B7.64
                                # Execution count [2.78e+01]
        mov       rcx, QWORD PTR [216+rsp]                      #[spill] c1
        cmp       ebx, r15d                                     #162.5 c1
        je        ..B7.74       # Prob 10%                      #162.5 c3
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B7.66:                        # Preds ..B7.65 ..B7.62 ..B7.80
                                # Execution count [0.00e+00]
        lea       r11d, DWORD PTR [8+r15]                       #162.5 c1
        cmp       eax, r11d                                     #162.5 c3
        jl        ..B7.70       # Prob 50%                      #162.5 c5
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B7.67:                        # Preds ..B7.66
                                # Execution count [2.78e+01]
        movsxd    r15, r15d                                     #162.5 c1
        vbroadcastsd zmm2, QWORD PTR [r9+r10*8]                 #164.25 c1
        lea       r12, QWORD PTR [rcx+r8*8]                     #164.40 c1
        movsxd    r11, eax                                      #162.5 c1
        mov       r13, QWORD PTR [128+rsp]                      #162.5[spill] c3
                                # LOE rdx rcx r8 r9 r10 r11 r12 r13 r15 eax ebx esi edi ymm0 ymm1 zmm2
..B7.68:                        # Preds ..B7.68 ..B7.67
                                # Execution count [1.54e+02]
        vmovups   zmm3, ZMMWORD PTR [r12+r15*8]                 #164.40 c1
        vfmadd213pd zmm3, zmm2, ZMMWORD PTR [r13+r15*8]         #164.9 c7 stall 2
        vmovupd   ZMMWORD PTR [r13+r15*8], zmm3                 #164.9 c13 stall 2
        add       r15, 8                                        #162.5 c13
        cmp       r15, r11                                      #162.5 c15
        jb        ..B7.68       # Prob 82%                      #162.5 c17
                                # LOE rdx rcx r8 r9 r10 r11 r12 r13 r15 eax ebx esi edi ymm0 ymm1 zmm2
..B7.70:                        # Preds ..B7.68 ..B7.66 ..B7.79
                                # Execution count [2.78e+01]
        lea       r11d, DWORD PTR [1+rax]                       #162.5 c1
        cmp       r11d, ebx                                     #162.5 c3
        ja        ..B7.74       # Prob 50%                      #162.5 c5
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi ymm0 ymm1
..B7.71:                        # Preds ..B7.70
                                # Execution count [2.78e+01]
        mov       r14d, ebx                                     #162.5 c1
        mov       r13, QWORD PTR [128+rsp]                      #164.9[spill] c1
        lea       r12, QWORD PTR [rcx+r8*8]                     #164.40 c1
        mov       r11d, 255                                     #162.5 c1
        vmovdqa   ymm3, ymm0                                    #162.5 c1
        sub       r14d, eax                                     #162.5 c3
        movsxd    rax, eax                                      #164.9 c3
        vmovd     xmm2, r14d                                    #162.5 c5
        lea       r14, QWORD PTR [r12+rax*8]                    #164.40 c5
        lea       r13, QWORD PTR [r13+rax*8]                    #164.9 c5
        neg       rax                                           #162.5 c5
        kmovw     k1, r11d                                      #162.5 c5
        vpbroadcastd ymm2, xmm2                                 #162.5 c7
        xor       r11d, r11d                                    #162.5 c7
        add       rax, rdx                                      #162.5 c9
        xor       r12d, r12d                                    #162.5 c9
                                # LOE rax rdx rcx r8 r9 r10 r11 r12 r13 r14 ebx esi edi ymm0 ymm1 ymm3 zmm2 k1
..B7.72:                        # Preds ..B7.72 ..B7.71
                                # Execution count [1.54e+02]
        add       r11, 8                                        #162.5 c1
        vpcmpgtd  k2{k1}, zmm2, zmm3                            #162.5 c3
        vpaddd    ymm3, ymm3, ymm1                              #162.5 c3
        vmovupd   zmm5{k2}{z}, ZMMWORD PTR [r12+r13]            #164.9 c5
        vmovupd   zmm4{k2}{z}, ZMMWORD PTR [r12+r14]            #164.40 c5
        vfmadd231pd zmm5, zmm4, QWORD PTR [r9+r10*8]{1to8}      #164.9 c11 stall 2
        vmovupd   ZMMWORD PTR [r12+r13]{k2}, zmm5               #164.9 c17 stall 2
        add       r12, 64                                       #162.5 c17
        cmp       r11, rax                                      #162.5 c17
        jb        ..B7.72       # Prob 82%                      #162.5 c19
                                # LOE rax rdx rcx r8 r9 r10 r11 r12 r13 r14 ebx esi edi ymm0 ymm1 ymm3 zmm2 k1
..B7.74:                        # Preds ..B7.72 ..B7.65 ..B7.70
                                # Execution count [2.78e+01]
        add       edi, 1                                        #163.7 c1
        add       r8, rdx                                       #163.7 c1
        add       r10, 1                                        #163.7 c3
        cmp       edi, ebx                                      #163.7 c3
        jb        ..B7.58       # Prob 82%                      #163.7 c5
                                # LOE rdx rcx r8 r9 r10 ebx esi edi ymm0 ymm1
..B7.75:                        # Preds ..B7.74
                                # Execution count [1.25e+00]
        mov       r13d, DWORD PTR [48+rsp]                      #[spill] c1
        mov       r14d, DWORD PTR [64+rsp]                      #[spill] c1
        add       r13d, 1                                       #161.3 c5 stall 1
        add       r14d, ebx                                     #161.3 c5
        mov       r12d, DWORD PTR [96+rsp]                      #[spill] c5
        mov       r11d, DWORD PTR [72+rsp]                      #[spill] c5
        mov       rdx, QWORD PTR [88+rsp]                       #[spill] c9 stall 1
        mov       rcx, QWORD PTR [208+rsp]                      #[spill] c9
        cmp       r13d, DWORD PTR [56+rsp]                      #161.3[spill] c13 stall 1
        jb        ..B7.57       # Prob 27%                      #161.3 c15
                                # LOE rdx rcx ebx r11d r12d r13d r14d ymm0 ymm1
..B7.77:                        # Preds ..B7.75 ..B7.10 ..B7.55
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.143_2_kmpc_loc_struct_pack.20 #160.1 c1
        mov       esi, DWORD PTR [80+rsp]                       #160.1[spill] c1
        call      __kmpc_for_static_fini                        #160.1 c3
                                # LOE
..B7.78:                        # Preds ..B7.8 ..B7.77
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [rsp]                          #160.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [8+rsp]                        #160.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [16+rsp]                       #160.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [24+rsp]                       #160.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [32+rsp]                       #160.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rsp, rbp                                      #160.1 c11
        pop       rbp                                           #160.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #160.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xfe, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xfe, 0xff, 0xff, 0x22
                                # LOE
..B7.79:                        # Preds ..B7.60
                                # Execution count [2.78e+00]: Infreq
        xor       eax, eax                                      #162.5 c1
        jmp       ..B7.70       # Prob 100%                     #162.5 c1
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi ymm0 ymm1
..B7.80:                        # Preds ..B7.58
                                # Execution count [2.78e+00]: Infreq
        mov       eax, DWORD PTR [40+rsp]                       #162.5[spill] c1
        xor       r15d, r15d                                    #162.5 c1
        jmp       ..B7.66       # Prob 100%                     #162.5 c1
                                # LOE rdx rcx r8 r9 r10 eax ebx esi edi r15d ymm0 ymm1
..B7.81:                        # Preds ..B7.37
                                # Execution count [2.78e+00]: Infreq
        xor       r15d, r15d                                    #162.5 c1
        jmp       ..B7.47       # Prob 100%                     #162.5 c1
                                # LOE rdx r9 r10 r11 r12 ebx r15d ymm0 ymm1
..B7.82:                        # Preds ..B7.35
                                # Execution count [2.78e+00]: Infreq
        mov       r15d, DWORD PTR [72+rsp]                      #162.5[spill] c1
        xor       r8d, r8d                                      #162.5 c1
        jmp       ..B7.43       # Prob 100%                     #162.5 c1
                                # LOE rdx r9 r10 r11 r12 ebx r8d r15d ymm0 ymm1
..B7.83:                        # Preds ..B7.17
                                # Execution count [2.78e+00]: Infreq
        xor       edx, edx                                      #162.5 c1
        jmp       ..B7.27       # Prob 100%                     #162.5 c1
                                # LOE rax rdi edx ebx r9d r10d ymm0 ymm1
..B7.84:                        # Preds ..B7.15
                                # Execution count [2.78e+00]: Infreq
        mov       edx, DWORD PTR [72+rsp]                       #162.5[spill] c1
        xor       r13d, r13d                                    #162.5 c1
        jmp       ..B7.23       # Prob 100%                     #162.5 c1
        .align    16,0x90
                                # LOE rax rdi edx ebx r9d r10d r13d ymm0 ymm1
	.cfi_endproc
# mark_end;
	.type	_Z9referencePKdS0_Pdi,@function
	.size	_Z9referencePKdS0_Pdi,.-_Z9referencePKdS0_Pdi
	.data
	.space 1, 0x00 	# pad
	.align 4
.2.143_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.143_2__kmpc_loc_pack.11
	.align 4
.2.143_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	114
	.byte	101
	.byte	102
	.byte	101
	.byte	114
	.byte	101
	.byte	110
	.byte	99
	.byte	101
	.byte	59
	.byte	49
	.byte	54
	.byte	48
	.byte	59
	.byte	49
	.byte	54
	.byte	48
	.byte	59
	.byte	59
	.align 4
.2.143_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.143_2__kmpc_loc_pack.19
	.align 4
.2.143_2__kmpc_loc_pack.19:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	114
	.byte	101
	.byte	102
	.byte	101
	.byte	114
	.byte	101
	.byte	110
	.byte	99
	.byte	101
	.byte	59
	.byte	49
	.byte	54
	.byte	48
	.byte	59
	.byte	49
	.byte	54
	.byte	53
	.byte	59
	.byte	59
	.data
# -- End  _Z9referencePKdS0_Pdi, L__Z9referencePKdS0_Pdi_160__par_loop0_2.25
	.text
# -- Begin  _Z11first_touchPdS_S_i, L__Z11first_touchPdS_S_i_171__par_loop0_2.26
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z11first_touchPdS_S_i
# --- first_touch(double *, double *, double *, int)
_Z11first_touchPdS_S_i:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: ecx
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z11first_touchPdS_S_i.360:
..L361:
                                                        #170.38
        sub       rsp, 88                                       #170.38 c1
	.cfi_def_cfa_offset 96
        mov       QWORD PTR [48+rsp], rdi                       #170.38 c3
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.12 #171.1 c3
        mov       QWORD PTR [40+rsp], rbp                       #170.38[spill] c3
        mov       QWORD PTR [32+rsp], rbx                       #170.38[spill] c5
        mov       QWORD PTR [rsp], r15                          #170.38[spill] c5
        mov       QWORD PTR [8+rsp], r14                        #170.38[spill] c7
        mov       QWORD PTR [16+rsp], r13                       #170.38[spill] c7
        mov       QWORD PTR [24+rsp], r12                       #170.38[spill] c9
        mov       QWORD PTR [56+rsp], rsi                       #170.38 c9
        mov       QWORD PTR [64+rsp], rdx                       #170.38 c11
        mov       DWORD PTR [80+rsp], ecx                       #170.38 c11
        call      __kmpc_global_thread_num                      #171.1 c11
	.cfi_offset 3, -64
	.cfi_offset 6, -56
	.cfi_offset 12, -72
	.cfi_offset 13, -80
	.cfi_offset 14, -88
	.cfi_offset 15, -96
                                # LOE eax
..B8.23:                        # Preds ..B8.1
                                # Execution count [1.00e+00]
        mov       DWORD PTR [72+rsp], eax                       #171.1 c1
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.20 #171.1 c1
        xor       eax, eax                                      #171.1 c1
..___tag_value__Z11first_touchPdS_S_i.369:
        call      __kmpc_ok_to_fork                             #171.1
..___tag_value__Z11first_touchPdS_S_i.370:
                                # LOE eax
..B8.2:                         # Preds ..B8.23
                                # Execution count [1.00e+00]
        test      eax, eax                                      #171.1 c1
        je        ..B8.4        # Prob 50%                      #171.1 c3
                                # LOE
..B8.3:                         # Preds ..B8.2
                                # Execution count [0.00e+00]
        add       rsp, -16                                      #171.1 c1
	.cfi_def_cfa_offset 112
        mov       edx, offset flat: L__Z11first_touchPdS_S_i_171__par_loop0_2.26 #171.1 c1
        lea       rcx, QWORD PTR [96+rsp]                       #171.1 c3
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.20 #171.1 c3
        mov       esi, 4                                        #171.1 c3
        lea       rax, QWORD PTR [-16+rcx]                      #171.1 c5
        mov       QWORD PTR [rsp], rax                          #171.1 c7
        lea       r8, QWORD PTR [-32+rcx]                       #171.1 c7
        xor       eax, eax                                      #171.1 c7
        lea       r9, QWORD PTR [-24+rcx]                       #171.1 c9
..___tag_value__Z11first_touchPdS_S_i.372:
        call      __kmpc_fork_call                              #171.1
..___tag_value__Z11first_touchPdS_S_i.373:
                                # LOE
..B8.24:                        # Preds ..B8.3
                                # Execution count [0.00e+00]
        add       rsp, 16                                       #171.1 c1
	.cfi_def_cfa_offset 96
        jmp       ..B8.7        # Prob 100%                     #171.1 c1
                                # LOE
..B8.4:                         # Preds ..B8.2
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.20 #171.1 c1
        mov       esi, DWORD PTR [72+rsp]                       #171.1 c1
        xor       eax, eax                                      #171.1 c1
..___tag_value__Z11first_touchPdS_S_i.375:
        call      __kmpc_serialized_parallel                    #171.1
..___tag_value__Z11first_touchPdS_S_i.376:
                                # LOE
..B8.5:                         # Preds ..B8.4
                                # Execution count [0.00e+00]
        lea       rdi, QWORD PTR [72+rsp]                       #171.1 c1
        mov       esi, offset flat: ___kmpv_zero_Z11first_touchPdS_S_i_0 #171.1 c1
        lea       rdx, QWORD PTR [8+rdi]                        #171.1 c3
        lea       rcx, QWORD PTR [-32+rdx]                      #171.1 c5
        lea       r8, QWORD PTR [-24+rdx]                       #171.1 c5
        lea       r9, QWORD PTR [-16+rdx]                       #171.1 c7
..___tag_value__Z11first_touchPdS_S_i.377:
        call      L__Z11first_touchPdS_S_i_171__par_loop0_2.26  #171.1
..___tag_value__Z11first_touchPdS_S_i.378:
                                # LOE
..B8.6:                         # Preds ..B8.5
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.20 #171.1 c1
        mov       esi, DWORD PTR [72+rsp]                       #171.1 c1
        xor       eax, eax                                      #171.1 c1
..___tag_value__Z11first_touchPdS_S_i.379:
        call      __kmpc_end_serialized_parallel                #171.1
..___tag_value__Z11first_touchPdS_S_i.380:
                                # LOE
..B8.7:                         # Preds ..B8.24 ..B8.6
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [rsp]                          #175.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [8+rsp]                        #175.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [16+rsp]                       #175.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [24+rsp]                       #175.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [32+rsp]                       #175.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rbp, QWORD PTR [40+rsp]                       #175.1[spill] c9
	.cfi_restore 6
        add       rsp, 88                                       #175.1 c9
	.cfi_def_cfa_offset 8
        ret                                                     #175.1 c11
	.cfi_def_cfa_offset 96
                                # LOE
L__Z11first_touchPdS_S_i_171__par_loop0_2.26:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
# parameter 4: rcx
# parameter 5: r8
# parameter 6: r9
..B8.8:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
        sub       rsp, 88                                       #171.1 c1
        mov       QWORD PTR [40+rsp], rbp                       #171.1[spill] c3
	.cfi_offset 6, -56
        mov       ebp, DWORD PTR [rdx]                          #171.1 c3
        mov       QWORD PTR [32+rsp], rbx                       #171.1[spill] c5
        test      ebp, ebp                                      #172.38 c7
        mov       QWORD PTR [rsp], r15                          #171.1[spill] c7
	.cfi_offset 3, -64
	.cfi_offset 15, -96
        mov       r15d, DWORD PTR [rdi]                         #171.1 c7
        mov       QWORD PTR [8+rsp], r14                        #171.1[spill] c9
	.cfi_offset 14, -88
        mov       r14, QWORD PTR [r9]                           #171.1 c11
        mov       QWORD PTR [16+rsp], r13                       #171.1[spill] c11
	.cfi_offset 13, -80
        mov       r13, QWORD PTR [r8]                           #171.1 c13
        mov       QWORD PTR [24+rsp], r12                       #171.1[spill] c15
	.cfi_offset 12, -72
        mov       r12, QWORD PTR [rcx]                          #171.1 c17
        jle       ..B8.19       # Prob 10%                      #172.38 c17
                                # LOE r12 r13 r14 ebp r15d
..B8.9:                         # Preds ..B8.8
                                # Execution count [5.00e+00]
        xor       ebx, ebx                                      #171.1 c1
        mov       DWORD PTR [48+rsp], ebx                       #171.1 c3
        add       ebp, -1                                       #171.1 c3
        mov       DWORD PTR [56+rsp], ebx                       #171.1 c3
        mov       ebx, 1                                        #171.1 c3
        mov       DWORD PTR [52+rsp], ebp                       #171.1 c5
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.20 #171.1 c5
        mov       DWORD PTR [60+rsp], ebx                       #171.1 c5
        add       rsp, -32                                      #171.1 c5
	.cfi_def_cfa_offset 128
        lea       rax, QWORD PTR [92+rsp]                       #171.1 c7
        mov       QWORD PTR [rsp], rax                          #171.1 c9
        mov       esi, r15d                                     #171.1 c9
        mov       DWORD PTR [8+rsp], ebx                        #171.1 c9
        mov       edx, 34                                       #171.1 c9
        mov       DWORD PTR [16+rsp], ebx                       #171.1 c11
        lea       rcx, QWORD PTR [88+rsp]                       #171.1 c11
        lea       r8, QWORD PTR [80+rsp]                        #171.1 c13
        lea       r9, QWORD PTR [84+rsp]                        #171.1 c13
        call      __kmpc_for_static_init_4                      #171.1 c15
                                # LOE r12 r13 r14 ebx ebp r15d
..B8.25:                        # Preds ..B8.9
                                # Execution count [5.00e+00]
        add       rsp, 32                                       #171.1 c1
	.cfi_def_cfa_offset 96
                                # LOE r12 r13 r14 ebx ebp r15d
..B8.10:                        # Preds ..B8.25
                                # Execution count [0.00e+00]
        mov       edi, DWORD PTR [48+rsp]                       #171.1 c1
        mov       eax, DWORD PTR [52+rsp]                       #171.1 c1
        cmp       edi, ebp                                      #171.1 c5 stall 1
        jg        ..B8.18       # Prob 50%                      #171.1 c7
                                # LOE r12 r13 r14 eax ebx ebp edi r15d
..B8.11:                        # Preds ..B8.10
                                # Execution count [0.00e+00]
        cmp       eax, ebp                                      #171.1 c1
        cmovl     ebp, eax                                      #171.1 c3
        cmp       edi, ebp                                      #172.38 c5
        jg        ..B8.18       # Prob 50%                      #172.38 c7
                                # LOE r12 r13 r14 ebx ebp edi r15d
..B8.12:                        # Preds ..B8.11
                                # Execution count [9.00e-01]
        sub       ebp, edi                                      #171.1 c1
        xor       ecx, ecx                                      #171.1 c1
        lea       edx, DWORD PTR [1+rbp]                        #171.1 c3
        mov       eax, edx                                      #171.1 c5
        shr       eax, 31                                       #171.1 c7
        lea       eax, DWORD PTR [1+rbp+rax]                    #171.1 c9
        sar       eax, 1                                        #171.1 c11
        test      eax, eax                                      #171.1 c13
        jbe       ..B8.16       # Prob 0%                       #171.1 c15
                                # LOE r12 r13 r14 eax edx ecx ebx edi r15d
..B8.13:                        # Preds ..B8.12
                                # Execution count [9.00e-01]
        movsxd    rdi, edi                                      #173.19 c1
        xor       ebx, ebx                                      #173.19 c1
        lea       r9, QWORD PTR [r14+rdi*8]                     #173.19 c3
        lea       r8, QWORD PTR [r13+rdi*8]                     #173.12 c3
        lea       rbp, QWORD PTR [r12+rdi*8]                    #173.5 c5
                                # LOE rbx rbp r8 r9 r12 r13 r14 eax edx ecx edi r15d
..B8.14:                        # Preds ..B8.14 ..B8.13
                                # Execution count [2.50e+00]
        lea       r10d, DWORD PTR [rcx+rcx]                     #173.19 c1
        add       ecx, 1                                        #171.1 c1
        movsxd    r10, r10d                                     #173.19 c3
        mov       QWORD PTR [r9+r10*8], rbx                     #173.19 c5
        cmp       ecx, eax                                      #171.1 c5
        mov       QWORD PTR [r8+r10*8], rbx                     #173.12 c5
        mov       QWORD PTR [rbp+r10*8], rbx                    #173.5 c7
        mov       QWORD PTR [8+r9+r10*8], rbx                   #173.19 c7
        mov       QWORD PTR [8+r8+r10*8], rbx                   #173.12 c9
        mov       QWORD PTR [8+rbp+r10*8], rbx                  #173.5 c9
        jb        ..B8.14       # Prob 63%                      #171.1 c9
                                # LOE rbx rbp r8 r9 r12 r13 r14 eax edx ecx edi r15d
..B8.15:                        # Preds ..B8.14
                                # Execution count [9.00e-01]
        lea       ebx, DWORD PTR [1+rcx+rcx]                    #173.19 c1
                                # LOE r12 r13 r14 edx ebx edi r15d
..B8.16:                        # Preds ..B8.15 ..B8.12
                                # Execution count [9.00e-01]
        lea       eax, DWORD PTR [-1+rbx]                       #171.1 c1
        cmp       eax, edx                                      #171.1 c3
        jae       ..B8.18       # Prob 0%                       #171.1 c5
                                # LOE r12 r13 r14 ebx edi r15d
..B8.17:                        # Preds ..B8.16
                                # Execution count [9.00e-01]
        movsxd    rdi, edi                                      #173.19 c1
        movsxd    rbx, ebx                                      #173.19 c1
        add       rdi, rbx                                      #171.1 c3
        xor       eax, eax                                      #173.19 c3
        mov       QWORD PTR [-8+r14+rdi*8], rax                 #173.19 c5
        mov       QWORD PTR [-8+r13+rdi*8], rax                 #173.12 c5
        mov       QWORD PTR [-8+r12+rdi*8], rax                 #173.5 c7
                                # LOE r15d
..B8.18:                        # Preds ..B8.16 ..B8.11 ..B8.10 ..B8.17
                                # Execution count [0.00e+00]
        mov       edi, offset flat: .2.144_2_kmpc_loc_struct_pack.20 #171.1 c1
        mov       esi, r15d                                     #171.1 c1
        call      __kmpc_for_static_fini                        #171.1 c3
                                # LOE
..B8.19:                        # Preds ..B8.18 ..B8.8
                                # Execution count [0.00e+00]
        mov       r15, QWORD PTR [rsp]                          #171.1[spill] c1
	.cfi_restore 15
        mov       r14, QWORD PTR [8+rsp]                        #171.1[spill] c1
	.cfi_restore 14
        mov       r13, QWORD PTR [16+rsp]                       #171.1[spill] c5 stall 1
	.cfi_restore 13
        mov       r12, QWORD PTR [24+rsp]                       #171.1[spill] c5
	.cfi_restore 12
        mov       rbx, QWORD PTR [32+rsp]                       #171.1[spill] c9 stall 1
	.cfi_restore 3
        mov       rbp, QWORD PTR [40+rsp]                       #171.1[spill] c9
	.cfi_restore 6
        add       rsp, 88                                       #171.1 c9
	.cfi_def_cfa_offset 8
        ret                                                     #171.1 c11
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z11first_touchPdS_S_i,@function
	.size	_Z11first_touchPdS_S_i,.-_Z11first_touchPdS_S_i
	.data
	.align 4
.2.144_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.144_2__kmpc_loc_pack.11
	.align 4
.2.144_2__kmpc_loc_pack.11:
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
	.byte	49
	.byte	55
	.byte	49
	.byte	59
	.byte	49
	.byte	55
	.byte	49
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
	.align 4
.2.144_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.144_2__kmpc_loc_pack.19
	.align 4
.2.144_2__kmpc_loc_pack.19:
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
	.byte	49
	.byte	55
	.byte	49
	.byte	59
	.byte	49
	.byte	55
	.byte	52
	.byte	59
	.byte	59
	.data
# -- End  _Z11first_touchPdS_S_i, L__Z11first_touchPdS_S_i_171__par_loop0_2.26
	.text
# -- Begin  _Z5checkPKdS0_d
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z5checkPKdS0_d
# --- check(const double *, const double *, double)
_Z5checkPKdS0_d:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: xmm0
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z5checkPKdS0_d.406:
..L407:
                                                        #179.39
        sub       rsp, 24                                       #179.39 c1
	.cfi_def_cfa_offset 32
        mov       QWORD PTR [16+rsp], rbp                       #179.39[spill] c3
	.cfi_offset 6, -16
        xor       ebp, ebp                                      #180.14 c3
        mov       QWORD PTR [rsp], r13                          #179.39[spill] c3
	.cfi_offset 13, -32
        mov       r13, rdi                                      #179.39 c3
        mov       QWORD PTR [8+rsp], r12                        #179.39[spill] c5
	.cfi_offset 12, -24
        mov       r12, rsi                                      #179.39 c5
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B9.2:                         # Preds ..B9.3 ..B9.1
                                # Execution count [5.00e+00]
        vmovsd    xmm16, QWORD PTR [r13+rbp*8]                  #181.18 c1
        vsubsd    xmm1, xmm16, QWORD PTR [r12+rbp*8]            #181.29 c7 stall 2
        vandpd    xmm2, xmm1, XMMWORD PTR .L_2il0floatpacket.20[rip] #181.9 c13 stall 2
        vcmpsd    k0, xmm2, xmm0, 13                            #181.38 c15
        kortestw  k0, k0                                        #181.38 c17
        jne       ..B9.5        # Prob 20%                      #181.38 c19
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B9.3:                         # Preds ..B9.2
                                # Execution count [4.00e+00]
        add       rbp, 1                                        #180.44 c1
        cmp       rbp, 1048576                                  #180.23 c3
        jl        ..B9.2        # Prob 99%                      #180.23 c5
                                # LOE rbx rbp r12 r13 r14 r15 xmm0
..B9.4:                         # Preds ..B9.3
                                # Execution count [3.66e-06]
        mov       rbp, QWORD PTR [16+rsp]                       #187.1[spill] c1
	.cfi_restore 6
        mov       r12, QWORD PTR [8+rsp]                        #187.1[spill] c1
	.cfi_restore 12
        mov       r13, QWORD PTR [rsp]                          #187.1[spill] c5 stall 1
	.cfi_restore 13
        add       rsp, 24                                       #187.1 c5
	.cfi_def_cfa_offset 8
        ret                                                     #187.1 c7
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -16
	.cfi_offset 12, -24
	.cfi_offset 13, -32
                                # LOE
..B9.5:                         # Preds ..B9.2
                                # Execution count [1.00e+00]: Infreq
        mov       edi, offset flat: _ZSt4cout                   #182.17 c1
        mov       esi, offset flat: .L_2__STRING.0              #182.17 c1
..___tag_value__Z5checkPKdS0_d.420:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #182.17
..___tag_value__Z5checkPKdS0_d.421:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.6:                         # Preds ..B9.5
                                # Execution count [1.00e+00]: Infreq
        vmovsd    xmm0, QWORD PTR [r13+rbp*8]                   #183.17 c1
        mov       edi, offset flat: _ZSt4cout                   #183.17 c1
..___tag_value__Z5checkPKdS0_d.422:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #183.17
..___tag_value__Z5checkPKdS0_d.423:
                                # LOE rax rbx rbp r12 r14 r15
..B9.7:                         # Preds ..B9.6
                                # Execution count [1.00e+00]: Infreq
        mov       rdi, rax                                      #183.29 c1
        mov       esi, offset flat: .L_2__STRING.1              #183.29 c1
..___tag_value__Z5checkPKdS0_d.424:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #183.29
..___tag_value__Z5checkPKdS0_d.425:
                                # LOE rax rbx rbp r12 r14 r15
..B9.8:                         # Preds ..B9.7
                                # Execution count [1.00e+00]: Infreq
        vmovsd    xmm0, QWORD PTR [r12+rbp*8]                   #183.36 c1
        mov       rdi, rax                                      #183.36 c1
..___tag_value__Z5checkPKdS0_d.426:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #183.36
..___tag_value__Z5checkPKdS0_d.427:
                                # LOE rax rbx r14 r15
..B9.9:                         # Preds ..B9.8
                                # Execution count [1.00e+00]: Infreq
        mov       rdi, rax                                      #183.44 c1
        mov       esi, offset flat: _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ #183.44 c1
..___tag_value__Z5checkPKdS0_d.428:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #183.44
..___tag_value__Z5checkPKdS0_d.429:
                                # LOE
..B9.10:                        # Preds ..B9.9
                                # Execution count [1.00e+00]: Infreq
        mov       edi, 1                                        #184.7 c1
#       exit(int)
        call      exit                                          #184.7 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_Z5checkPKdS0_d,@function
	.size	_Z5checkPKdS0_d,.-_Z5checkPKdS0_d
	.data
# -- End  _Z5checkPKdS0_d
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.431:
..L432:
                                                        #
        push      rsi                                           # c1
	.cfi_def_cfa_offset 16
        mov       edi, offset flat: _ZN35_INTERNAL_13_dgemm_knl_cpp_df8d3de3St8__ioinitE #74.25 c1
..___tag_value___sti__$E.434:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.435:
                                # LOE rbx rbp r12 r13 r14 r15
..B10.2:                        # Preds ..B10.1
                                # Execution count [1.00e+00]
        mov       edi, offset flat: _ZNSt8ios_base4InitD1Ev     #74.25 c1
        mov       esi, offset flat: _ZN35_INTERNAL_13_dgemm_knl_cpp_df8d3de3St8__ioinitE #74.25 c1
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
___kmpv_zero_Z6dgemm3PKdS0_Pd_0:
	.type	___kmpv_zero_Z6dgemm3PKdS0_Pd_0,@object
	.size	___kmpv_zero_Z6dgemm3PKdS0_Pd_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z6dgemm1PKdS0_Pd_0:
	.type	___kmpv_zero_Z6dgemm1PKdS0_Pd_0,@object
	.size	___kmpv_zero_Z6dgemm1PKdS0_Pd_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z6dgemm2PKdS0_Pd_0:
	.type	___kmpv_zero_Z6dgemm2PKdS0_Pd_0,@object
	.size	___kmpv_zero_Z6dgemm2PKdS0_Pd_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z9referencePKdS0_Pdi_0:
	.type	___kmpv_zero_Z9referencePKdS0_Pdi_0,@object
	.size	___kmpv_zero_Z9referencePKdS0_Pdi_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z11first_touchPdS_S_i_0:
	.type	___kmpv_zero_Z11first_touchPdS_S_i_0,@object
	.size	___kmpv_zero_Z11first_touchPdS_S_i_0,4
	.space 4	# pad
	.align 1
_ZN35_INTERNAL_13_dgemm_knl_cpp_df8d3de3St8__ioinitE:
	.type	_ZN35_INTERNAL_13_dgemm_knl_cpp_df8d3de3St8__ioinitE,@object
	.size	_ZN35_INTERNAL_13_dgemm_knl_cpp_df8d3de3St8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.9:
	.long	0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff,0x80000000,0xffffffff
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,64
	.align 64
.L_2il0floatpacket.10:
	.long	0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000,0x7fffffff,0x00000000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,64
	.align 64
.L_2il0floatpacket.11:
	.long	0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000,0x00000001,0x00000000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,64
	.align 64
.L_2il0floatpacket.12:
	.long	0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000,0x9908b0df,0x00000000
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,64
	.align 32
.L_2il0floatpacket.19:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,32
	.align 32
.L_2il0floatpacket.23:
	.long	0x00000000,0x00000400,0x00000800,0x00000c00,0x00001000,0x00001400,0x00001800,0x00001c00
	.type	.L_2il0floatpacket.23,@object
	.size	.L_2il0floatpacket.23,32
	.align 16
.L_2il0floatpacket.6:
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x1f,0x40,0x00,0x00,0x00,0x00,0x00,0x00
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,16
	.align 16
.L_2il0floatpacket.7:
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,16
	.align 16
.L_2il0floatpacket.20:
	.long	0xffffffff,0x7fffffff,0x00000000,0x00000000
	.type	.L_2il0floatpacket.20,@object
	.size	.L_2il0floatpacket.20,16
	.align 8
.L_2il0floatpacket.13:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,8
	.align 8
.L_2il0floatpacket.14:
	.long	0x00000000,0x41dffc00
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,8
	.align 8
.L_2il0floatpacket.15:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,8
	.align 8
.L_2il0floatpacket.16:
	.long	0x00000000,0x41780000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,8
	.align 8
.L_2il0floatpacket.17:
	.long	0xe2308c3a,0x3e45798e
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,8
	.align 8
.L_2il0floatpacket.18:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,8
	.align 4
.L_2il0floatpacket.8:
	.long	0x5f000000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.2:
	.long	1701209458
	.long	1668179314
	.long	1601710181
	.long	1601462637
	.long	744908146
	.long	1834973472
	.long	1918858337
	.long	539780709
	.long	1634557818
	.long	1701994356
	.word	10598
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,43
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
	.long	1567843173
	.word	10
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1179081504
	.long	1397772108
	.word	2653
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	1111972640
	.long	173896495
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,9
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1835362148
	.long	2015900525
	.long	1952542047
	.long	1601773612
	.long	745824621
	.long	1834973728
	.long	2716769
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,28
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
