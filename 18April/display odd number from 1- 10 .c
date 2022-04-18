#include<stdio.h>
#include<conio.h>
int main()
{
	int i=1;
	printf("odd numbers between 1-10\n");
	do
	{
	if(i%2!=0)
	{
	printf(" %d",i);
	}
	i++;
	}while(i<=10);
}

