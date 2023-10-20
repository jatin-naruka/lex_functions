/*lex program to find the largest number*/

%{
#include <stdio.h>
%}

%option noyywrap

%{
int largest = 0;
int current = 0;
%}

%%
[0-9]+     { current = atoi(yytext); if (current > largest) largest = current; }
[ \t\n]    ; // Ignore whitespace and newline characters
.          ; // Ignore other characters
%%

int main() {
    yylex();
    if (largest > 0) {
        printf("Largest number: %d\n", largest);
    } else {
        printf("No valid numbers found.\n");
    }
    return 0;
}
