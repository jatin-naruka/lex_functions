/*replace multiple space with single space*/
%{
#include <stdio.h>
%}

%%

[\t ]+   { printf(" "); }  // Replace multiple spaces and tabs with a single space
\n+      { printf("\n"); }  // Remove multiple newlines
.        { printf("%c", yytext[0]); }  // Print all other characters as is

%%

int yywrap(){} 
int main() {
    yylex();
    return 0;
}