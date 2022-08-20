%{
#include <stdio.h>	// including library
#include "group2.tab.h"	// including file project.tab.			
%}

%%
for		return FOR;		// matches for    
var 		return DATATYPE;	// matches var, a type inference			
byte		return DATATYPE;	// matches byte datatype 
short		return DATATYPE;	// matches short datatype
int		return DATATYPE;	// matches int datatype
long		return DATATYPE;	// matches long datatype  
boolean		return DATATYPE;	// matches boolean datatype
char		return DATATYPE;	// matches char datatype
String 		return DATATYPE;	// matches String datatype
float 		return DATATYPE;	// matches float datatype
double 		return DATATYPE;	// matches double datatype			
[(]		return *yytext;		// matches opening parentheses
[)]		return *yytext;		// matches closing parentheses
[:]		return *yytext;		// matches colon
[a-zA-Z][a-zA-Z0-9_]*	return IDENTIFIER;	// matches an identifier
\n		return *yytext;
[ \t]+						
%%