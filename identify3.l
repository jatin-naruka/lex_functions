/*identify a number is binary or not*/
%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%

[01]+  { printf("Binary number: %s\n", yytext); }
[0-9]+ { printf("Not a binary number: %s\n", yytext); }
.      { printf("Not a binary number: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}