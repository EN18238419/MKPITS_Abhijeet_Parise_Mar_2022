
#include<stdio.h>
#include<conio.h>
int x1,x2;
int main()
{
	int s;
	s=fun();
	if(s==x1)
	{
		printf("%d is smaller",s);
	}
	else
	{
		printf("%d is smaller",s);
	}
	
}
int fun()
{

	printf("enter two number\n");
	scanf("%d%d",&x1,&x2);
	if(x1<x2)
	{
	return x1;	
	}
	else
	{
	return x2;
	}
}

