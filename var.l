%{
#include "var.tab.h"
%}
%option noyywrap
%%

float       return f_type;

int         return i_type;

[a-zA-Z]   {
            yylval = yytext[0];
            return ID;
        }

[;,\n]    {return yytext[0];}
    
[ \t]   /* */ 

.   

%%
