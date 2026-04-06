#include <stdio.h> //preprocessor Directive, (the #)
#include "pico/stdlib.h"
#include "hardware/gpio.h"

#define LED 26

int main()
{
    gpip_init(LED);
    gpio_set_dir(26, true);
    bool state = true;

    int intl = 5;
    short mys = 15;
    long myl = 30;
    char myc = 'c';
    stdio_init_all();

    while (true) {
        gpio_put(LED, state);
        state = !state;

        printf("Hello, world!\n");
        printf("Size of short: %d\n", sizeof(mys));
        printf("Size of int: %d\n", sizeof(intl));
        printf("Size of long: %d\n", sizeof(myl));
        printf("Size of char: %d\n", sizeof(myc));
        sleep_ms(1000);
    }
}
