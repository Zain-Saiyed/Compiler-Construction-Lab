/* Program to Identify the count of vowels and consonants present in a sentence */

%{
/* DEFINITION BLOCK */
int count_vowel, count_consonant = 0;

%}

consonants [^aeiou]

%%

[\n] { 
    printf("\n");
    return 0 ; 
}

[ \t]+ ;

[aeiou]+ {
    count_vowel++;
}

{consonants} {
    count_consonant++;
}

%%

int main(){
    printf("Please Enter a sentence string -> ");
    yylex();
    printf("Counts are as follows :\n");
    printf("Vowels     : %d \n",count_vowel);
    printf("Consonants : %d \n",count_consonant);
    return 0;
}

int yywrap() {
    return 1;
}