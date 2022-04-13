#include<stdio.h>
int main()
{
	int i=1,mul=1,n;
	printf("enter number\n");
	scanf("%d",&n);
	while(i<=n)
	{
		mul=mul*i;
		i++;
	}
	printf("factorial= %d",mul);
}
