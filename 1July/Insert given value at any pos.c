#include<stdio.h>
#include<conio.h>
int main()
{
	int i,j,size,pos,v,a[10];
	printf("Enter array size: ");
	scanf("%d",&size);
	printf("Enter array element\n");
	for(i=0;i<size;i++)
	{
		printf("a[%d]= ",i);
		scanf("%d",&a[i]);
		
	}
	printf("\nenter the index to insert the value: ");
	scanf("%d",&pos);
	printf("\nenter the value: ");
	scanf("%d",&v);
	for(i=(size-1);i>=pos;i--)
	{
		a[i+1]=a[i];
	}
	a[pos]=v;
	printf("\nArray after insertion\n");
	for(i=0;i<=size;i++)
	{
		printf("%d\n",a[i]);
	}
	
}
