#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[10],size,f=0;
	printf("enter the size of array: ");
	scanf("%d",&size);
	printf("enter array element\n");
	for(i=0;i<size;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<size;i++)
	{
		if(a[i]==3||a[i]==5)
		{
			f=1;
		}
	}
	if(f==1)
	{
		printf("it contains 3 or 5");
	}
	else
	{
		printf("it does not contain 3 or 5");
		
	}
	
}
