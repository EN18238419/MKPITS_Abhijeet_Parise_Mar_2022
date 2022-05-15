#include<stdio.h>
#include<conio.h>
int main()
{
	int i,j,a[9],len,temp;
	printf("enter the array size: ");
	scanf("%d",&len);
	printf("enter array element\n");
	for(i=0;i<len;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<len;i++)
	{
		for(j=0;j<len-1;j++)
		{
			if(a[j]>a[j+1])
			{
				temp=a[j];
				a[j]=a[j+1];
				a[j+1]=temp;
			}
		}
	}
	printf("after sorting\n");
	for(i=0;i<len;i++)
	{
		printf("%d\n",a[i]);
	}
}
