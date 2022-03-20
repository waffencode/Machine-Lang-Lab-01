all:	
	gcc -c ../src/main.c
	nasm -g -f elf64 ../src/asm_functions.asm -l ../src/asm_functions.lst -F dwarf
	gcc -o ../bin/program ../src/main.o ../src/asm_functions.o -fno-pie -no-pie
