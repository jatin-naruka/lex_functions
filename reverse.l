/*lex program to reverse a number*/

%{
#include <stdio.h>
%}

%option noyywrap

%%
[0-9]+  {
    int num = atoi(yytext);
    int reversed = 0;
    while (num > 0) {
        reversed = reversed * 10 + num % 10;
        num /= 10;
    }
    printf("Reversed number: %d\n", reversed);
}
[ \t\n] ; // Ignore whitespace and newline characters
.       ; // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}