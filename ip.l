/*ip*/
%{
#include <stdio.h>
%}

%option noyywrap

%%
([0-9]{1,3}\.){3}[0-9]{1,3} {
    printf("IPv4 Address: %s\n", yytext);
}

. ; // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}