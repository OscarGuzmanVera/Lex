%{
#include <stdio.h>
int dig=0;
%}

%%
[0-9] { printf("Digito %d \t", ++dig);}

%%
int yywrap()
{
    return 1;
}

int main()
{
	printf("Escribe letras numeros \n");
	yylex();
        printf("nada");
}