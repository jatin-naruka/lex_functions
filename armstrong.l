/*armstrong number*/

%option noyywrap
%{
#include <stdio.h>
%}

%%
[0-9]+ {
    int number = atoi(yytext);
    int originalNumber = number;
    int numDigits = 0;
    int sum = 0;

    // Count the number of digits
    while (number > 0) {
        numDigits++;
        number /= 10;
    }

    number = originalNumber; // Reset number to the original value

    // Calculate the sum of digits raised to the power of the number of digits
    while (number > 0) {
        int digit = number % 10;
        int digitPower = 1;
        for (int i = 0; i < numDigits; i++) {
            digitPower *= digit;
        }
        sum += digitPower;
        number /= 10;
    }

    if (sum == originalNumber) {
        printf("Armstrong number: %s\n", yytext);
    }
    else {
        printf("Not an Armstrong number: %s\n", yytext);
    }
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter a number to check if it's an Armstrong number: ");
    yylex();
    return 0;
}