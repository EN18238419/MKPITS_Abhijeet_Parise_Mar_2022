#include<stdio.h>
#include<stdio.h>
int rev()
{
	int num,rev=0,n;
	printf("enter the number: ");
	scanf("%d",&n);
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
	int r;
	r=rev();
	printf("reverse= %d",r);
}




