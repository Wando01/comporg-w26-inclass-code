.global main
.func main
.thumb_func

.data
.balign 4

@a and b here 39-17 from snumber
a:      .word   30
b:      .word   15
delay:  .word   1000
ms_a:   .asciz "a is %d\n"
ms_b:   .asciz "b is %d\n"
ms_gcd: .asciz "GCD of a and b is %d\n"

.text
main:
    bl stdio_init_all

loop:
    @load values
    ldr r4, =a
    ldr r4, [r4]
    ldr r5, =b
    ldr r5, [r5]

    @print messages
    ldr r0, =ms_a
    mov r1, r4
    bl printf
    ldr r0, =ms_b
    mov r1, r5
    bl printf

    @move the values
    mov r6, r4
    mov r7, r5

gcd_loop:
    cmp r6, r7
    @Branch if equal, claude helped here
    beq gcd_done 
    @branch if greater
    bgt a_greater

    sub r7, r7, r6
    b gcd_loop

a_greater:
    sub r6, r6, r7
    b gcd_loop



gcd_done:
    
    @print the messages
    ldr r0, =ms_gcd
    mov r1, r6
    bl printf

    @idk why but i had to put this to help
    ldr r0, =delay
    ldr r0, [r0]
    bl sleep_ms

    b loop