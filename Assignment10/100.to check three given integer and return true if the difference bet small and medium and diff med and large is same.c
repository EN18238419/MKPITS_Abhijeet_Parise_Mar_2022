#include<stdio.h>
#include<conio.h>
int main()
{
	int x,y,z;
	printf("enter three number\n");
	scanf("%d%d%d",&x,&y,&z);
	if(y-x==z-y||z-y==x-z||x-z==y-x||z-x==y-z||x-y==z-x||y-z==x-y)
	{
		printf("true");
	}
	else
	{
		printf("false");
	}
}
