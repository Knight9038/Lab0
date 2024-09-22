	.text
	.file	"ifwhile.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, 20(%rsp)
	movl	$0, 12(%rsp)
	movq	.str@GOTPCREL(%rip), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	movl	16(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	movq	.str.1@GOTPCREL(%rip), %rdi
	cmpl	%ecx, %eax
	je	.LBB0_1
# %bb.2:
	movq	.str.3@GOTPCREL(%rip), %rsi
	jmp	.LBB0_3
.LBB0_1:
	movq	.str.2@GOTPCREL(%rip), %rsi
.LBB0_3:
	xorl	%eax, %eax
	callq	printf@PLT
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	shll	20(%rsp)
	incl	12(%rsp)
	jmp	.LBB0_4
.LBB0_6:
	movl	20(%rsp), %esi
	movq	.str.5@GOTPCREL(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.asciz	"%s\n"
	.size	.str.1, 4

	.type	.str.2,@object                  # @.str.2
	.globl	.str.2
.str.2:
	.asciz	"\350\277\231\346\230\257\344\270\200\344\270\252\345\201\266\346\225\260"
	.size	.str.2, 19

	.type	.str.3,@object                  # @.str.3
	.globl	.str.3
.str.3:
	.asciz	"\350\277\231\346\230\257\344\270\200\344\270\252\345\245\207\346\225\260"
	.size	.str.3, 19

	.type	.str.5,@object                  # @.str.5
	.globl	.str.5
.str.5:
	.asciz	"%d\n"
	.size	.str.5, 4

	.section	".note.GNU-stack","",@progbits
