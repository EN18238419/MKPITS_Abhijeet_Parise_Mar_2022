#include<stdio.h>
#include<conio.h>
int main()
{
	int i;
	printf("enter integer number: \n");
	scanf("%d",&i);
	if(i>=0&&i<=20)
	{
		printf("integer in between 0-20 range");
	}
	else if(i>=20&&i<=40)
	{
		printf("integer in between 20-40 range");
	}
	else if(i>=40&&i<=60)
	{
		printf("integer in between 40-60 range");
	}
	else if(i>=60&&i<=80)
	{
		printf("integer in between 60-80 range");
	}
	else
	{
		printf("it is out of range");
	}
}
