#include<stdio.h>
#include<conio.h>
int add(int num)
{
	int n,add=0;
	while(num>0)
	{
	n=num%10;
	add=add+n;
	num=num/10;
	}
	return add;
}
int main()
{
	int bak,num1,g;
	printf("enter any number\n");
	scanf("%d",&num1);
	bak=num1;
	g=add(num1);
	printf("addition of %d = %d",bak,g);
}



