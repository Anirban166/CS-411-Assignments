%{
     #include<stdio.h>
     int positive_number_count = 0, negative_number_count = 0;
%}
%%
[0-9]+ { positive_number_count++; }      
^[-][0-9]+ { negative_number_count++; }  
%%
int main()
{
    extern FILE *yyin;
    yyin = fopen("nums.txt", "r");   
    yylex();
    printf("Number of positive numbers: %d\n", positive_number_count);
    printf("Number of negative numbers: %d\n", negative_number_count);
    return 0;
}
