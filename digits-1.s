	.intel_syntax noprefix

	.text
	.global main

main:
	push	rbp
	mov	rbp, rsp
	
	mov	rax, [input] 
	mov	rcx, 100 #Divisor for hundreds
	mov	rdx, 0 # Remainder
	div	rcx #Divides input by 100
	mov	[hundreds], rax # Updates Hundreds To Equal rax, [input] / rcx
	
	mov	rax, rdx #Remainder of input
	mov	rcx, 10 #Divisor for tens
	mov	rdx, 0 # Remainder
	div	rcx # Divides rdx by 10
	mov	[tens], rax #Updates tens to equal rax, rdx / rcx
	
	mov	[ones], rdx #Updates ones to equal the remainder of ten
	
	pop	rbp
	ret
	
	.data
input: .quad 999	#quad word integer variable named input

	.bss
ones: .quad 0	#quad word integer variable named ones
tens: .quad 0	#quad word integer variable named ones
hundreds: .quad 0	#quad word integer variable named ones
	
	
