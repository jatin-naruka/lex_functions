/*random number*/
%{
#include <stdio.h>
#include <stdlib.h>

%}

%option noyywrap

%%
"random" {
    int min = 1; // Minimum value
    int max = 100; // Maximum value
    int randomValue = min + (rand() % (max - min + 1)); // Generate a random value in the range
    printf("Random value between %d and %d: %d\n", min, max, randomValue);
}

. ;

%%

int main() {
    yylex();
    return 0;
}