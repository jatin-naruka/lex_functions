/*lower to upper*/
%{
#include <stdio.h>
%}


%%
[A-Z]    { printf("%c", yytext[0] + 32); }  // Convert lowercase to uppercase
.        { printf("%c", yytext[0]); }        // Print all other characters as is

%%

int yywrap(){}
int main() {
    yylex();
    return 0;
}