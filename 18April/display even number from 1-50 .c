#include<stdio.h>
#include<conio.h>
int main()
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

