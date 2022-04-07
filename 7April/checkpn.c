#include<stdio.h>
#include<conio.h>
int main()
{
	int num;
	printf("enter any number");
	scanf("%d",&num);
	if(num>0)
	{
		printf("positive number");
	}
	else if(num<0)
	{
		printf("negetive number");
	}
	else
	{
		printf(" you entered 0");
	}
	
}
