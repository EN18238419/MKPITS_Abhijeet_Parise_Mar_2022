#include<stdio.h>
#include<stdio.h>
int rev(int n)
{
	int num,rev=0;
	for(;n>0;)
	{
		num=n%10;
		rev=rev*10+num;
		n=n/10;
	}
	return rev;
	
}
int main()
{
	int r,n1;
	printf("enter the number: ");
	scanf("%d",&n1);
	r=rev(n1);
	printf("reverse= %d",r);
}



