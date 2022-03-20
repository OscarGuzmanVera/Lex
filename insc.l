%{
#include <stdio.h>
int dig=0;
int may=0;
int min=0;
int gui=0;
%}

%%
[0-9] { printf("Digito\t");dig++;}
"-" { printf("Guion\t"); gui++;}
[A-Z] { printf("Mayuscula\t");may++;}
[a-z] { printf("Minuscula\t");min++;}

%%
int yywrap()
{
    return 1;
}

int main()
{
	printf("Escribe letras numeros \n");
	yylex();
	printf("Digitos = %d", dig);
	printf("%d Guion \n", gui);
	printf("Mayuscula = %d, Minuscula = %d", may, min);
}