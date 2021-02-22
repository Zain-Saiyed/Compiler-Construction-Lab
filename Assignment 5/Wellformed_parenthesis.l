/* Program to check if the paranthesis present in equations are well-formed */

%{
/* DEFINITION BLOCK */

#include <stdio.h>
int stack_bracket_counter=0;
extern FILE *yyin;
int choice;
char input_equation[30];

%}

%%
/* RULES BLOCK */ 

[(] {
    printf("%s",yytext);
    stack_bracket_counter++;
}

[)] {
    printf("%s",yytext);
    stack_bracket_counter--;
}

[\n] {
    if (choice==1){ printf("%s",input_equation); }

    printf(" <--- ");
    if ( stack_bracket_counter == 0 ){
        printf("Equation is Well-Formed!  ");
    }
    else{
        printf("Equation is NOT Well-Formed!  ");
    }
    /* Displaying unequal parenthesis symbol */
    if ( stack_bracket_counter > 0 ){
        printf("[ %d extra '(' parenthesis present in equation ]",stack_bracket_counter);
    }
    else if ( stack_bracket_counter < 0 ){
        printf("[ %d extra ')' parenthesis present in equation ]",stack_bracket_counter*-1);
    }
    printf("\n\n");
    stack_bracket_counter=0;
    
    if (choice==1){ return 0; }
}

[EOF] {
    printf("\nEnd of File reached of input File! Terminating...\n");
    return 0;
}
%%

int main(int argc, char *argv[]) {
    FILE *fp;
    printf("Please choose an option :\n1. Do you wish to enter an equation input?\n2. Read multiple equations from a single file.\nChoice -> ");
    scanf("%d",&choice);
    if (choice == 1){
        printf("\nPlease Enter your equation [30 chars max] :");
        scanf("%s",input_equation);
    }
    else {
        printf("\nPlease Enter file name : ");
        scanf("%s",input_equation);
        fp=fopen(input_equation,"r");
        yyin=fp;
    }
    printf("\nParenthesis checking results are as follows:\n\n");
    yylex();

    if ( choice != 1) { fclose(fp); }
    return 0 ;
}

int yywrap() {
    return 1;
}