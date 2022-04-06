#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2,n3;
	printf("enter three integer numbers\n");
	scanf("%d%d%d",&n1,&n2,&n3);
	if(n1>n2&&n1>n3)
	{
		printf("first number is greater");
	}
	else if(n2>n1&&n2>n3)
	{
		printf("second number is greater");
	}
	else
	{
		printf("third number is greater");
		
	}
}
