#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2;
	printf("enter two positive numbers\n");
	scanf("%d%d",&n1,&n2);
	if(n1>20&&n1<30&&n2>20&&n2<30)
	{
		if(n1>n2)
		{
			printf("\nlarger value from two integer: %d",n1);
		}
		else
		{
			printf("\nlarger value from two integer: %d",n2);	
		}
	}
	else
	{
		printf("\n0");
	}
}
