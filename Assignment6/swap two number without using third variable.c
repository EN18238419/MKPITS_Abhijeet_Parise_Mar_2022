#include<stdio.h>
#include<conio.h>
int main()
{
	int a,b;
	printf("enter two numbers\n");
	printf("enter a:");
	scanf("%d",&a);
	printf("enter b:");
	scanf("%d",&b);
	a=a+b;
	b=a-b;
	a=a-b;
	printf("after swapping a=%d & b=%d",a,b);
	
}
