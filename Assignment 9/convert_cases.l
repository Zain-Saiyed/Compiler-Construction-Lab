/* Program to convert Upper Case to Lower Case and vice versa */
%{
/* DEFINITION BLOCK */
#include <stdio.h>
char alpahb;
%}

%%
[A-Z] { yytext[0] = yytext[0]+32 ; printf("%s", yytext); }
[a-z] { yytext[0] = yytext[0]-32 ; printf("%s", yytext); }
. { printf("%s",yytext); }

%%

int main(int argc, char **argv) {
    FILE *fp = fopen( argv[1], "r");
    if( !fp ){ printf("\nError opening File name : %s \n\nPlease Enter a valid File name with its extension.\n\n",argv[1]); exit(0); }
    else printf("\nOpened File : %s\n\n",argv[1]);

    yyin = fp;
    yylex();
    printf("\n\n");
    fclose(fp);
    return 0;
}
int yywrap() { return 1; }