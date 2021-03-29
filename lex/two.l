%{
#include<stdio.h>
int line_count = 0; 
%}
eol [\n]
%%
{eol} { line_count++; } 
.
%%
int main()
{
    extern FILE *yyin;
    yyin = fopen("xyz.c", "r");
    yylex();
    printf("Number of lines: %d", line_count);   
    return 0;
}
