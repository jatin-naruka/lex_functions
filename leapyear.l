/*leap year*/
%{
#include <stdio.h>
%}

%option noyywrap

%%
[0-9]+ {
    int year = atoi(yytext);
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        printf("Leap Year: %d\n", year);
    }
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter a list of years separated by spaces: ");
    yylex();
    return 0;
}