#include<stdio.h>
#include<conio.h>
int fun()
{
	int i,ec=0,a[10];
	printf("enter 10 number\n");
	for(i=0;i<=9;i++)
	{
		printf("a[%d]:",i);
		scanf("%d",&a[i]);
    }
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
	int oc,ecount;
	printf("\n");
	ecount=fun();
	printf("even: %d\n",ecount);
	oc=10-ecount;
	printf("odd: %d\n",oc);
}




