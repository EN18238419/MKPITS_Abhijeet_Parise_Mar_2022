#include<stdio.h>
#include<conio.h>
int main()
{
	int i,f=0,a[2];
	printf("enter elements of array\n");
	for(i=0;i<2;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("\n");
	for(i=0;i<2;i++)
	{
		if(a[i]==15||a[i]==20)
		{
			f=1;
		}
	
	}
	if(f==1) 
	{
		printf("it contains 15 or 20");  
	}
	else
	{
	printf("not containing");	
	}
}
