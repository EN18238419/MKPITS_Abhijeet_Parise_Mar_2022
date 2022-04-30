#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2;
	printf("enter two numbers\n");
	scanf("%d%d",&n1,&n2);
	n1=n1%10;
	n2=n2%10;
	if(n1==n2)
	{
		printf("last digit of entered number is same");
	}
	else
	{
	   	printf("last digit of entered number is different");	
	}
}
