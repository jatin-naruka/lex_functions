/*fibonacci series*/

%option noyywrap
%{
#include <stdio.h>

int fib(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fib(n - 1) + fib(n - 2);
}
%}

%%
[0-9]+    {
            int n = atoi(yytext);
            if (n >= 0) {
                for (int i = 0; i <= n; i++) {
                    printf("%d ", fib(i));
                }
                printf("\n");
            }
            else {
                printf("Invalid input: Enter a non-negative integer.\n");
            }
          }
.|\n      ;  // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}
