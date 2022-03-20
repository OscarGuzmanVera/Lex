%{
#include <stdio.h>
int num=0;
%}

%%
[0|1]+[1] { printf("Numero impar %d\t",++num);}
%%
int yywrap()
{
    return 1;
}

int main()
{
	printf("Escribe texto \n");
	yylex();
}