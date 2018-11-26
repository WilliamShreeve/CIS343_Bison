

%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "zoomjoystrong.tab.h"
	
%}
%option noyywrap
%%
(END)|(end) 		return END; /*printf("END\n");*/ 
;			return EOL; /*printf("EOL\n");*/ 
(POINT)|(point)		return POINT; /*printf("POINT\n");*/
(LINE)|(line)		return LINE; /*printf("LINE\n");*/ 
(CIRCLE)|(circle)	return CIRCLE; /*printf("CIRCLE\n");*/ 
(RECTANGLE)|(rectangle)	return RECTANGLE; /*printf("RECTANGLE\n");*/
(SET_COLOR)|(set_color)	return SET_COLOR; /*printf("SET_COLOR\n");*/ 
[+-]?([0-9]+)		return INT; /*printf("INT: %s\n", yytext);*/
[ \t\n]+       	;
.		{ printf("* ERROR: Invalid character '%s' On line %d.\n", yytext, yylineno);}
%%

/*int main(int argc, char** argv){
	yylex();
}*/
