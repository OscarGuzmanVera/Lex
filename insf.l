%{
#include <stdio.h>
int num=0;
int may=0;
%}

%%
[A-Z,a-z]+ { printf("Palabra  %d\t",++may);}
[0-9]+ { printf("Numero %d\t",++num);}
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