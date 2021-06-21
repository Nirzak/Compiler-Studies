%{
/* comments */
%}

%option noyywrap
%%
SUST printf("Shahjalal University of Science and Technology");
. ECHO;
\n ECHO;
%%
int main(int argc, char *argv[]){
	yylex();
	return 0;
}