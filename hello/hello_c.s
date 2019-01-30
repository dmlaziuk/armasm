.data
hello:
    .ascii "Hello world!\n"
hello_end:

.set hello_size, hello_end - hello

.text

.global main

main:
    push {r4, lr}

    mov r0, #1
    ldr r1, address_of_hello
    mov r2, #hello_size
    bl write

    mov r0, #0
    pop {r4, lr}
    bx lr


address_of_hello:
    .word hello

.global write
