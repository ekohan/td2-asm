# Study notes, drafts, things to say, some antefinal order

- Los "programas" y los "datos" se guardan en la memoria de la misma manera. No hay diferencia en cómo se ven. Sólo que la máquina los _interpreta_ de distinta manera: datos que son datos y datos que son instrucciones.


- Diferenciar memoria y registros. Registros: memoria súper veloz que está dentro del procesador. 
	- Register
		- Lo que la máquina usa para "computar"... "a la mano"
		- Tamaño de un register: "word" size. x86 -> 4 bytes. Entonces, lo normal es computar "4 bytes a la vez" 
			- No va a ser el caso con OrgaSmall. Checkear.
		- Asumimos que un address entra en un reg. Addr -> 4 bytes
		- "The only way the computer knows that a memory location is an instruction is that a special-purpose register called the instruction pointer points to them at one point or another. If the instruction pointer points to a memory word, it is loaded as an instruction. Other than that, the computer has no way of knowing the difference between programs and other types of data."

- Connect with Fetch / Decode / Execute cycle.

- Procucar conectar con C.


- Tres niveles de lenguajes. 
	- 1) Código de máquina
	- 2) Assembly
		- Lo mismo que CdM pero los comandos son reemplazados por keywords más claras para los humanos.
		- Y algunos trucos extra.
	- 3) Lenguaje de alto nivel

- The Hardware / Software interface

- Modos de direccionamiento / Data Accessing Methods
	- "Processors have a number of different ways of accessing data, known as addressing modes."
		- 1) immediate mode -- in which the data to access is embedded in the instruction itself
		- 2) register addressing mode -- the instruction contains a register to access
		- 3) direct addressing mode -- the instruction contains the memory address to access. For example, I could say, please load this register with the data at address 2002. The computer would go directly to byte number 2002 and copy the contents into our register
		- 4) indexed addressing mode -- the instruction contains a memory address to access, and also specifies an index register to offset that address. For example, we could specify address 2002 and an index register. If the index register contains the number 4, the actual address the data is loaded from would be 2006. This way, if you have a set of numbers starting at location 2002, you can cycle between each of them using an index register. On x86 processors, you can also specify a multiplier for the index. This allows you to access memory a byte at a time or a word at a time (4 bytes)
		- 5) indirect addressing mode -- the instruction contains a register that contains a pointer to where the data should be accessed. For example, if we used indirect addressing mode and specified the %eax register, and the %eax register contained the value 4, whatever value was at memory location 4 would be used
		- 6) base pointer addressing mode -- This is similar to indirect addressing, but you also include a number called the offset to add to the register’s value before using it for lookup.


## Un programa

(Source Code) -- assembly process --> (object file -- falta *linkear*) --> machine runnable code

Explicar el **linkeo** en el contexto de programas más grandes.

- Partes

Algunas de las líneas que vemos no se traducen a instrucciones, sino que son directivas para el _ensamblador_. Los comentarios se ignoran. Las líneas que empiezan con un punto (".section xxx") separa el programa en parte.

### .section .data

- Memoria que vamos a necesitar
- ¿Cómo lo vinculo a C?


### .section .text

- Las instrucciones.

### Symbols / Labels / Etiquetas

- Para no tener que trackear las direcciones nosotros. Luego el ensamblador las reemplaza por las direcciones. 

- ".globl start". .globl el ensamblador no lo tiene que descartar (?). "_ start" marca el comienzo del programa.




# Class Outline

1. (The theory summarized from the above notes.)
2. Exercise 1: Simple Arithmetic Operations: Students will write basic assembly programs performing arithmetic operations.
3. Exercise 2: Control Flow in Assembly. Create a loop with a conditional. 
4. Take-home 1: Procedure Call Convention and Stack Frames (No hace falta que lo prepare a full)
5. Take-home 2: Interfacing Assembly with High-Level Language or the OS. Interrupts and System Calls. Simulating a System Call.
6. Appendix: Dejar ejemplos de ASM tomados de libro
	- 1. 
