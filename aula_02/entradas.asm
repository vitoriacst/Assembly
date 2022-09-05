segment .data
; parte de uma section
  LF equ 0xA ; line Freed
  NULL equ 0xD ; final da string
  SYS_CALL equ 0x80 ; envia info ao so

  ; EAX
  SYS_EXIT equ 0x1 ; cod chamado para finalizar
  RET_EXIT equ 0x0 ; op realizada com sucesso
  SYS_READ equ 0x3 ; op de leitura
  SYS_WRITE equ 0x4 ; op de escrita

  ;EDX
  RET_EXIT equ 0x0 ; op realizada com sucesso
  STD_IN equ 0x0 ; entrada padrao
  STD_OUT equ 0x1 ; saida padrao
  STD_SIZE equ 0xA

section .data
;; algo constante
  msg db "Entre com o seu nome" , LF , NULL
  tam equ $- msg

section .bss
;; algo variavel
  nome resb 1
  ;; valores em byte en byte

section .text

global _start
 _start:
 // saida
  mov EAX, SYS_WRITE
  mov EDX , STD_OUT
  mov ECX , msg
  mov EDX , tam
  int SYS_CALL

// entrada
  mov EAX, SYS_READ
  mov EDX , STD_IN
  mov ECX , nome
  mov EDX , STD_SIZE
  int SYS_CALL

  mov EAX , SYS_EXIT
  mov EBX , RET_EXIT
  int SYS_CALL
