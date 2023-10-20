/*email id*/
%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4} {
    printf("Email: %s\n", yytext);
}

\n {
    printf("Newline\n");
}

. ;

%%
int yywrap() {
}
int main() {
    yylex();
    return 0;
}
