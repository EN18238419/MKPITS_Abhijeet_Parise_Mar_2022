#include<stdio.h>
#include<conio.h>
int main()
{
	int i,n,x=0,a[10],b[10];
	printf("enter array size: ");
	scanf("%d",&n);
	printf("enter array element\n");\
	for(i=0;i<n;i++)
	{
		printf("a[%d]= ",i);
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++)
	{
		if(a[i]%2==0)
		{
			b[x]=a[i];
			x=x+1;
		}
	}
	for(i=0;i<n;i++)
	{
		if(a[i]%2!=0)
		{
		b[x]=a[i];
		x=x+1;	
		}	
	}
	printf("new array\n");
	for(i=0;i<n;i++)
	{
		printf("a[%d]= %d\n",i,b[i]);
	}
}
