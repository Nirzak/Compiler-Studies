%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *s);
%}
%token ZERO ONE


%%
S:  S N '\n' {printf("");}
    |
    ;
N: L {printf("%d\n", $$);}
L: L B {$$=$1*2+$2;}
| B {$$=$1;}
B:ZERO {$$=$1;}
|ONE {$$=$1;};
%%

int main() {
while(yyparse());
}

void yyerror(char *s)
{
fprintf(stdout, "%s\n", s);
}

