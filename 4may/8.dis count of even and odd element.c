#include<stdio.h>
#include<conio.h>
int fun(int a[10])
{
	int i,ec=0;
	
	for(i=0;i<=9;i++)
	{
	if(a[i]%2==0)	
	{
		ec=ec+1;
    }
	}
    return ec;
	
	
}
int main()
{
	int a[10],i,ecount,oc;
	printf("enter 10 number\n");
	for(i=0;i<=9;i++)
	{
		printf("a[%d]:",i);
		scanf("%d",&a[i]);
		
	}
	printf("\n");
	ecount=fun(a);
	printf("even: %d\n",ecount);
	oc=10-ecount;
	printf("odd: %d\n",oc);
}



