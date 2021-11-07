%{

#include<stdio.h>

#include<string.h>

int i;

%}


%%
[a-z A-Z]* {

for(i=0;i<=yyleng;i++)

{

if((yytext[i]=='m')&&(yytext[i+1]=='a')&&(yytext[i+2]=='l')&&(yytext[i+3]=='a'))

{

printf("%s","Not Accepted");
break;

}

if(i ==yyleng-1)
{
    printf("%s","Accepted");
}

}



}

%%
 
 

main()

{

yylex();

}

int yywrap()

{

return 1;

}
