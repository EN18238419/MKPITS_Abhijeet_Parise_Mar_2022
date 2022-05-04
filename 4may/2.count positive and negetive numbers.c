#include<stdio.h>
#include<conio.h>
int fun(int n1,int n2,int n3, int n4, int n5)
{
	int pres=0,nres=0;
	if(n1>0)
	{
		pres=pres+1;
	}
	if(n2>0)
	{
		pres=pres+1;
	}
	if(n3>0)
	{
		pres=pres+1;
	}
	if(n4>0)
	{
		pres=pres+1;
	}
	if(n5>0)
	{
		pres=pres+1;
	}
	return pres;

}
int main()
{
	int x1,x2,x3,x4,x5,s,ne;
	printf("enter first number:\n");
	scanf("%d",&x1);
	printf("enter second number:\n");
	scanf("%d",&x2);
	printf("enter third number:\n");
	scanf("%d",&x3);
	printf("enter fourth number:\n");
	scanf("%d",&x4);
	printf("enter fifth number:\n");
	scanf("%d",&x5);
    s=fun(x1,x2,x3,x4,x5);
    printf("count of positive: %d\n",s);
    ne=5-s;
    printf("count of negetive: %d",ne);

}


