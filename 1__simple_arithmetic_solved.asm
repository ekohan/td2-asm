section .data  
    num1 dq 10
    num2 dq 2
    resAdd dq 0
    resSub dq 0
    resMul dq 0
    resDiv dq 0
    finalResult dq 0

section .text
    global _start
    _start:
    mov rax, [num1]
    mov rbx, [num2]
    
    ; Sumar num1 y num2 y guardar el resultado en resAdd
    add rax, rbx
    mov [resAdd], rax

    ; Restar num1 y num2 y guardar el resultado en resSub
    mov rax, [num1]
    sub rax, rbx
    mov [resSub], rax
    
    ; Multiplicar num1 y num2 y guardar el resultado en resMul
    mov rax, [num1]
    imul rax, rbx
    mov [resMul], rax
    
    ; Dividir num1 y num2 y guardar el resultado en resDiv
    mov rax, [num1]
    div rbx
    mov [resDiv], rax

    ; Calcula finalResult = resAdd * resSub + resDiv - resMul
    mov rax, [resAdd]
    imul rax, [resSub]
    add rax, [resDiv]
    sub rax, [resMul]
    mov [finalResult], rax

    ; Establecer el resultado final como valor de salida del programa
    mov edi, dword [finalResult] ; Ahora usamos edi aquí porque es donde el sistema operativo espera un valor de 32 bits para la salida.
    
    ; termina el programa
    mov eax, 60
    syscall
