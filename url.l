/*url*/
%{
#include <stdio.h>
%}

%%
ttps://[^\s/$.?#]+ {
    printf("URL starting with 'https': %s\n", yytext);
}

. ; // Ignore other characters

%%

int yywrap() {
    return 1; // Indicate the end of input
}

int main() {
    printf("Enter text with URLs: ");
    yylex();
    return 0;
}