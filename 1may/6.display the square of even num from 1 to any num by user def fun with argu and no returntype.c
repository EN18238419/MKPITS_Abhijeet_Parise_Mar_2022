#include<stdio.h>
#include<conio.h>
void fun1(int x);
void fun()
{
	int y;
	fun1(y);
}
void fun1(int x)
{
	int i;
	printf("enter the integer number\n");
	scanf("%d",&x);
    printf("square of even values from 1 to %d\n",x);
	for(i=1;i<=x;i++)
	{
	if(i%2==0)
	{
	printf("%d^2 = %d\n",i,i*i);
	}
	}
}
int main()
{
	fun();
}
