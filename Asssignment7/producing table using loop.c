#include<stdio.h>
#include<conio.h>
int main()
{
	int a[5],x,i,x1,x2,x3;
	printf("enter 5 elements of array\n");
	for(i=0;i<5;i++)
	{
	scanf("%d",&a[i]);	
	}
	printf("x x+2 x+4 x+6\n");
	printf("----------------\n");
	for(i=0;i<5;i++)
	{
	x=x+a[i];
	x1=x+2;
	x2=x+4;
	x3=x+6;
	printf("%d  %d  %d  %d\n",x,x1,x2,x3);
	x=0;	
	}
	
	
}
