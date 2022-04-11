#include<stdio.h>
int main()
{
	float f,s,div;
	printf("enter two numbers\n");
	scanf("%d%d",&f,&s);
	if(s!=0)
	{
		div=f/s;
		printf("division= %f",div);
	}
	else
	{
		printf("division not possible");
	}
}
