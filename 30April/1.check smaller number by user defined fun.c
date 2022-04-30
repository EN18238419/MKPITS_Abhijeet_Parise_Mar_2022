#include<stdio.h>
#include<conio.h>
void check();
int main()
{
	 check();
}
void check()
{
	int n1,n2;
	printf("enter two integer numbers\n");
	scanf("%d%d",&n1,&n2);
	if(n1<n2)
	{
		printf("first number is smaller");
	}
    if(n2<n1)
	{
		printf("second number is smaller");
	}
    if(n1==n2)
	{
		printf("both are equal");
		
	}
}
