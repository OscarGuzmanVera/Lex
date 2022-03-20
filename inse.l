%{
#include <stdio.h>
int min=0;
int may=0;
%}

%%
[A-Z,a-z]+ { printf("Palabra  %d\t",++may);}
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