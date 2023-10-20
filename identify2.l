/*identify string has any vowel or not*/
%option noyywrap
%{
#include <stdio.h>
int hasVowel = 0;
%}

%%

[aeiouAEIOU]    { hasVowel = 1; }
.               ; /* Ignore other characters */

%%

int main() {
    yylex();
    if (hasVowel) {
        printf("The string contains at least one vowel.\n");
    } else {
        printf("The string does not contain any vowels.\n");
    }
    return 0;
}