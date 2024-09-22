	.text
	.file	"fibonacci.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z8multiplyii                   # -- Begin function _Z8multiplyii
	.p2align	4, 0x90
	.type	_Z8multiplyii,@function
_Z8multiplyii:                          # @_Z8multiplyii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -4(%rbp)
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z8multiplyii, .Lfunc_end1-_Z8multiplyii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI2_0:
	.quad	0x400921f9f01b866e              # double 3.1415899999999999
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZNSirsERi@PLT
	cmpl	$100, -8(%rbp)
	jle	.LBB2_2
# %bb.1:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.1, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$100, %esi
	callq	_ZNSolsEi@PLT
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	$1, -12(%rbp)
	jmp	.LBB2_7
.LBB2_2:
	movl	-8(%rbp), %edi
	callq	_Z14printFibonaccii
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_ZN9FibonacciIiEC2Eii
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZlsRSoRK9FibonacciIiE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.3, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZlsRSoRK9FibonacciIiE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	$0, -4(%rbp)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	leaq	-24(%rbp), %rdi
	callq	_ZN9FibonacciIiE4nextEv
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	%eax, %esi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_3
.LBB2_6:
	movl	$5, %edi
	movl	$3, %esi
	callq	_Z8multiplyii
	movl	%eax, -28(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.4, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.5, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	.LCPI2_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	$0, -12(%rbp)
.LBB2_7:
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z14printFibonaccii             # -- Begin function _Z14printFibonaccii
	.p2align	4, 0x90
	.type	_Z14printFibonaccii,@function
_Z14printFibonaccii:                    # @_Z14printFibonaccii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -4(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.6, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	-12(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	-4(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	$1, -8(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	_Z3addIiET_S0_S0_
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	global_counter, %eax
	addl	$1, %eax
	movl	%eax, global_counter
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.7, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	global_counter, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z14printFibonaccii, .Lfunc_end3-_Z14printFibonaccii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9FibonacciIiEC2Eii,"axG",@progbits,_ZN9FibonacciIiEC2Eii,comdat
	.weak	_ZN9FibonacciIiEC2Eii           # -- Begin function _ZN9FibonacciIiEC2Eii
	.p2align	4, 0x90
	.type	_ZN9FibonacciIiEC2Eii,@function
_ZN9FibonacciIiEC2Eii:                  # @_ZN9FibonacciIiEC2Eii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-4(%rbp), %ecx
	movl	%ecx, 4(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN9FibonacciIiEC2Eii, .Lfunc_end4-_ZN9FibonacciIiEC2Eii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZlsRSoRK9FibonacciIiE,"axG",@progbits,_ZlsRSoRK9FibonacciIiE,comdat
	.weak	_ZlsRSoRK9FibonacciIiE          # -- Begin function _ZlsRSoRK9FibonacciIiE
	.p2align	4, 0x90
	.type	_ZlsRSoRK9FibonacciIiE,@function
_ZlsRSoRK9FibonacciIiE:                 # @_ZlsRSoRK9FibonacciIiE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.8, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	-8(%rbp), %rcx
	movl	(%rcx), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZlsRSoRK9FibonacciIiE, .Lfunc_end5-_ZlsRSoRK9FibonacciIiE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9FibonacciIiE4nextEv,"axG",@progbits,_ZN9FibonacciIiE4nextEv,comdat
	.weak	_ZN9FibonacciIiE4nextEv         # -- Begin function _ZN9FibonacciIiE4nextEv
	.p2align	4, 0x90
	.type	_ZN9FibonacciIiE4nextEv,@function
_ZN9FibonacciIiE4nextEv:                # @_ZN9FibonacciIiE4nextEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-4(%rbp), %ecx
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZN9FibonacciIiE4nextEv, .Lfunc_end6-_ZN9FibonacciIiE4nextEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z3addIiET_S0_S0_,"axG",@progbits,_Z3addIiET_S0_S0_,comdat
	.weak	_Z3addIiET_S0_S0_               # -- Begin function _Z3addIiET_S0_S0_
	.p2align	4, 0x90
	.type	_Z3addIiET_S0_S0_,@function
_Z3addIiET_S0_S0_:                      # @_Z3addIiET_S0_S0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_Z3addIiET_S0_S0_, .Lfunc_end7-_Z3addIiET_S0_S0_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_fibonacci.cpp
	.type	_GLOBAL__sub_I_fibonacci.cpp,@function
_GLOBAL__sub_I_fibonacci.cpp:           # @_GLOBAL__sub_I_fibonacci.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_GLOBAL__sub_I_fibonacci.cpp, .Lfunc_end8-_GLOBAL__sub_I_fibonacci.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	global_counter,@object          # @global_counter
	.bss
	.globl	global_counter
	.p2align	2
global_counter:
	.long	0                               # 0x0
	.size	global_counter, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\350\257\267\350\276\223\345\205\245fibonacci\346\225\260\345\210\227\347\232\204\351\225\277\345\272\246: "
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\350\276\223\345\205\245\351\225\277\345\272\246\350\266\205\350\277\207\344\272\206\346\234\200\345\244\247\351\231\220\345\272\246 ("
	.size	.L.str.1, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	")!"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\344\275\277\347\224\250\351\207\215\350\275\275\350\277\220\347\256\227\347\254\246<< : "
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"5 \344\271\230\344\273\245 3 \347\232\204\347\273\223\346\236\234\346\230\257: "
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\345\234\206\345\221\250\347\216\207PI\347\232\204\345\200\274\346\230\257: "
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Fibonacci\346\225\260\345\210\227:"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Fibonacci\347\224\237\346\210\220\350\256\241\346\225\260: "
	.size	.L.str.7, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Fibonacci\346\225\260\345\210\227: "
	.size	.L.str.8, 18

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_fibonacci.cpp
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
