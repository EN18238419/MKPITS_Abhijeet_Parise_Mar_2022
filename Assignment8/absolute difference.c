#include<stdio.h>
#include<conio.h>
int main()
{
	int n,diff;
	printf("enter the value of n: ");
	scanf("%d",&n);
	if(n>51)
	{
		diff=n-51;
		diff=3*diff;
		printf("difference between n and 51: %d",diff);
		
	}
	else
	{
		diff=n-51;
		printf("difference between n and 51: %d",diff);
	}
}
