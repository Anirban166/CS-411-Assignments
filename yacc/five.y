%{
	#include<stdio.h>
%}
%token ID
%%
exp:exp'+'exp
exp:exp'-'exp
exp:exp'*'exp
exp:exp'/'exp
exp:ID
;
%%
main()
{
	printf("Enter the expression for the grammar A -> A + A | A - A | A * A | A / A | NUM :\n");
	yyparse();
	printf("Valid Expression!\n");
}
void yyerror()
{
	printf("Syntax Error!");
}