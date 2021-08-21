/* Program to convert a Decimal number to Hexadecimal number in a given file. */
%{
/* DEFINITION BLOCK */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void to_hex( int num);
%}

%%
[0-9]+   { to_hex(atoi(yytext)); }

. { printf("%s",yytext); }
%%

void to_hex(int num) { 
    int remainder, idx=0;
    char hex[2][20];
    if (num == 0) { strcpy(hex[idx],"0"); idx++; }
    else {
        while( num > 0 ){
        remainder = num%16;
        if (remainder < 10){
            sprintf(hex[idx], "%d", remainder);
        }
        else if (remainder == 10){
            strcpy(hex[idx],"A");
        }
        else if (remainder == 11){
            strcpy(hex[idx], "B");
        }
        else if (remainder == 12){
            strcpy(hex[idx], "C");
        }
        else if (remainder == 13){
            strcpy(hex[idx], "D");
        }
        else if (remainder == 14){
            strcpy(hex[idx], "E");
        }
        else if (remainder == 15){
            strcpy(hex[idx], "F");
        }
        num = num/16;
        idx++;
        }
    }
    for(int i=idx-1 ; i>-1 ; i--)
        printf("%s",hex[i]);
}

int main(int argc, char **argv) {
    FILE *fp = fopen( argv[1], "r");
    if( !fp ){ printf("\nError opening File name : %s \n\nPlease Enter a valid File name with its extension.\n\n",argv[1]); exit(0); }
    else printf("\nOpened File : %s\n\n",argv[1]);

    yyin = fp;
    printf("Converting Decimal to Hexadecimal...\nFile Output:\n\n");
    yylex();
    printf("\n\n");
    fclose(fp);
    return 0;
}
int yywrap() { return 1; }