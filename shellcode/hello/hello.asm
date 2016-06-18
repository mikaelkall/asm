; 64-bit "Hello World!" in Linux NASM
; Mikael Kall  [ kall.micke@gmail.com ]
; 
; Zero null bytes so it can be injected into a buffer.
; Wrote since could not find any shellcode in 64 bit that had
; zero null bytes.
;
; nasm -f elf64 ./hello.asm -o hello.o
; ld -s -o hello hello.o 

global _start   
_start:         
    jmp short string

code:
    pop rsi
    xor rax, rax
    mov al, 1
    mov rdi, rax
    mov rdx, rdi 
    add rdx, 14
    syscall 

    xor rax, rax 
    add rax, 60
    xor rdi, rdi 
    syscall
    
string:
    call code
    db  'Hello, world!',0x0A
