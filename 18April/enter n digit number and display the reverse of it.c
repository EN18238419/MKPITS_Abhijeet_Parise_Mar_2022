#include<stdio.h>
int main()
{
	int n,num,rev=0;
	printf("enter the number\n");
	scanf("%d",&n);
	for(;n>0;)
	{
		num=n%10;
		rev=rev*10+num;
		n=n/10;
	}
	printf("reverse= %d",rev);
	
}

