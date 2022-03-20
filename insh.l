%{
#include <stdio.h>
int num=0;
%}

%%
[0|1]+01[0|1]* { printf("Numero: %s es el impar: %d\t",yytext,++num);}
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