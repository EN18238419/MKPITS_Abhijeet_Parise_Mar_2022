#include<stdio.h>
int main()
{
	int n,num,rev=0,bkp;
	printf("enter the number\n");
	scanf("%d",&n);
	bkp=n;
	while(n>0)
	{
		num=n%10;
		rev=rev*10+num;
		n=n/10;
	}
	printf("given number=%d\n",bkp);
	printf("reverse= %d",rev);
	
}

