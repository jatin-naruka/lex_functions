/*program to identify the string is a word,keyword or a number */

%{
#include <stdio.h>
%}

%%
if |
else |
printf |
for {printf("%s is a keyword\t", yytext);}
[0-9]+ {printf("%s is a number\t", yytext);}
[a-zA-Z]+ {printf("%s is a word\t", yytext);}
.|\n {ECHO;}
%%

int main()
{
	printf("\n Enter the string: ");
	yylex();
}

int yywrap()
{
	return 1;
}