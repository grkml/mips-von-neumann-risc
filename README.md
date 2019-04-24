# MIPS CPU RISC Architecture
The MIPS (Microprocessor without Interlocked Pipeline Stages) Assembly language is designed to work with the MIPS microprocessor paradigm designed by J. L. Hennessy in 1981. These RISC microprocessors have grown into a family of 32-bit and 64-bit CPUs, each one improving performance and adding functionality over the previous releases. Today, MIPS implementations are primarily used in embedded systems such as Windows CE devices, home routers, and video game consoles. Tesla even uses a MIPS-based Mobileye EyeQ3 computer vision chip that allows autonomous driving capabilities in the Model S!

<p align="center">
  <img width="60%" src="https://github.com/gurkamalpsc/mips-risc-architecture/blob/master/img/sony_playstation_mips.jpg">
</p>
<p align="center">
  Fun Fact - The original PlayStation integrated a MIPS R3000A 33.86 MHz CPU
</p>
               
## Data Types Terminology
#### Byte (8 bits)
* ASCII characters
* C++ ```char```
* C++ ```unsigned char```
#### Halfword (16 bits)
* Java & C++ ```short```
* Java ```char```
#### Word (32 bits)
* Java ```int```
* Java ```float```
* C++ ```long```
#### Doubleword (64 bits)
* Java ```double```

## Von Neumann Architecture
The MIPS CPU follows Von Neumann architecture and only keeps 32 registers (data storage locations) in the CPU itself. During operation data is stored to and loaded from memory as needed, "spilling" or emptying the registers in the process.
<p align="center">
  <img width="40%" src="https://github.com/gurkamalpsc/mips-risc-architecture/blob/master/img/von_neumann.jpg">
</p>
<p align="center">
  Von Neumann Model
</p>

## 32 Registers in a MIPS CPU
A MIPS CPU has 32 locations that it can store data. The registers are similar to variables in a programming language. In fact, when a language such as C++ or Java compiles to assembly, variables names are designated register or memory locations at various points in the program.

| Register | Mnemonic Name | Purpose |
| -------- | ------------- | ------------------|
| 0        | $zero         | the value 0 |
| 1        | $at           | (assembler temporary) Reserved by the assembler |
| 2-3      | $v0 - $v1     | (values) from expression evaluation and function results |
| 4-7      | $a0 - $a3     | (arguments) First four parameters for subroutine. Not preserved across procedure calls |
| 8-15     | $t0 - $t7     | (temporaries) Caller saved if needed. Subroutines can use w/out saving. Not preserved across procedure calls |
| 16-23    | $s0 - $s7     | (saved values) Callee saved. A subroutine using one of these must save original and restore it before exiting. Preserved across procedure calls |
| 24-25    | $t8 - $t9     | (temporaries) Caller saved if needed. Subroutines can use w/out saving. Not preserved across procedure calls |
| 26-27    | $k0 - $k1     | (kernel) Reserved for use by the operating system kernel. |
| 28       | $gp           | (global pointer) Points to the middle of the 64K block of memory in the static data segment. |
| 29       | $sp           | (stack pointer) Points to last location on the stack. |
| 30       | $s8 or $fp    | (saved value / frame pointer) Preserved across procedure calls |
| 31       | $ra           | (return address) |

## MIPS Assembly Language Structure (.asm files)
```
# example.asm
#
#
        .data         #
                      # Data Declarations........
                      
        .text         #
main:                 # Instruction 1
                      # Instruction 2
                      # ...
                      
        li    $v0, 10 # system call code for exit = 10
              syscall # call operating system
```
#### Data Section (.data)
Contains variables and associated data sizes that will eventually be stored in a register or RAM (memory) location.
#### Code Section (.text)
Contains the MIPS assembly language instructions.
