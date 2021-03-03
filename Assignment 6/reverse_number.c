#include<stdio.h>
#include<string.h>

int main() {
    // Declare variables
    int num;
    int reverse = 0;
    float remainder;
    // Steps:
    /*1. Accept input from user.
    2. Reverse the number.*/
    printf("Enter an integer: ");
    scanf("%d", &num);
    while (num != 0) {
        remainder = num % 10;
        reverse = reverse * 10 + remainder;
        num /= 10;
    }
    /* Display
    reversed number. */
    printf("Original number = %d",num);
    printf("Reversed number = %d", reverse);

    return 0;
}
