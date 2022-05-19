#include<stdio.h>
#include<conio.h>
int main()
{
	int i,n,f=0,temp,a[10];
	printf("enter array size: ");
	scanf("%d",&n);
	printf("enter array element\n");\
	for(i=0;i<n;i++)
	{
		printf("a[%d]= ",i);
		scanf("%d",&a[i]);
	}
	i=0;
	temp=a[0];
	while(a[i]==temp&&a[i]==a[(n-1)-i])
	{
		f=f+1;
		i++;
	}
	if(f>0)
	{
		printf("true");
	}
	else
	{
		printf("false");
	}
}
