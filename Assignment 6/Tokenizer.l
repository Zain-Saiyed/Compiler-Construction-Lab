/* Program to display count of keywords, comments, lines of code, whitespaces, headers included, etc used in a C program */

%{
/* DEFINITION BLOCK */

#include <stdio.h>
#include <string.h>
extern FILE *yyin;
int num_comments_s=0;
int num_comments_m=0;
int num_headers=0;
int num_LOC=0;
int num_keywords=0;
int num_identifiers=0;
int num_non_identifiers=0;
int num_whitespaces=0;
char input_file[100];
char Identifiers[20][20];
char Used_keywords[20][20];
char token[20];
int len_Identifiers=0;
int len_keywords=0;
%}

%%

printf|scanf|return|int|float|double|char|struct|long|case|switch|if|else|for|while|do|break|continue { 
    num_keywords++;
    strcpy(token,yytext);

    int i,FLAG=0;
    if ( len_keywords > 0 ) {
        for (i = 0; i < len_keywords; ++i)
        {
            int value = strcmp(Used_keywords[i], token);
            if ( value == 0 ) {
                FLAG=1;
                break;
            }
        }
        if ( FLAG != 1 ) {
            strcpy(Used_keywords[len_keywords], token);
            ++len_keywords;
        }
    } else {
        strcpy(Used_keywords[0], token);
        ++len_keywords;
    }
}

\#include\<(.*)\>  { num_headers++; }

\"(.)*\" { continue; }

[%&].* {  }

[A-Za-z][A-Za-z0-9]* { 
    num_identifiers++; 
    strcpy(token,yytext);

    int i,FLAG=0;
    if ( len_Identifiers > 0 ) {
        for (i = 0; i < len_Identifiers; ++i)
        {
            int value = strcmp(Identifiers[i], token);
            if ( value == 0 ) {
                FLAG=1;
                break;
            }
        }
        if ( FLAG != 1 ) {
            strcpy(Identifiers[len_Identifiers], token);
            ++len_Identifiers;
        }
    } else {
        strcpy(Identifiers[0], token);
        ++len_Identifiers;
    }
}

[0-9]* { num_non_identifiers++; }

[ \t] { num_whitespaces++; }

[\n|;\n] { num_LOC++; }

\/\/(.*) { num_comments_s++; }

\/\*[^*]*\*\/ { num_comments_m++; }

. {  }

%%

int main(int argc, char **argv) {

    if(argc>1)
    {
        FILE *fp = fopen( argv[1], "r");
        if( !fp ){ printf("\nError opening File name : %s \n\nPlease Enter a valid File name with its extension.\n\n",argv[1]); exit(0); }
        else printf("\nEntered File name : %s\n",argv[1]);
        yyin=fp;
        yylex();

        printf("\nCount Details of C program file is as follows:");
        printf("\n\nSingle-line Comments = %d\n",num_comments_s);
        printf("Multi-line Comments  = %d\n",num_comments_m);
        printf("Keywords             = %d\n",num_keywords+num_headers);
        printf("Headers included     = %d\n",num_headers);
        printf("Total identifiers    = %d\n",num_identifiers);
        printf("Whitespaces          = %d\n",num_whitespaces);
        printf("Lines of Code (LOC)  = %d\n",num_LOC);
        printf("All word occurences  = %d\n",num_identifiers+num_non_identifiers);
        
        printf("\nUnique identifiers decalred are : [ ");
        for ( int i=0; i<len_Identifiers; i++ ){
            printf("%s",Identifiers[i]);
            if (i<len_Identifiers-1) printf(", ");
        }
        printf(" ]\n");

        printf("\nUnique keywords used are : [ ");
        for ( int i=0; i<len_keywords; i++ ){
            printf("%s",Used_keywords[i]);
            if (i<len_keywords-1) printf(", ");
        }
        printf(" ]\n\n");
        fclose(fp); 
    } else {
        printf("\nOops! File name argument not found!\nPlease Enter the file name as an argument on which to display the count details.\n\n");
    }
    return 0 ;
}
int yywrap() { return 1; }