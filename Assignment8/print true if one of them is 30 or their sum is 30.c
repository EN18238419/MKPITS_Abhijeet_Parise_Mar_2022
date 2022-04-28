#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2,sum;
	printf("enter two numbers\n");
	scanf("%d%d",&n1,&n2);
	sum=n1+n2;
	if(n1==30||n2==30||sum==30)
	{
		printf("true");
	}
	else
	{
		printf("false");
	}
}
