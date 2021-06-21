%option noyywrap
%%

.
\n
%%
int main(int argc, char *argv[]){
	yylex();
	return 0;
}