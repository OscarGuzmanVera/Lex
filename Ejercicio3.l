%{#include <stdio.h>
int mayu = 0;
int min = 0;
int dig = 0;
%}

%%
[A-Z] (printf("Mayuscula\t"); mayu++}
[a-z] (printf("minuscula\t"); min++}
[0-9] (printf("Digito\t"); dig++}
%%
int yywrap()
{
    return 1;    
}

int main()
{
    printf("Escribe una cadena de texto o digitos ");
    yylex();
    printf("Mayuscula=%d, minuscula=%d, Digito=%d", mayu,min,dig);
}
