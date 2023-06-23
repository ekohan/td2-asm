section .data
    num db 213 ; El numero en decimal a testear. Cambiar para ver distintos casos. (85, 213, 245, 253, 255...)
    mask db 85 ; Mascara con bits en posiciones pares igual a 1 (01010101 en binario).

section .text
    global _start
    _start:
    
    ; Cargar numero y mascara en registros de trabajo
    ; COMPLETAR

    ; Comparar numero y mascara. ¿Que operación uso?
    ; COMPLETAR

    ; Comparar el resultado con la mascara
    ; COMPLETAR

    ; Saltar a la etiqueta apropiada. Setteamos el codigo de salida del programa de acuerdo al resultado de la comparacion.
    ; COMPLETAR

even_bits_set:
    mov eax, 60
    xor edi, 0
    syscall

even_bits_not_set:
    mov eax, 60
    mov edi, 1
    syscall


