%{
#include <stdio.h>
int gui = 0;
%}

%%
"-" { printf("Guion\t"); gui++;}

%%
int yywrap()
{
    return 1;
}

int main()
{
	printf("Escribe texto \n");
	yylex();
	printf("%d Guion \n", gui);
}