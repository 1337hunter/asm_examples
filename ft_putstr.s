global	ft_putstr
extern	malloc

section	.text
ft_putstr:
	push	rsi
	push	rdx
	mov	rsi, rdi
	mov	rdi, 1
	xor	rcx, rcx
	mov	rdx, 1
	mov	rax, 1
	
.loop:
	cmp	byte [rsi], 0
	je	.return ;jl, je, jg
	syscall
	call	malloc wrt ..plt
	cmp	rax, 0
	jg	.return
	mov	rax, 1
	inc	rcx
	inc	rsi
	jmp	.loop

.return:
	pop	rdx
	pop	rsi
	ret
