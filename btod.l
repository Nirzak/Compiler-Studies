%{
#include<stdio.h>
#include<stdlib.h>
#include"btod.tab.h"
extern int yylval;
%}

%option noyywrap
%%
0 {yylval=0;return ZERO;}
1 {yylval=1;return ONE;}

[ \t] {;}
[\n"."]    {return yytext[0];}
.	{return yytext[0];}
%%
