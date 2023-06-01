section .data
    ; Los números de los que queremos encontrar el máximo
    nums    db 2, 3, 1, 5, 6, 4
    length  equ $-nums

section .text
    global _start

_start:
    ; rax: Mantiene el valor máximo encontrado hasta ahora
    ; Cargamos el primer número en rax para comparar con los demás
    movzx eax, byte [nums]

    ; rcx: Usado para recorrer la lista de números
    ; Empezamos desde el segundo número, porque el primero ya está en rax
    mov ecx, 1

.loop:
    ; Comprobar si hemos recorrido todos los números
    cmp ecx, length
    jge .done

    ; rdi: Almacena el valor del número actual de la lista
    ; Comparamos el número actual con el máximo encontrado hasta ahora
    movzx edi, byte [nums + rcx]
    cmp edi, eax
    jle .next

    ; Si el número actual es mayor, actualizamos rax (el máximo encontrado)
    mov eax, edi

.next:
    ; Pasamos al siguiente número incrementando rcx
    inc ecx
    jmp .loop

.done:
    ; Usamos el valor máximo encontrado (en rax) como el código de salida
    ; Antes de salir del programa, movemos este valor a rdi, porque sys_exit usa rdi como el código de salida
    mov edi, eax

    ; Salimos del programa con sys_exit (número de llamada al sistema: 60)
    mov eax, 60
    syscall
