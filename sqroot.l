/*square root*/
%{
#include <stdio.h>
#include <math.h>
%}

%option noyywrap

%%
[0-9]+ {
    double num = atof(yytext);
    double sqrtValue = sqrt(num);
    printf("Square root of %f is %f\n", num, sqrtValue);
}

. ;

%%

int main() {
    yylex();
    return 0;
}