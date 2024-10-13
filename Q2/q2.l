%{
    #include <stdio.h>
%}

%%
is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go {
    printf("Verb detected: %s\n", yytext);
} 

[a-zA-Z]+  ;
[ \t\n]+   ;  // Ignore spaces, tabs, newlines
.          ;  // Ignore any other character

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
