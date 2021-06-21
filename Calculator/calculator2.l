%{
#include <stdlib.h>
void yyerror(char *);
#include "y.tab.h"
%}
%%
	/* variables */
[a-z] {
	yylval = *yytext - 'a';
	return VARIABLE;
}
	/ * intergers */
[0-9]+ {
yyval = atoi(yytext);
return INTERGER;
}
	/ * operators */
[-+()=/*\n] { return *yytext; }
	/* skip whitespace */
[ /t] ;
	/* anything else is an error */
. yyerror("invalid character");
%%
int yywrap(void){
return 1;
}