#include<stdio.h>
#include<stdio.h>
void rev1(int n);
void rev()
{
	int n1;
	rev1(n1);
}
void rev1(int n)
{
	int num,rev=0;
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
int main()
{
	rev();
}


