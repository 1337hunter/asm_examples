global	ft_putchar

;section .data

section .text
ft_putchar:
	push	rsi
	mov	rsi, rdi
	mov	rdi, 1
	mov	rdx, 1
	mov	rax, 1
	push	rsi
	mov	rsi, rsp
	syscall
	pop	rsi
	pop	rsi
	ret


;stack
;push rsi
;rsi
;push rsi
;rsi, rsi
;pop
;rsi
;pop
;
