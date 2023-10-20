/*decimal to binary*/
%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

%%

[0-9]+  {
    int decimal = atoi(yytext);
    int binary[32]; // Assuming a 32-bit binary representation
    int i = 0;

    // Convert decimal to binary
    while (decimal > 0) {
        binary[i] = decimal % 2;
        decimal = decimal / 2;
        i++;
    }

    if (i == 0) {
        printf("Decimal: 0, Binary: 0\n");
    } else {
        printf("Decimal: %s, Binary: ", yytext);
        for (int j = i - 1; j >= 0; j--) {
            printf("%d", binary[j]);
        }
        printf("\n");
    }
}

.      ; // Ignore other characters

%%

int main() {
    yylex();
    return 0;
}