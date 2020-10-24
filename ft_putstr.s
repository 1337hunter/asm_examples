global	ft_putstr

section	.text
ft_putstr:
	push	rsi
	mov	rax, 0
	xor	rax, rax
	mov	rsi, rsi
	mov	rdi, 1
	xor	rcx, rcx
.loop:
	cmp	byte [rsi], 0
	je	.return ;jl, je, jg
	syscall
	inc	rcx
	inc	rsi
	jmp	.loop

.return:
	pop	rdi
	mov	rax, rcx
	ret
