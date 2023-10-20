/*hash*/

%option noyywrap
%{
#include <stdio.h>
%}

%%
#([A-Za-z0-9_]+) {
    printf("Hash Tag: %s\n", yytext);
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter text containing hash tags: ");
    yylex();
    return 0;
}


