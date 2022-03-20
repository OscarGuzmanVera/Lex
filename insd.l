%{
#include <stdio.h>
int num=0;
int may=0;
%}

%%
[A-Z,a-z]+ { printf("Palabra: %s %d\t", yytext,++may);}
[0-9]+ { printf("Numero:  %s %d\t", yytext,++num);}
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