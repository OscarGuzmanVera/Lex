%option noyywrap
${
#include<stdio.h>
int plabra=0, numero=0;
%}
Numero -7[0-9]*
Palabra [a-zA-Z]+
%%
"quit" (quit();return 0;)
(Numero)(printf("Se leyo numero: %d\n", atoi(yytext)); numero++;}
(Palabra)(printf("Se leyo una palabra: %s\n", yytext)); palabra++;}
printf("%s",yytext[0]);
%%
int main()
{
printf("quit bye\n")
yylex();
}
quit(){
printf("Se leyeron %d entradas, de las cuales reconocieron\n%d Enteros\n%d Palabras\n",(palabras+numero),numero,palabra);
system("pause");