%{
#include <stdio.h>	// including the library
#include <stdlib.h>
int yyparse();
int yylex();

void yyerror (const char *str) {	// In the event of syntax error, yyerror() gets called
	fprintf(stderr, "error: %s\n", str);
}

int yywrap(void) {			// called when input is exhausted
	return 1;
}

int main(void) {
	yyparse();	// calling yyparse() function
	return 0;
}

%}

%%

%token  FOR DATATYPE IDENTIFIER;	// tokens from lex file

//for-each syntax gets validated and message is printed accordingly
line: FOR '(' DATATYPE IDENTIFIER ':' IDENTIFIER ')'  '\n' { printf("Syntax Correct\n"); exit(0); };

%%