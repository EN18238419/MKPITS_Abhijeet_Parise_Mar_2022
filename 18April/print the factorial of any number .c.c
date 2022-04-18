#include<stdio.h>
int main()
{
	int i=1,mul=1,n;
	printf("enter number\n");
	scanf("%d",&n);
	do
	{
		mul=mul*i;
		i++;
	}while(i<=n);
	printf("factorial= %d",mul);
}

