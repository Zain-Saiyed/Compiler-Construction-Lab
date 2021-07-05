/* Program to count number words starting with Capital A */
%{
/* DEFINITION BLOCK */
#include <stdio.h>
#include <string.h>
int count=0;
char words[20][20];
%}

space [ \t]

%%
({space})*(A)([a-zA-Z])+   { strcpy(words[count], yytext); count++; }
. {  }
%%

int main(int argc, char **argv) {
    char c; 

    FILE *fp = fopen( argv[1], "r");
    if( !fp ){ printf("\nError opening File name : %s \n\nPlease Enter a valid File name with its extension.\n\n",argv[1]); exit(0); }
    else printf("\nOpened File : %s",argv[1]);

    yyin = fp;
    yylex();
    printf("Count of words starting with captial A = %d ",count);
    printf("\n\nWords starting with Capital A : \n");
    for (int i=0 ; i < count ; i++ ){
        printf("%d : %s\n", i+1, words[i]);
    }
    printf("\n\n");
    fclose(fp);
    return 0;
}
int yywrap() { return 1; }