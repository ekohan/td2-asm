section .data
    num dq 17 ; El número a comprobar

section .text
    global _start
    _start:

    mov rax, [num] ; Carga el número en el registro rax
    mov rbx, rax   ; Guarda el número en el registro rbx

    dec rax ; Resta 1 al número

    and rax, rbx ; Realiza una operación AND a nivel de bits entre el número original y el número decrementado

    cmp rax, 0 ; Compara el resultado con 0
    je is_power_of_2
    jmp not_power_of_2

is_power_of_2:
    mov eax, 60
    xor edi, 0
    syscall

not_power_of_2:
    mov eax, 60
    xor edi, 1
    syscall