program: main.o asm_functions.o
	gcc -o ../bin/program ../obj/main.o ../obj/asm_functions.o -fno-pie -no-pie

main.o: ../src/main.c
	gcc -c ../src/main.c -o ../obj/main.o

asm_functions.o: ../src/asm_functions.asm
	nasm -g -f elf64 ../src/asm_functions.asm -o ../obj/asm_functions.o -F dwarf
