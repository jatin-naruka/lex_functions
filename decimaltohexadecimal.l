/*decimal to hexadecimal*/

%{
#include <stdio.h>
%}

%option noyywrap

%%
[0-9]+ {
    int decimal = atoi(yytext);
    printf("Decimal: %s\nHexadecimal: 0x%X\n", yytext, decimal);
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter a decimal number to convert to hexadecimal: ");
    yylex();
    return 0;
}