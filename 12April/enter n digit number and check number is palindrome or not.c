#include<stdio.h>
int main()
{
	int n,bak,num,rev=0;
	printf("enter the number\n");
	scanf("%d",&n);
	bak=n;
	while(n>0)
	{
		num=n%10;
		rev=rev*10+num;
		n=n/10;
	}
	if(bak==rev)
	{
		printf("palindrome number");
	}
	else
	{
		printf("not a palindrome number");
	}
	
}
