#include<stdio.h>
int main()
{
	int a[6],i;
	printf("enter 6 number\n");
	for(i=0;i<=5;i++)
	{
		printf("a[%d]:",i);
		scanf("%d",&a[i]);
	}
	printf("\n");
	for(i=5;i>=0;i--)
	{
		printf("a[%d]=%d\n",i,a[i]);
	}
	
}

