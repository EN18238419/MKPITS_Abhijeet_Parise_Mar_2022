#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2;
	printf("enter two numbers\n");
	scanf("%d%d",&n1,&n2);
	if(n1>20&&n1<50||n2>20&&n2<50)
	{
	printf("true");
		
	}
	else 
	{
		printf("false");
	}
}

