#include<stdio.h>
#include<conio.h>
int main()
{
	int t1,t2;
	printf("enter two temperature\n");
	scanf("%d%d",&t1,&t2);
	if(t1<0&&t2>100)
	{
		printf("one given temperature is less than 0 and other is greater than 100");
	}
	else if(t1>100&&t2<0)
	{
		printf("one given temperature is less than 0 and other is greater than 100");
	}
	else
	{
	printf(" ");	
	}
	
}
