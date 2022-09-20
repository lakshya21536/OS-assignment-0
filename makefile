make:
	yasm -f elf64 -o A1.o A1.asm
	gcc -static -o A1 A1.o
run:
	./A1
