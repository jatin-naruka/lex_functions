/*increment*/

%option noyywrap
%{
#include <stdio.h>
%}

%%
[0-9]+ {
    int number = atoi(yytext);
    number++; // Increment the number by 1
    printf("Original: %s, Incremented: %d\n", yytext, number);
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter text with numbers to increment: ");
    yylex();
    return 0;
}

