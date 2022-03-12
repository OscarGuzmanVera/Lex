%option noyywrap
%{
#include<stdio.h>
int clave=0,comun=0;
%}
Clave go|if|play|it|window|jump|think|learn|study|to|at|the|link|auto|break|case|continue|char|const|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof
Comun [a-zA-Z]+
%%
[\n\t]
[0-9]+ { printf("Numero encontrado \n");}

"\+"+	{ printf("Operador de suma \n");}
"\-"+	{ printf("Operador de resta \n");}
"\*"+	{ printf("Operador de multiplicacion \n");}
"\/"+   { printf("Operador de division \n");}

{Clave} {printf("Se leyo palabra clave: %s\n", yytext); clave++;}
{Comun} {printf("Se leyo la palabra comun: %s\n", yytext); comun++;}
.printf("%s",yytext[0]);
%%

int main()
{
 printf("Ingrese una cadena de caracteres: \n");
 yylex();
 return 1;
}