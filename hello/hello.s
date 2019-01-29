.data
hello:
    .ascii "Hello world!\n%d\n\0"

.text

.global main

main:
    push {lr}

    ldr r0, address_of_hello
    mov r1, #5
    bl printf


    pop {lr}
    bx lr


address_of_hello:
    .word hello

.global printf
