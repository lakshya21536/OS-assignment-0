extern printf
extern scanf
global main

section .text
main:
	push rbp
	mov rdi, inputs
	mov rsi, var
	mov rax,0
	call scanf

	mov rdi, var 
	mov rax,0
	call printf

	mov rdi, nl
	mov rax, 0
	call printf

	mov rdi, inputi
	mov rsi, integ
	mov rax, 0
	call scanf

	mov rdi, inputi
	mov rsi, [integ]
	mov rax, 0
	call printf

	pop rbp
	ret

section .bss
var  resb 4
integ  resb 4

section .data
nl : db 10 , 0
inputs : db "%s", 0
inputi : db "%d", 0



