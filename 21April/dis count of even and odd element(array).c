#include<stdio.h>
int main()
{
	int a[10],i,ec=0,oc=0;
	printf("enter 10 number\n");
	for(i=0;i<=9;i++)
	{
		printf("a[%d]:",i);
		scanf("%d",&a[i]);
		
	}
	printf("\n");
	for(i=0;i<=9;i++)
	{
	if(a[i]%2==0)	
	{
		ec=ec+1;
	}
	else
	{
		oc=oc+1;
	}
	}
	printf("even: %d\n",ec);
	printf("odd: %d",oc);
	
	
}

