.data

.align 4
num_1:
    .word 1
num_2:
    .word 2
ptr_to_num:
    .word

.text

main:
    push {lr}

    ldr r0, adr_of_ptr      /* r0 = &ptr_to_num     */
    ldr r1, adr_of_num_1    /* r1 = &num_1          */
    str r1, [r0]            /* ptr_to_num = &num_1  */
    ldr r2, [r0]            /* r2 = &num_1          */
    ldr r0, [r2]            /* r0 = num_1           */

    pop {lr}
    bx lr


adr_of_num_1:
    .word num_1
adr_of_num_2:
    .word num_2
adr_of_ptr:
    .word ptr_to_num

.global main
