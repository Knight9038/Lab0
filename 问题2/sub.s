	.text
	.file	"sub.ll"
	.globl	sub                             # -- Begin function sub
	.p2align	4, 0x90
	.type	sub,@function
sub:                                    # @sub
	.cfi_startproc
# %bb.0:                                # %L0
	movl	%edi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movl	-8(%rsp), %eax
	subl	-12(%rsp), %eax
	movl	%eax, -4(%rsp)
	retq
.Lfunc_end0:
	.size	sub, .Lfunc_end0-sub
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %L0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	.str@GOTPCREL(%rip), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	movl	8(%rsp), %edi
	movl	4(%rsp), %esi
	callq	sub@PLT
	movl	%eax, 12(%rsp)
	movq	.str.1@GOTPCREL(%rip), %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.str,@object                    # @.str
	.section	.rodata,"a",@progbits
	.globl	.str
.str:
	.asciz	"%d"
	.size	.str, 3

	.type	.str.1,@object                  # @.str.1
	.globl	.str.1
.str.1:
	.asciz	"%d\n"
	.size	.str.1, 4

	.section	".note.GNU-stack","",@progbits
