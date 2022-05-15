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
		for(j=i+1;j<len;j++)
		{
			if(a[i]>a[j])
			{
				temp=a[i];
				a[i]=a[j];
				a[j]=temp;
			}
		}
	}
	printf("after sorting\n");
	for(i=0;i<len;i++)
	{
		printf("%d\n",a[i]);
	}
}
