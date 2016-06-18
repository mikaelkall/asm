/*
    *****************************************************
    *    Linux/x86_64 hello world shellcode 51 bytes    *
    *****************************************************
    *	  	  Author: Mikael kall		                *
    *****************************************************
    *   E-mail: kall.micke@gmail.com                    *
    *****************************************************

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
*/

#include <stdio.h>
#include <string.h>
 
char *shellcode = "\xeb\x1e\x5e\x48\x31\xc0\xb0\x01\x48\x89\xc7\x48\x89\xfa\x48\x83\xc2\x0e"
                  "\x0f\x05\x48\x31\xc0\x48\x83\xc0\x3c\x48\x31\xff\x0f\x05\xe8\xdd\xff\xff"
                  "\xff\x48\x65\x6c\x6c\x6f\x2c\x20\x77\x6f\x72\x6c\x64\x21\x0a";

int main(void)
{
    fprintf(stdout,"Length: %d\n",strlen(shellcode));
    (*(void(*)()) shellcode)();
    return 0;
}
