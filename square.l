/*square*/
%{
#include <stdio.h>
#include <math.h>
%}

%option noyywrap

%%
[0-9]+ {
    double num = atof(yytext);
    double square = num * num;
    printf("Square of %f is %f\n", num, square);
}

. ;

%%

int main() {
    yylex();
    return 0;
}