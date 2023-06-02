section .data
    ; Los números de los que queremos encontrar el máximo
    nums    dd 2, 3, 1, 5, 6, 4
    length  equ $-nums    ; longitud del arreglo en *bytes*

section .text
    global _start

_start:
    ; eax: Mantiene el valor máximo encontrado hasta ahora
    ; Cargamos el primer número en eax para comparar con los demás
    mov eax, [nums]

    ; ecx: Usado para recorrer la lista de números
    ; Empezamos desde el segundo número, porque el primero ya está en eax
    mov ecx, 1

.loop:
    ; Comprobar si hemos recorrido todos los números
    cmp ecx, length/4
    ; TODO: COMPLETAR
    
    ; edi: Almacena el valor del número actual de la lista
    ; Comparamos el número actual con el máximo encontrado hasta ahora
    ; TODO: COMPLETAR

    ; Si el número actual es mayor, actualizamos eax (el máximo encontrado)
    ; TODO: COMPLETAR

.next:
    ; Pasamos al siguiente número incrementando ecx
    ; TODO: COMPLETAR

.done:
    ; Usamos el valor máximo encontrado (en eax) como el código de salida
    ; Antes de salir del programa, movemos este valor a edi, porque sys_exit usa edi como el código de salida
    mov edi, eax

    ; Salimos del programa con sys_exit (número de llamada al sistema: 60)
    mov eax, 60
    syscall
