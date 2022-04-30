#include<stdio.h>
#include<conio.h>
void fun();
int main()
{
	fun();
}
void fun()
{
	int i=1;
	printf("even numbers between 1-50\n");
	do
	{
	if(i%2==0)
	{
	printf(" %d",i);
	}
	i++;
	}while(i<=50);
}


