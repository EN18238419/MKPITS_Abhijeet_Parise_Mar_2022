#include<stdio.h>
#include<conio.h>
int main()
{
	int f,s;
	printf("enter first number: ");
	scanf("%d",&f);
	printf("enter second number: ");
	scanf("%d",&s);
	if(f%s==0)
	{
		printf("%d is multiple of %d",f,s);
	}
	else
	{
		printf("not multiuple");
	}
}
