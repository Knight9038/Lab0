	.text
	.file	"sort.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -16
	movl	$0, 8(%rsp)
	movq	.str@GOTPCREL(%rip), %rdi
	movq	.str.1@GOTPCREL(%rip), %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	.str.2@GOTPCREL(%rip), %rbx
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	24(%rsp), %eax
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	8(%rsp), %rax
	leaq	32(%rsp,%rax,4), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	incl	8(%rsp)
	jmp	.LBB0_1
.LBB0_3:
	movl	$0, 20(%rsp)
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	incl	20(%rsp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movl	8(%rsp), %eax
	decl	%eax
	cmpl	%eax, 20(%rsp)
	jge	.LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$0, 12(%rsp)
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=2
	incl	12(%rsp)
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	20(%rsp), %eax
	notl	%eax
	addl	8(%rsp), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movslq	12(%rsp), %rax
	movl	32(%rsp,%rax,4), %ecx
	cmpl	36(%rsp,%rax,4), %ecx
	jle	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	movslq	12(%rsp), %rax
	movl	32(%rsp,%rax,4), %ecx
	movl	36(%rsp,%rax,4), %edx
	movl	%ecx, 28(%rsp)
	movl	%edx, 32(%rsp,%rax,4)
	movl	%ecx, 36(%rsp,%rax,4)
	jmp	.LBB0_9
.LBB0_11:
	movl	$0, 16(%rsp)
	movq	.str.3@GOTPCREL(%rip), %rbx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax
	cmpl	8(%rsp), %eax
	jge	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movslq	16(%rsp), %rax
	movl	32(%rsp,%rax,4), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	incl	16(%rsp)
	jmp	.LBB0_12
.LBB0_14:
	movq	.str.4@GOTPCREL(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$128, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	.asciz	"%s\n"
	.size	.str, 4

	.type	.str.1,@object                  # @.str.1
	.globl	.str.1
.str.1:
	.asciz	"\350\257\267\350\276\223\345\205\245\346\225\264\345\236\213\346\225\260\347\273\204\351\225\277\345\272\246\357\274\210\350\256\276\347\275\256\344\272\206\346\234\200\351\225\277\344\270\27220\357\274\211"
	.size	.str.1, 54

	.type	.str.2,@object                  # @.str.2
	.globl	.str.2
.str.2:
	.asciz	"%d"
	.size	.str.2, 3

	.type	.str.3,@object                  # @.str.3
	.globl	.str.3
.str.3:
	.asciz	"%d "
	.size	.str.3, 4

	.type	.str.4,@object                  # @.str.4
	.globl	.str.4
.str.4:
	.asciz	"\n"
	.size	.str.4, 2

	.section	".note.GNU-stack","",@progbits
