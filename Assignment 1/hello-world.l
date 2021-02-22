/* Program to print Hello World when user enters word "HI"  */

%{
/* DEFINITION BLOCK */

%}

%%
"HI" { 
printf("Hello World!"); }
. ; 
%%

int main(){
    yylex();
    return 0;
}
