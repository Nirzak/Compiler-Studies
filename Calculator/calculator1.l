%{
	#include <stdlib.h>
	void yyerror(char *);
	#include "y.tab.h"
%}

%%
[0-9]+ {
	yyval = atoi(yytext);
	return INTEGER;
}
[-+\n] return *yytext;
[ \t] ; /* skip whitespace */
. yyerror("inavalid character");

%%
int yywrap(void) {
return 1;
}