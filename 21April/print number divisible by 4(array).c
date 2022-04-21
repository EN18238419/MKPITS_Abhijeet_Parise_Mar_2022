#include<stdio.h>
int main()
{
	int a[5],i;
	printf("enter 5 number\n");
	for(i=0;i<=4;i++)
	{
		printf("a[%d]:",i);
		scanf("%d",&a[i]);
		
	}
	printf("\n");
	for(i=0;i<=4;i++)
	{
		if(a[i]%4==0)
		{
		printf("%d\n",a[i]);
	}
	}
	
}

