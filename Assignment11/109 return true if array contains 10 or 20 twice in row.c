#include<stdio.h>
#include<conio.h>
int main()
{
	int i,f=0,a[2];
	printf("enter array element\n");
	for(i=0;i<2;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<2;i++)
	{
		if((a[i]==10&&a[i+1]==10)||(a[i]==20&&a[i+1]==20))
		{
			f=1;
		}
	}
	if(f==1)
	{
		printf("true");
	}
	else
	{
		printf("false");
	}
}
