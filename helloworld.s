;
; ASM Hello World for Linux X86_64 in FASM syntax
;
; syscall parameters order:
; r9    6th param
; r8    5th param
; r10   4th param
; rdx   3rd param
; rsi   2nd param
; rdi   1st param
; rax   syscall number
;
; syscall index table:
; https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl
;

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
msg_len = $ - msg
