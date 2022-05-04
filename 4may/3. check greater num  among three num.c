#include<stdio.h>
#include<conio.h>
int  check(int n1,int n2,int n3)
{
	
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
	int x1,x2,x3,s;
	printf("enter three integer numbers\n");
	scanf("%d%d%d",&x1,&x2,&x3);
	s =check(x1,x2,x3);
	if(s==x1)
	{
	printf("%d is greater",s);	
	}
	else if(s==x2)
	{
	printf("%d is greater",s);	
	}
	else
	{
	printf("%d is greater",s);	
	}
}


