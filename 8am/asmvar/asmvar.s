.global main
.func main
.thumb_func

.data
.balign 4
count:  .word 0xfffffff9
delay:  .word 1000
msg:    .asciz "Myvar is: %d\n"

.text
main:
    bl stdio_init_all
loop:
    ldr r0, =delay
    ldr r0, [r0]
    bl sleep_ms
    ldr r1, =count
    ldr r1, [r1]
    ldr r0, =msg
    bl printf
    ldr r1, =count
    ldr r1, [r1]
    add r1, r1, #1
    ldr r0, =count
    str r1, [r0]
    b loop
