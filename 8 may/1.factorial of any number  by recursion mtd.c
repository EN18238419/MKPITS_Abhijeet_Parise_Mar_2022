#include<stdio.h>
#include<conio.h>
int m=1;
int fun(int x)
{
	if(x==0)
	{
	return m;
	}
	m=m*x;
	fun(x-1);  
}
void main()
{
	int y,fact;
	printf("enter the number: ");
	scanf("%d",&y);
	fact=fun(y);
	printf("factorial= %d",fact);	
}

