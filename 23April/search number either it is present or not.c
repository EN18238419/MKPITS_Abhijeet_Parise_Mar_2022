#include<stdio.h>
#include<conio.h>
int main()
{
	int a[5],i,s,f=0;
	printf("enter 5 numbers\n");
	for(i=0;i<5;i++)
	{
		scanf("%d",&a[i]);	
	}
	printf("enter the number you want to search: ");
	scanf("%d",&s);
	for(i=0;i<5;i++)
	{
		if(a[i]==s)
		{
		f=1;
		}
	
	}
	if(f==1)
	{
		printf("present");
	}
	else
	{
		printf("not present");
	}
}
