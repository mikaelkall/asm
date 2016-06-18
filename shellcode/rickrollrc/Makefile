all:
	nasm -f elf ./rickrollrc.asm -o rickrollrc.o
	ld -m elf_i386 -o rickrasm rickrollrc.o
	gcc -m32 -fno-stack-protector -z execstack -o rickrollrc rickrollrc.c
clean:
	rm -f rickrollrc && rm -f rickrollrc.o && rm -f rickrasm 
