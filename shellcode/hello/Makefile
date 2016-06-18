all: hello.asm
	nasm -f elf64 ./hello.asm -o hello.o 
	ld -s -o helloasm hello.o
	gcc -fno-stack-protector -z execstack -o hello hello.c

clean:
	rm -rf hello hello.o shellcode 
