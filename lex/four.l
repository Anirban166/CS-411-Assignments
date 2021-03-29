%{
    #include<stdio.h>
    int positive_float_count = 0, negative_float_count = 0;
%}
DIGIT [0-9]
%%
\+?{DIGIT}*\.{DIGIT}+ { positive_float_count++; }  
-{DIGIT}*\.{DIGIT}+ { negative_float_count++; }
. ;
%%
int main()
{
    extern FILE *yyin;
    yyin = fopen("floats.txt", "r");   
    yylex();
    printf("Number of positive floating point numbers: %d\n", positive_float_count);       
    printf("Number of negative floating point numbers: %d\n", negative_float_count);
    return 0;
}
