# Author:       Gurkamal Singh
# Date:         April 23, 2019
# Description:  The MIPS version of "Hello World!""

                .data           # Data Declarations...load string into memory
                                asdf
output_string:  .asciiz         "\nHello, World!\n"

                .text           # Instructions
main:
                li $v0, 4              # system call code for printing string
                la $a0, output_string  # load address of string into $a0
                syscall                # call OS to perform operation
                li $v0, 10             # set up program termination call
                syscall                # tell OS to do termination call