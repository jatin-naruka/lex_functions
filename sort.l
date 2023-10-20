/*sort*/
%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

%{
int numbers[5];
int count = 0;
%}

%%

[0-9]+ {
    numbers[count++] = atoi(yytext);
    if (count == 5) {
        for (int i = 0; i < 5; i++) {
            for (int j = i + 1; j < 5; j++) {
                if (numbers[i] > numbers[j]) {
                    int temp = numbers[i];
                    numbers[i] = numbers[j];
                    numbers[j] = temp;
                }
            }
        }
        for (int i = 0; i < 5; i++) {
            printf("%d ", numbers[i]);
        }
        printf("\n");
        count = 0;
    }
}

. ;

%%

int main() {
    yylex();
    return 0;
}