#include<stdio.h>
#include<conio.h>
int main()
{
	int num,c;
	printf("enter any number");
	scanf("%d",&num);
	c=num%2;
	if(c==0)
	{
		printf("even number");
	}
	else
	{
		printf("odd number");
	}
}
