#include<stdio.h>
#include<conio.h>
void fun(int n1,int n2,int n);
void check()
{
	int x1,x2,x3;
    fun(x1,x2,x3);
}
void fun(int n1,int n2,int n3)
{
	printf("enter three integer numbers\n");
	scanf("%d%d%d",&n1,&n2,&n3);
	if(n1>n2&&n1>n3)
	{
		printf("first number is greater");
	}
	else if(n2>n1&&n2>n3)
	{
		printf("second number is greater");
	}
	else
	{
		printf("third number is greater");
		
	}
}
int main()
{
	 check();
}

