/*Roman*/
%{
#include <stdio.h>
%}

%option noyywrap

%%
(M{0,3})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3}) {
    printf("Roman Numeral: %s\n", yytext);
}

. ; // Ignore other characters

%%

int main() {
    yylex();
    return 0;
}