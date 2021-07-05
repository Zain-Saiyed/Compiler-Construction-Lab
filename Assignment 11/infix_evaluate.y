%{
/* Definition section */

#include<ctype.h>
#include<stdio.h>
#define YYSTYPE double
int yyerror(char* errorMessage);

%}

%token NUM
%left '+' '-'
%left '*' '/'
%right UMINUS

%%
S : S E '\n' { printf("\nAnswer: %g \n\nEnter your expression:\n", $2); }
  | S '\n'
  |
  | error '\n' { yyerror("ERROR: Please retry again...\n"); yyerrok; }
;

E : E'+'E   { $$ = $1 + $3; }
  | E'-'E   { $$ = $1 - $3; }
  | E'*'E   { $$ = $1 * $3; }
  | E'/'E   { $$ = $1 / $3; }
  | '('E')' { $$ = $2 ; }
  | '-'E %prec UMINUS { $$ = -$2; }
  | NUM
;

%%

#include "lex.yy.c"

int main()
{
 printf("Enter your expression: ");
 yyparse();
}

int yyerror(char* errorMessage) {
 printf("%s \n",errorMessage);
 return 1 ;
}