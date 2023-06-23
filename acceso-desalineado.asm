section .data
    mem: times 64 db 0   ; Define 64 bytes de memoria

section .text
    global _start
_start:
    mov rdi, mem         ; rdi contiene la dirección de inicio de la memoria

loop:
    mov ax, word [rdi]   ; Carga 2 bytes desde la dirección de memoria en rdi
    add rdi, 1           ; Incrementa rdi por 1 byte
    cmp rdi, mem+64      ; Compara rdi con mem+64
    jne loop             ; Si rdi no es igual a mem+64, salta a 'loop'

    ; Termina el programa
    mov eax, 60          ; Código del sistema para salir
    xor edi, edi         ; Establece el código de estado de salida a 0
    syscall              ; Realiza una llamada al sistema para terminar
