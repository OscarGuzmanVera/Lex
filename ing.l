%{
#include <stdio.h>
int ing=0;
int ly=0;
%}

%%
[A-Z,a-z]+ing+\b?$? { printf("Palabra con  ing: %s \n", yytext); ing++; }
[A-Z,a-z]+ly+\b?$? { printf("Palabra con  ly: %s \n", yytext); ly++; }
. {}
\n { printf("El numero de palabras con  ing es: %d \n", ing);
		printf("El numero de palabras con  ly es: %d \n", ly);
	if(ing>ly)
		printf("Hay mas palabras con terminacion ing\n");
	else if(ly>ing)
		printf("Hay mas palabras con terminacion ly\n");
	else if(ing==ly)
		printf("El numero de palabras que terminan con ing y ly es igual\n");
}
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