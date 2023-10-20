/*quadratic*/
%{
#include <stdio.h>
%}

%%
[0-9]*[xX]\^[0-9]+[\+\-][0-9]*[xX][\+\-][0-9]+[\=][0-9]+ {
    printf("Quadratic Equation: %s\n", yytext);
}

. ; 

%%

int yywrap() {
}

int main() {
    printf("Enter text with quadratic equations: ");
    yylex();
    return 0;
}