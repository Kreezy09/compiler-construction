%{
    int word_count = 0; 
    int total_size = 0; //total size of words
%}

%%
[a-zA-Z]+ {
    word_count++;              // Increment word count
    total_size += yyleng;       // Add the length of the word to total_size
}
[ \t\n]+ ;    // Ignore spaces, tabs, and newlines
. ;           // Ignore other characters

%%

int main() {
    yylex();
    printf("Total words: %d\n", word_count);
    printf("Total size: %d characters\n", total_size);
    return 0;
}

int yywrap() {
    return 1;
}
