/* Program to print user's name when Enter key is pressed  */

%{
/* DEFINITION BLOCK */

#include<stdio.h>
char Name[15];

%}

%%
    //Rule for enter
[\n] {
    printf("\nHi %s ! Welcome Back!",Name);
    return 0;
}

%%

int main(){
    char opt;
    do{
        printf("\nPlease Enter your Name : ");
        scanf("%s",Name);
        yylex();
        printf("\n\nDo you wish to continue?\nChoose : Yes (Y/y) or No (N/n) -> ");
        scanf("%c",&opt);
    }while ( (opt=='Y') || (opt=='y'));
    return 0;
}
int yywrap(){
    return 1;
}