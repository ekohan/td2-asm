section .data
    num1 dq 2
    num2 dq 3

section .text
global _start

_start:
    ; pasamos los parámetros para la función sumar
    push 2
    push 3

    ; llamamos a la función sumar
    call sumar

    ; el resultado está en rax

    ; Salida
    mov edi, eax ; el código de salida es el resultado de la suma
    mov eax, 60 ; número de la llamada al sistema (sys_exit)
    syscall ; llamada al sistema operativo


; función sumar
sumar:
    ; call pone la dirección de retorno en la pila
    ; así que vamos a querer conservar este valor
    ; movemos la dirección de retorno a rdx
    pop rdx

    ; sacamos los parámetros de la pila
    pop rdi
    pop rsi

    ; realizamos la suma
    add rdi, rsi

    ; movemos el resultado al registro rax
    mov rax, rdi

    ; reponemos la dirección de retorno
    push rdx

    ; retornamos al llamante
    ret
