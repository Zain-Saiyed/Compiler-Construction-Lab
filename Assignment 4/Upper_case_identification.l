/* Program to identify all Upper case words in a given sentence */

%{
/* DEFINITION BLOCK */

%}

%%

[\n] { 
    printf("\n");
    return 0 ; 
}

[A-Z]+[ \,\.!] {
    printf("%s ",yytext);
}

.   ; 

%%

int main() {
    printf("Please Enter a string to identify all the Upper case words : ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}