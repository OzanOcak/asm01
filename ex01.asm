section .data
   bVar1    db  4
   bVar2    db  3
   bResult  db  0

section .text
global _start
_start:
   mov al,byte[bVar1]
   add al,byte[bVar2]
   mov byte[bResult],al
exit:
   mov rax,60
   mov rdi,0
   syscall
