%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t]
go|if|play|it|window|jump|think|learn|study|to|at|the|link|auto|break|case|continue|char|const|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof {printf("Palabra reservada \n");}
[a-zA-Z]+ { printf("Palabra comun \n");}
[0-9]+ { printf("Numero encontrado \n");}

"\+"+	{ printf("Operador de suma \n");}
"\-"+	{ printf("Operador de resta \n");}
"\*"+	{ printf("Operador de multiplicacion \n");}
"\/"+   { printf("Operador de division \n");}
%%

int main()
{
 printf("Ingrese una cadena de caracteres: \n");
 yylex();
 return 1;
}