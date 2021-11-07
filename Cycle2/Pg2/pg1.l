%{
int flag = 0;
%}

%%
.*Mala.*\n flag=1;
%%
 
int yywrap(void) {}
 
main(){
    yylex();
     if (flag == 1) 
    printf("Accepted"); 
 else
    printf("Not Accepted"); 
    return 0;
}