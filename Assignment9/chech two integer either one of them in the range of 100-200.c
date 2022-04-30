#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2;
	printf("enter two numbers\n");
	scanf("%d%d",&n1,&n2);
	if(n1>100&&n1<200||n2>100&&n2<200)
	{
	printf("number is in range of 100-200");
		
	}
	else 
	{
		printf("number is not in range of 100-200");
	}
}
