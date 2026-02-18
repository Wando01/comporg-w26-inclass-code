.global main
.func main
.thumb_func

.data
v1:     .word   3
v2:     .word   15
delay:  .word   1000
msg1:   .asciz  "Condition True"
msg2:   .asciz  "Condition False"

.text
main:
    bl stdio_init_all
loop:
    ldr r0, =delay
    ldr r0, [r0]
    bl sleep_ms

    ldr r1, =v1
    ldr r1, [r1]
    ldr r2, =v2
    ldr r2, [r2]

    cmp r1, r2
    bgt ctrue3 @tells if previous statment is true/false
    b cfalse @branch to false because it will just keep going

ctrue:
    ldr r0, =msg1
    bl puts
    b aftercond
cfalse:
    ldr r0, =msg2
    bl puts @dont have to put branch here because it just goes down the line
aftercond:
    b loop


