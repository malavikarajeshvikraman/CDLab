%{
int flag = 0;
%}
 
%%
[^[*Mala.*\n]] {flag = 1;}

[\n] {
    
    flag==0?printf("Substring Not Accepted\n"):
    printf("Accepted \n");
    flag = 0;
} 

. {}
%%
 
int yywrap(void) {}
 
int main(){
    yylex();
    return 0;
}