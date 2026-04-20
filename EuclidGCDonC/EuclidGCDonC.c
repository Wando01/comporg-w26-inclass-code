#include <stdio.h>

int gcd(int a, int b)
{
    while (a != b)
    {
        if (a > b)
            a = a - b;
        else
            b = b - a;
    }
    return a;
}

int main(int argc, char* argv[])
{
    /* S# is S563917 */
    int a, b, result;

    while (1)
    {
        a = 91;
        b = 17;
        result = gcd(a, b);
        printf("GCD of a=%d and b=%d is %d\n", a, b, result);

        a = 13;
        b = 7;
        result = gcd(a, b);
        printf("GCD of a=%d and b=%d is %d\n", a, b, result);

        a = 36;
        b = 24;
        result = gcd(a, b);
        printf("GCD of a=%d and b=%d is %d\n", a, b, result);
    }

    return 0;
}