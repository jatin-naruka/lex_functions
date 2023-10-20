/* count number of vowels and consonants*/
%{
#include<stdio.h>
int v=0, c=0;
%}

%%
[ \t\n]+ ;
[aeiouAEIOU] {v++;}
[~aeiouAEIOU] {c++;}
%%

int main()
{
	printf("enter the string: \n");
	yylex();
	printf("no of vowels are %d \n", v);
	printf("no of consonants are %d \n", c);
}

int yywrap()
{
	return 1;
}
