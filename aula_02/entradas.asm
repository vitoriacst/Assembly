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

section .data
  msg db "Entre com o seu nome" , LF , NULL
  tam equ $- msg

