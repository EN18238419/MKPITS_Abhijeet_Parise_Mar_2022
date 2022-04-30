#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2,l1,l2;
	printf("enter two numbers\n");
	scanf("%d%d",&n1,&n2);
	
	if(n1>100)
	{
		l1=n1-100;
	}
	else
	{
		l1=100-n1;
	}
	if(n2>100)
	{
		l2=n2-100;
	}
	else
	{
		l2=100-n2;
	}
	if(l1>l2)
	{
		printf("nearest value= %d",n2);
	}
	else if(l2>l1)
	{
		printf("nearest value= %d",n1);	
	}
	else if(n1==n2)
	{
		printf("0");
	}

}
