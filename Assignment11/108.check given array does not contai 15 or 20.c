#include<stdio.h>
#include<conio.h>
int main()
{
	int i,f=1,a[2];
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
		f=0;
		}
	
	}
	if(f==1) 
	{
	printf("it does not contain 15 or 20");	  
	}
	else
	{
	printf("it contains 15 or 20");	
	}
}
