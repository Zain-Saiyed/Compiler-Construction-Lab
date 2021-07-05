%{
  /* Definition section */
%}

DIGIT [0-9]+\.?|[0-9]*\.[0-9]+

%%

[ ]
{DIGIT} {yylval=atof(yytext);return NUM;}
\n|. {return yytext[0];}

%%

int yywrap(){
    return 1;
}

