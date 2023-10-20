/*palindrome program*/
%option noyywrap
%{
#include <stdio.h>
%}

%%
[A-Za-z]+
[0-9]+ {
    int len = yyleng;
    int isPalindrome = 1;

    for (int i = 0; i < len / 2; i++) {
        if (yytext[i] != yytext[len - i - 1]) {
            isPalindrome = 0;
            break;
        }
    }

    if (isPalindrome) {
        printf("Palindrome: %s\n", yytext);
    }
    else{
	printf("Not a palindrome: %s\n", yytext);
    }
}
.|\n      ;  // Ignore other characters
%%

int main() {
    yylex();
    return 0;
}