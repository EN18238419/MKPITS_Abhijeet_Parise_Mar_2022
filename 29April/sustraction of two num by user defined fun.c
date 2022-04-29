#include<stdio.h>
#include<conio.h>
void sub();
int main()
{
	sub();
}
void sub()
{
int p,s,res;
printf("enter two number\n");
scanf("%d%d",&p,&s);
res=p-s;
printf("substraction= %d",res);
}
