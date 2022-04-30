#include<stdio.h>
#include<stdio.h>
void rev();
int main()
{
	rev();
}
void rev()
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


