section .data
    msg db 'hello world!', 0xA
    tam equ $- msg
    msgC db 'Hello world', 0xA

section .text

global _start

_start:
    ; na saida pradao
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80
    ; destino , origem EAX = 1
    mov EAX, 0x1 ; -> terminando programa
    mov EBX, 0x0 ;valor de retorno padrao -> o valor de retorno e 0
    int 0x80 ; -> faz com que execute todas as mov

;; linkeditar - pegar um progama em ling de maquina  e transformar para um executavel
;; ld -s -o hello hello.o
