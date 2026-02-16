.global main
.func main
.thumb_func

.data
.balign 4

delay:  .word 1000
count:  .word 0x00000001
msg:    .asciz "Hello World, count is %d\n"

.text
main:
    bl stdio_init_all
loop:
    ldr r0, =delay 
    ldr r0, [r0]
    bl sleep_ms
    
    ldr r0, =msg
    ldr r1, =count
    ldr r1, [r1]
    bl printf
    ldr r1, =count
    ldr r1, [r1]
    add r1, r1, #1
    ldr r0, =count @is the label count still associated with with r1? what value is being thrown intp r0 here?
    str r1, [r0]
    b loop

