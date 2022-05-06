#include<stdio.h>
#include<conio.h>
int main()
{
	int x1,x2,r1,r2;
	printf("enter two number\n");
	scanf("%d%d",&x1,&x2);
	r1=x1%5;
	r2=x2%5;
    if(x1==x2)
	{
		printf("\n0");
	}
	else if(r1==r2)
	{
		if(x1>x2)
		{
			printf("\n%d is smaller integer ",x2);
			
		}
		else
		{
			printf("\n%d is smaller integer",x1);
		}
	}
	else
	{
		if(x1>x2)
		{
			printf("\n%d is larger integer",x1);
		}
		else
		{
			printf("\n%d is larger integer",x2);
		}
	}
}
