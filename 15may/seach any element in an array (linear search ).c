#include<stdio.h>
#include<conio.h>
int main()
{
	int a[7],i,s,len,f=-1;
	printf("enter array length: ");
	scanf("%d",&len);
	printf("enter 5 numbers\n");
	for(i=0;i<len;i++)
	{
		scanf("%d",&a[i]);	
	}
	printf("enter the number you want to search: ");
	scanf("%d",&s);
	for(i=0;i<len;i++)
	{
		if(a[i]==s)
		{
		f=i;
		}
	
	}
	if(f>-1)
	{
		printf("present at index %d ",f);
	}
	else
	{
		printf("not present");
	}
}

