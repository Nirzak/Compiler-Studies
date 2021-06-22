%option noyywrap
%{
int lineno=0;
%}
%%
^(.*)\n printf("%4d\t%4d\t%s", ++lineno, yylang-1, yytext);
%%
int main(int argc, char *argv[]){
yyin = fopen(argv[1], "r");
yylex();
fclose(yyin);
}