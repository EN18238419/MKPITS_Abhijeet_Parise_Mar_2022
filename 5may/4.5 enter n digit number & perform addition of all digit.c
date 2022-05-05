#include<stdio.h>
#include<conio.h>
int add()
{
	int n,add=0,num;
	printf("enter any number: ");
	scanf("%d",&num);
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
int g;
g=add();
printf("addition of digit= %d",g);
}




