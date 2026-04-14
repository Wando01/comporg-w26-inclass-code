.global main
.func main
.thumb_func

.data
.balign 4

gpio_oe:    .word   0xd0000024
gpio_on:    .word   0xd0000014
gpio_off:   .word   0xd0000018
delay:      .word   1000
gap:        .word   100

.text
.balign 4

main:
    movs    r0, #26
    bl      gpio_init
    movs    r0, #27
    bl      gpio_init
    movs    r0, #28
    bl      gpio_init
    movs    r0, #29
    bl      gpio_init

    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_oe
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_oe
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_oe
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_oe
    ldr     r2, [r2]
    str     r1, [r2]

    @ digit 9 = 1001, pin26=1 pin27=0 pin28=0 pin29=1
    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_on
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_on
    ldr     r2, [r2]
    str     r1, [r2]

    ldr     r0, =delay
    ldr     r0, [r0]
    bl      sleep_ms

    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    ldr     r0, =gap
    ldr     r0, [r0]
    bl      sleep_ms

    @ digit 1 = 0001, pin26=1 pin27=0 pin28=0 pin29=0
    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_on
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    ldr     r0, =delay
    ldr     r0, [r0]
    bl      sleep_ms

    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    ldr     r0, =gap
    ldr     r0, [r0]
    bl      sleep_ms

    @ digit 7 = 0111, pin26=1 pin27=1 pin28=1 pin29=0
    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_on
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_on
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_on
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    ldr     r0, =delay
    ldr     r0, [r0]
    bl      sleep_ms

    movs    r1, #1
    lsl     r1, r1, #26
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #27
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #28
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

    movs    r1, #1
    lsl     r1, r1, #29
    ldr     r2, =gpio_off
    ldr     r2, [r2]
    str     r1, [r2]

loop:
    b       loop