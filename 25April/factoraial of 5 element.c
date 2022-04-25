#include<stdio.h>
int main()
{
	int a[5],i,j,fact=1;
	printf("enter 5 array\n");
	for(i=0;i<5;i++)
	{
		scanf("%d",&a[i]);	
	}
	for(i=0;i<5;i++)
	{
		for(j=1;j<=a[i];j++)
		{
			
			fact=fact*j;	
		}
		printf("factorial of %d= %d\n",a[i],fact);
		fact=1;
		
	}
}
