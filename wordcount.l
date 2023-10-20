/*word count*/
%option noyywrap
%{
#include <stdio.h>
int wordCount = 0;
%}

%%

[a-zA-Z]+   { wordCount++; }
.           ; // Ignore other characters

%%

int main() {
    yylex();
    printf("Word count: %d\n", wordCount);
    return 0;
}