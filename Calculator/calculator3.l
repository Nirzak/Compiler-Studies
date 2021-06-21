%{
	#include "y.tab.h"
%}
%option noyywrap

%%
"exit" {return EXIT_COMMAND;}
"print" {return PRINT;}
[0-9]+ {
	yyval.num = atoi(yytext);
	return NUMBER;
}
[a-zA-Z] {yyval.id = yytext[0]; return ID;}
[-+=;] {return yytext[0];}
[ \t\n]; {return yytext[0];}
] \t\n] ; /* skip whitespace */
. {ECHO; yyerror("invalid character");}