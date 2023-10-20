/*mention*/
	
%option noyywrap
%{
#include <stdio.h>
%}

%%
@([A-Za-z0-9_]+) {
    printf("Mention: %s\n", yytext);
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter text containing mentions: ");
    yylex();
    return 0;
}



