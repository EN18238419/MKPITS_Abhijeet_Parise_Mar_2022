#include<stdio.h>
#include<conio.h>
int main()
{
	int i,f=0,len,a[10],ser,beg=0,mid;
	printf("enter the size of array: ");
	scanf("%d",&len);
	int end=len-1;
	printf("enter array element\n");
	for(i=0;i<len;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("enter the number you want to search: ");
	scanf("%d",&ser);
	while(beg<=end)
	{
		mid=(beg+end)/2;
		if(ser==a[mid])
		{
			f=1;
			break;
		}
		else if(ser<a[mid])
		{
			end=mid-1;
		}
		else
		{
			beg=mid+1;
		}
	}
	if(f==1)
	{
		printf("present at index %d",mid);
	}
	else
	{
		printf("not present");
	}
}
