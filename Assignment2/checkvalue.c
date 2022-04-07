#include<stdio.h>
#include<conio.h>
int main()
{
	int p,q,r,s;
	printf("enter even value(p): \n");
	scanf("%d",&p);
	printf("enter integer value(q): \n");
	scanf("%d",&q);
	printf("enter positive value(r): \n");
	scanf("%d",&r);
	printf("enter positive value(s): \n");
	scanf("%d",&s);
	if(q>r&&s>p&&(r+s)>(p+q))
	{	
	printf("correct values");
	}
	else
	{
	printf("wrong values");
	}
}
