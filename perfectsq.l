/*check perfect square*/

%option noyywrap
%{
#include <stdio.h>
#include <math.h>
%}

%%
[0-9]+ {
    int number = atoi(yytext);
    double sqrtNumber = sqrt(number);
    int sqrtInt = (int)sqrtNumber;

    if (sqrtInt * sqrtInt == number) {
        printf("%d is a perfect square.\n", number);
    } else {
        printf("%d is not a perfect square.\n", number);
    }
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter a number to check if it's a perfect square: ");
    yylex();
    return 0;
}
