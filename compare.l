/*compare number with a given number*/

%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[0-9]+ {
    int num = atoi(yytext);
    if (num == 15) {
        printf("The number is equal to 15\n");
    } else if (num < 15) {
        printf("The number is smaller than 15\n");
    } else {
        printf("The number is greater than 15\n");
    }
}

. ;

%%

int main() {
    yylex();
    return 0;
}