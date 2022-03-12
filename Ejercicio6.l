%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t]
go|if|play|it|window|jump|think|learn|study|to|at|the|link {printf("Palabra clave \n");}
[a-zA-Z]+ { printf("Palabra comun \n");}
[0-9]+ { printf("Numero encontrado \n");}
%%

int main()
{
 yylex();
 return 1;
}