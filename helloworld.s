format ELF64 executable 3

segment readable executable

entry main

main:
    lea rsi, [msg]
    mov rdx, msg_len
    mov rdi, 1               ; stdout
    mov rax, 1               ; sys_write
    syscall
    xor rdi, rdi             ; exit code 0
    mov rax, 60              ; sys_exit
    syscall

segment readable writable

msg db 'Hello World!', 10
msg_len equ $ - msg