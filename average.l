/*lex program to find the average*/

%option noyywrap
%{
#include <stdio.h>
int count = 0;
double sum = 0;
%}

%%
[0-9]+(\.[0-9]+)?   { sum += atof(yytext); count++; }
%%

int main() {
    yylex();
    if (count > 0) {
        double average = sum / count;
        printf("Average: %.2f\n", average);
    } else {
        printf("No numbers found.\n");
    }
    return 0;
}