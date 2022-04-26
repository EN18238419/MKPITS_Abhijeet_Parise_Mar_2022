#include<stdio.h>
#include<conio.h>
int main()
{
	int n;
	printf("enter any negative number: ");
	scanf("%d",&n);
	if(n<0)
	{
		n=n*-1;
		printf("%d",n);
	}
	else if(n!=0)
	{
		printf("entered number is positive number");
	}
	else
	{
		printf("entered number is zero");
	}
}
