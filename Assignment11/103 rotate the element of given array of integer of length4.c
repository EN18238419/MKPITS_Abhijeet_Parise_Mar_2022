#include<stdio.h>
#include<conio.h>
int main()
{
	int i,n,a[15],b[15];
	printf("enter the size of an array: ");
	scanf("%d",&n);
	printf("enter the array element\n");
	for(i=0;i<n;i++)
	{
		printf("a[%d]= ",i);
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++)
	{
	if(i==3)
	{
		b[0]=a[i];
	}
	else
	{
		b[i+1]=a[i];
	}
	printf("\n");
	}
	for(i=0;i<n;i++)
	{
		printf("b[%d]= %d\n",i,b[i]);
	}
}
