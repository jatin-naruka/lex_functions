/*binary to hexadecimal*/

%option noyywrap
%{
#include <stdio.h>
%}

%%
[01]+ {
    int decimal = 0;
    int binary = atoi(yytext);
    int base = 1;
    int hexadecimal = 0;

    while (binary) {
        int digit = binary % 10;
        decimal += digit * base;
        base *= 2;
        binary /= 10;
    }

    hexadecimal = decimal;

    printf("Binary: %s\nHexadecimal: 0x%X\n", yytext, hexadecimal);
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter a binary number to convert to hexadecimal: ");
    yylex();
    return 0;
}


