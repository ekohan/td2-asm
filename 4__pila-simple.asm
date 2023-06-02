section .text
global _start

_start:

    ; push operation
    ; mover el valor 123 al registro rax
    ; apilar el valor del registro rax
    ; TODO: completar

    ; pop operation
    ; desapilar el valor superior de la pila al registro rdx
    ; aquí rdx contendrá 123
    ; TODO: completar


    ; Salida
    mov eax, 60 ; sys_exit
    mov edi, edx ; ponemos el valor encontrado en la pila como código de salida
    syscall 
