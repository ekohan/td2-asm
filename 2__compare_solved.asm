section .data
    num1 dq 10  ; Primer número
    num2 dq 20  ; Segundo número
    max  dq 0   ; Aquí almacenaremos el número más grande

section .text
    global _start
    _start:

    ; Cargar num1 en rax
    mov rax, [num1]

    ; Comparar num1 con num2
    cmp rax, [num2]

    ; Si num1 >= num2, saltar a la etiqueta num1_is_max
    jge num1_is_max

    ; Si llegamos aquí, es porque num1 < num2
    mov rax, [num2]
    mov [max], rax
    jmp end

num1_is_max:
    mov rax, [num1]
    mov [max], rax

end:
    ; Configurar el valor de salida del programa
    mov edi, dword [max]

    ; Termina el programa
    mov eax, 60
    syscall
