#include<stdio.h>
#include<conio.h>
int main()
{
int i,j,n,temp,a[5]={4,3,8,1,6};
for(i=1;i<5;i++)
{
	temp=a[i];
	j=i-1;
	while(i>=0&&a[j]>temp)
	{
		a[j+1]=a[j];
		j--;
	}
	a[j+1]=temp;
}
printf("after sorting\n");
for(i=0;i<5;i++)
{
	printf("%d\n",a[i]);
}
}
