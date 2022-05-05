#include<stdio.h>
#include<conio.h>
int n1,n2,n3;
int fun()
{
	printf("enter three integer numbers\n");
	scanf("%d%d%d",&n1,&n2,&n3);
	if(n1>n2&&n1>n3)
	{
	return n1;	
	}
	else if(n2>n1&&n2>n3)
	{
	return n2;
	}
	else
	{
	return n3;	
	}
}
int main()
{
	int s;
	s=fun();
	if(s==n1)
	{
	printf("%d is greater",s);	
	}
	else if(s==n2)
	{
	printf("%d is greater",s);	
	}
	else
	{
	printf("%d is greater",s);	
	}
}



