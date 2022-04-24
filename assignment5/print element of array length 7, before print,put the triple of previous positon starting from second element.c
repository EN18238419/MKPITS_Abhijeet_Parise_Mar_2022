#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[7],n;
	printf("enter first number of array: ");
	scanf("%d",&n);	
	for(i=0;i<7;i++)
	{
	a[i]=n;	
	n=n*3;
	}
	for(i=0;i<7;i++)
	{
		printf("a[%d]= %d\n",i,a[i]);
	}
}
