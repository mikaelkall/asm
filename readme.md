# asm

This is a collection of shellcodes modified or written by me.\
If you don't know what shellcode is here is a short explanation

Shellcode is a small piece of code used as the payload in the exploitation of a software vulnerability. It is called "shellcode" because it typically starts a command shell from which the attacker can control the compromised machine, but any piece of code that performs a similar task can be called shellcode. Because the function of a payload is not limited to merely spawning a shell

### Usage

```sh
$ cd shellcode/[rickrollrc] 
$ make
$ ./rickrasm
```

### rickrollrc.asm

This shellcode play Rick Astley’s “Never Gonna Give You Up” in your terminal.
It downloads and execute this script https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh

You can use the files in the tools folder to easy modify above shellcode to point to another url and payload.

### hello.asm

A 64bit hello world shellcode first shellcode written by me from scratch.
