section .data
    question db "What is your name? "
    greeting db "Hey, "

section .bss
    name resb 16

section .text
    global _start

_start:
    call _printQuestion
    call _getname
    call _printGreeting
    call _printName

    mov rax, 60
    mov rdi, 0
    syscall

_getname:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret

_printQuestion:
    mov rax, 1
    mov rdi, 1
    mov rsi, question
    mov rdx, 19
    syscall
    ret

_printGreeting:
    mov rax, 1
    mov rdi, 1
    mov rsi, greeting
    mov rdx, 5
    syscall
    ret

_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret

