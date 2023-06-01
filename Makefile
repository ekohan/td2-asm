# Variables
NASM = nasm
LD = ld
NASMFLAGS = -f elf64 -g -F DWARF
LDFLAGS = -m elf_x86_64
SRCS = $(wildcard *.asm)
OBJS = $(SRCS:.asm=.o)
EXECS = $(SRCS:.asm=)

.PHONY: all clean

all: $(EXECS)

# Rule to convert .s to .o
$(OBJS): %.o: %.asm
	$(NASM) $(NASMFLAGS) $< -o $@

# Rule to convert .o to (executable)
$(EXECS): %: %.o
	$(LD) $(LDFLAGS) $< -o $@

clean:
	rm -f $(OBJS) $(EXECS)
