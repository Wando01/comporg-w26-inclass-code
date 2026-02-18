.global main
.func main
.thumb_func

.data
.balign 4
x:      .word   3
y:      .word   15
delay:  .word   1000
ms1:    .asciz "x:%d\n"
ms2:    .asciz "x:%d, y:%d\n"

.text
main:
    bl stdio_init_all
loop:
    ldr r0, =delay
    ldr r0, [r0]
    bl sleep_ms

    ldr r1, =x
    ldr r1, [r1]
    ldr r2, =y
    ldr r2, [r2]
    cmp r1, r2

    bge aftercond

    add r1, r1, #2
    ldr r3, =x
    str r1, [r3]
    ldr r0, =ms1
    bl printf

aftercond:
    ldr r0, =ms2
    ldr r1, =x
    ldr r1, [r1]
    ldr r2, =y
    ldr r2, [r2]
    bl printf
    b loop
