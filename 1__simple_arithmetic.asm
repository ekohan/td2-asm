section .data  ; Esta sección se usa para declarar variables y datos constantes
  
    ; En assembly, una "variable" es solamente un espacio reservado en memoria al que 
    ; referenciamos a través de una etiqueta.  
    ; Por ejemplo, cuando definimos la "variable" `num1 dq 10`, 
    ; lo que estamos haciendo es decirle al ensamblador que reserve una palabra quadruple (8 bytes, 64 bits)
    ; de memoria para nosotros, y que la inicie con el valor 10.
    ; Luego, `num1` actúa como una etiqueta que apunta a esta ubicación de memoria.

    num1 dq 10          ; El primer número ("dq" significa "define quadruple")
    num2 dq 2           ; El segundo número
    resAdd dq 0         ; Resultado de la suma entre los dos
    resSub dq 0         ; Resultado de la resta entre los dos
    resMul dq 0         ; Resultado de la multiplicación entre lods dos
    resDiv dq 0         ; Resultado de la división entre los dos
    finalResult dq 0    ; Resultado final a establecer como valor de salida del programa
                        ; finalResult = resAdd * resSub + resMul - resDiv

section .text  ; Esta sección se usa para el código del programa
    global _start
    _start:

    ; carga num1 y num2 en los registros para realizar operaciones
    mov rax, [num1]
    mov rbx, [num2]
    
    ; Sumar num1 y num2 y guardar el resultado en resAdd
    ; TODO: COMPLETAR

    ; Restar num1 y num2 y guardar el resultado en resSub
    ; TODO: COMPLETAR
    
    ; Multiplicar num1 y num2 y guardar el resultado en resMul
    ; TODO: COMPLETAR
    
    ; Dividir num1 y num2 y guardar el resultado en resDiv
    ; TODO: COMPLETAR

    ; Calcula finalResult = resAdd * resSub + resDiv - resMul
    ; TODO: COMPLETAR

    ; Establecer el resultado final como valor de salida del programa
    mov edi, dword [finalResult] ; Ahora usamos edi aquí porque es donde el sistema operativo espera un valor de 32 bits para la salida.
    
    ; termina el programa
    mov eax, 60
    syscall
