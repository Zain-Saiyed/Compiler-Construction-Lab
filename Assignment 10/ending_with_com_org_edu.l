/* Program to count and display the count of links having com, org and edu domains */
%{
/* DEFINITION BLOCK */
#include <stdio.h>
int com_count=0, org_count=0,edu_count=0;
char com_links[25][5], org_links[25][5], edu_links[25][5];
char link_n[50];
%}

%%
[A-Za-z]*\.com[ A-Za-z0-9_\-\t]* { strcpy(com_links[com_count], yytext); com_count++; }
[A-Za-z]*\.org[ A-Za-z0-9_\-\t]* { strcpy(org_links[org_count], yytext); org_count++; }
[A-Za-z]*\.edu[ A-Za-z0-9_\-\t]* { strcpy(edu_links[edu_count], yytext); edu_count++; }
. {  }
%%

int main(int argc, char **argv) {
    FILE *fp = fopen( argv[1], "r");
    if( !fp ){ printf("\nError opening File name : %s \n\nPlease Enter a valid File name with its extension.\n\n",argv[1]); exit(0); }
    else printf("\nOpened File : %s\n\n",argv[1]);

    yyin = fp;
    yylex();
    printf("Number of links in the follwing domains are :\n");
    printf(" .com = %d\n",com_count);
    printf(" .org = %d\n",org_count);
    printf(" .edu = %d\n",edu_count);
    printf("\nThe Links with com domain are :\n");
    for (int i=0 ; i < com_count ; i++ ){
        printf("%d : %s\n", i+1, com_links[i]);
    }
    printf("\nThe Links with org domain are :\n");
    for (int i=0 ; i < org_count ; i++ ){
        printf("%d : %s\n", i+1, org_links[i]);
    }
    printf("\nThe Links with edu domain are :\n");
    for (int i=0 ; i < edu_count ; i++ ){
        printf("%d : %s\n", i+1, edu_links[i]);
    }
    printf("\n\n");
    fclose(fp);
    return 0;
}
int yywrap() { return 1; }