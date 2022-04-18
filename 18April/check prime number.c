#include<stdio.h>
#include<conio.h>
int main()
{
	int i=1,num,r=0;
	printf("enter any integer number: \n");
	scanf("%d",&num);
	while(i<=num)
	{
		if(num%i==0)
		{
			r=r+1;
		}
		i++;
	}
	if(r==2)
	{
		printf("prime number");
	}
	else
	{
		printf("not a prime number");
	}
}
