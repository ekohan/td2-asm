section .text
global _start

_start:

    ; push operation
    mov rax, 123 ; mover el valor 123 al registro rax
    push rax     ; apilar el valor del registro rax

    ; pop operation
    pop rdx      ; desapilar el valor superior de la pila al registro rdx

    ; aquí rdx contendrá 123

    ; Salida
    mov eax, 60 ; sys_exit
    mov edi, edx ; ponemos el valor encontrado en la pila como código de salida
    syscall 
