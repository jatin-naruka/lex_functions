/* Count no. of characters and no. of lines */
%{
#include <stdio.h>
int c=0;
int n1=0;
%}

%%
[a-z, A-Z] {c++;}
\t;
\n {n1++;}
. ;
%%

int yywrap()
{
return 1;
}
int main()
{
printf("Enter string;");
yylex();
printf("\n No. of character: %d \n No. of Lines\t %d", c,n1);
}