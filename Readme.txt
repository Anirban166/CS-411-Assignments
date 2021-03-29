Create an executable and run in OS X using:

lex filename.l
gcc lex.yy.c -ll -o filename
./filename
# only Lex.

lex filename.l
yacc -d filename.y
gcc lex.yy.c y.tab.c -ll -ly -o filename
./filename
# Lex + Yacc.
