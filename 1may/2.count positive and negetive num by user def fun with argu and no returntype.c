#include<stdio.h>
#include<conio.h>
void count(int n1,int n2,int n3, int n4, int n5,int pres, int nres);
void fun()
{
	int x1,x2,x3,x4,x5,p1res=0,n1res=0;
	count(x1,x2,x3,x4,x5,p1res=0,n1res=0);
}
void count(int n1,int n2,int n3, int n4, int n5,int pres, int nres)
{
	printf("enter first number:\n");
	scanf("%d",&n1);
	printf("enter second number:\n");
	scanf("%d",&n2);
	printf("enter third number:\n");
	scanf("%d",&n3);
	printf("enter fourth number:\n");
	scanf("%d",&n4);
	printf("enter fifth number:\n");
	scanf("%d",&n5);
	if(n1>0)
	{
		pres=pres+1;
	}
	else
	{
		nres=nres+1;
	}
	if(n2>0)
	{
		pres=pres+1;
	}
	else
	{
		nres=nres+1;
	}
	if(n3>0)
	{
		pres=pres+1;
	}
	else
	{
		nres=nres+1;
	}
	if(n4>0)
	{
		pres=pres+1;
	}
	else
	{
		nres=nres+1;
	}
	if(n5>0)
	{
		pres=pres+1;
	}
	else
	{
		nres=nres+1;
	}
	printf("count of positive: %d\n",pres);
	printf("count of negetive: %d",nres);
}
int main()
{
	fun();
}

