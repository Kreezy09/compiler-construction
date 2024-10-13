%{
    #include <stdio.h>
%}

%%
abc     { printf("ABC"); }     // Replacestring "abc" with "ABC"
[a-zA-Z]+ { printf("%s", yytext); }    // Print other words as they are
[ \t\n]+ { printf("%s", yytext); }    // Preserve whitespace
.       { printf("%s", yytext); }     // Print any other character

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
