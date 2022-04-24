#include<stdio.h>
#include<conio.h>
int main()
{
	float x,n,y;
	printf("enter x and n :\n");
	scanf("%f%f",&x,&n);
	if(n>0)
	{
		y=x*n;
		printf("y = %f",y);
		
	}
	else
	{
		printf(" n is not non negative integer number");
	}
}
