#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2,sum;
	printf("enter first number: ");
	scanf("%d",&n1);
	printf("enter second number: ");
	scanf("%d",&n2);	
	if(n1==n2)
	{
		sum=n1+n2;
		sum=3*sum;
		printf("sum= %d",sum);
	}
	else
	{
	sum=n1+n2;	
	printf("sum= %d",sum);	
	}
}
