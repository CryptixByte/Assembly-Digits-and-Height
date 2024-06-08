	.intel_syntax noprefix

	.text
	.global main

main:
	push	rbp
	mov	rbp, rsp
	
	movq	xmm0, [rip + velocity] 
	mulsd	xmm0, xmm0
	movq	xmm1, [rip + earth]
	mulsd	xmm0, [rip + half]
	divsd	xmm0, xmm1
	movq	[rip + height], xmm0
	
	mov	rax, 0
	pop	rbp
	ret
	
	.data
velocity: .double 200	

	.bss
height: .zero 8 

	.section .rodata
earth:	.double 9.8
mars:	.double 3.7
moon:	.double 1.6
half:	.double 0.5
