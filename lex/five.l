%{
	#include"y.tab.h"
	#include<stdio.h>
	int yylval;
%}
%%
[0-9] {return ID;}
[\t]  ;
.     {return yytext[0];}
[\n]  {return 0;}
[ ]   {return 0;}
%%
int yywrap()
{
	return 1;
}