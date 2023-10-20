/*factorial of a number*/


%{
#include <stdio.h>
%}

%option noyywrap

%%
[0-9]+ {
    int number = atoi(yytext);
    if (number >= 0) {
        long long factorial = 1;
        for (int i = 2; i <= number; i++) {
            factorial *= i;
        }
        printf("Factorial of %d is %lld\n", number, factorial);
    } else {
        printf("Factorial is undefined for negative numbers.\n");
    }
}
[ \t\n] ; // Ignore whitespace and newline characters
.       ; // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}
