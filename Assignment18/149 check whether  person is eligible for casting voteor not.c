#include<stdio.h>
#include<conio.h>
int main()
{
	int age;
	printf("enter your age: ");
	scanf("%d",&age);
	if(age>18)
	{
		printf("\nyou are eligible for casting vote");
	}
	else
	{
		printf("\nyou are not eligible for casting vote");
	}
}
