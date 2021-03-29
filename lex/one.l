%{
    #include<stdio.h>
    int vowel_count = 0;
    int consonant_count = 0;
%}
%%
[aeiouAEIOU] { vowel_count++; }
[a-zA-Z] { consonant_count++; }
%%
int main()
{
    printf("Enter a string:");
    yylex();
    printf("Number of vowels:  %d\n", vowel_count);
    printf("Number of consonants:  %d\n", consonant_count);
    return 0;
}
