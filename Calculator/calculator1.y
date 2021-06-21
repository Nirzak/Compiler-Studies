%{
	#include <stdio.h>
	int yylex(void);
	void yyerror(char *);
%}
token INTEGER
%start program

%%
program:
	program expr '\n' {printf("%d\n", $1);}
	|
	;
expr:
	INTEGER { $$ = $1; }
	| expr '+' expr { $$ = $1 + $3; }
	| expr '-' expr { $$ = $1 - $3; }
	;
%%
voide yyerror(char *s) {
	fprintf(stderr, "%s\n"), s};
}
int main(void){
	yyparse();
	return 0;
}