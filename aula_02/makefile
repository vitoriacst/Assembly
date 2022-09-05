NOME = entradas

all: ${NOME}.o
	ld -s -0 ${NOME} ${NOME}.O

%.o: %.asm
	nasm -f elf64 $<
