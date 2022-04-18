#include<stdio.h>
int main()
{
	int i,mul=1,n;
	printf("enter number\n");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		mul=mul*i;
	}
	printf("factorial= %d",mul);
}

