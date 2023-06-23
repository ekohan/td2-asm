section .data
    num dq 17 ; El número a comprobar

section .text
    global _start
    _start:

    ; COMPLETAR
    ;
    ;   bool IsPowerOfTwo(ulong x)
    ;   {
    ;       return (x & (x - 1)) == 0;
    ;   }
    ;
    ; https://stackoverflow.com/questions/600293/how-to-check-if-a-number-is-a-power-of-2

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