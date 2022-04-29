#include<stdio.h>
#include<conio.h>
void add();
int main()
{
	add();
}
void add()
{
int p,s,res;
printf("enter two number\n");
scanf("%d%d",&p,&s);
res=p+s;
printf("addition= %d",res);
}
