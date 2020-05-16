.LC0:
	.string "Fuck"
	.text
	.globl	main
	.type	main, @function

main:
	push	%rbp
	mov	%rsp, %rbp 
	sub	$16, %rsp
	leaq	.LC0(%rip), %rdi
	call	puts
	mov	%rdi, %rax
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
