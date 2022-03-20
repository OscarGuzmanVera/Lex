%{
#include <stdio.h>
int num=0;
%}

%%
[0,1]*011[0-1]* { printf("Cadena clave: %d\t",++num);}
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