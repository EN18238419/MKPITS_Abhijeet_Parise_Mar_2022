#include<stdio.h>
#include<conio.h>
int main()
{
	int i,f=0,len,a[10];
	printf("enter the array size: ");
	scanf("%d",&len);
	printf("enter array element\n");
	for(i=0;i<len;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<len;i++)
	{
		if(a[i+1]>=a[i])
		{
			f=f+1;
		}
	}
	printf("\n");
	if(f==len-1)
	{
		printf("value of each element is equal or greater than previous element");
	}
	else
	{
	printf("value of each element is not equal or greater than previous element");	
	}
}
