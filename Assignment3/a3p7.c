#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2,n3,n4,n5,pres=0,nres=0;
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
