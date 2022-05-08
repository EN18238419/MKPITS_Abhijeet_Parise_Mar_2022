#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[5],count;
	printf("enter the element of an array\n");
	for(i=0;i<5;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<5;i++)
	{
		if(a[i]==5&&(a[i+1]==5||a[i+1]==6))
		{
			count++;
		}
	}
	printf("\ncount= %d",(count-1));
}
