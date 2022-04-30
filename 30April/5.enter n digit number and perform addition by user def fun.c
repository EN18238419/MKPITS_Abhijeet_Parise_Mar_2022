#include<stdio.h>
#include<conio.h>
void add();
int main()
{
	add();
}
void add()
{
	int n,num,bak,add=0;
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

