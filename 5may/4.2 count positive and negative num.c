#include<stdio.h>
#include<conio.h>
int fun()
{
	int x1,x2,x3,x4,x5,s,pres=0;
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
	if(x1>0)
	{
		pres=pres+1;
	}
	if(x2>0)
	{
		pres=pres+1;
	}
	if(x3>0)
	{
		pres=pres+1;
	}
	if(x4>0)
	{
		pres=pres+1;
	}
	if(x5>0)
	{
		pres=pres+1;
	}
	return pres;	

}
int main()
{
int s,ne;
s=fun();
printf("count of positive: %d\n",s);
ne=5-s;
printf("count of negetive: %d",ne);
}



