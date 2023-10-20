/*smallest word in a string*/

%{
	/* standard io for io functions and strigs.h for strings*/
	#include <stdio.h>
	#include <string.h> 
	/* Counter variables */
	int small=9999, len;
	char string[200], word[200];
%}

/* Rules */
/* Count small */
/* Ignore everything else */
%%
[ \t\n]*	{
	len = strlen(string);
	if(small > len){
		small = len;
		strcpy(word, string);
	}
	string[0] = '\0'; 
}
.			strcat(string, yytext);

%%

int main()
{
	/*call the yylex function.*/
	yylex();
    printf("\nThe smallest word is: %s\n", word);					
	return 0;
}

/*call the yywrap function*/
int yywrap()					
{
	return 1;
}