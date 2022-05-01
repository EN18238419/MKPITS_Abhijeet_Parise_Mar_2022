#include<stdio.h>
#include<conio.h>
void check(int num);
void add()
{
int num1;
check(num1);	
}
void check(int num)
{
	int n,bak,add=0;
	printf("enter any number\n");
	scanf("%d",&num);
	bak=num;
	while(num>0)
	{
	n=num%10;
	add=add+n;
	num=num/10;
	}
	printf("addition of %d = %d",bak,add);
}
int main()
{
	add();
}


