#include<stdio.h>
#include<conio.h> 
void fun(int j,int n)
{
	if(j>n)
	{
	return;
	}
	printf("%d\n",j);
	fun(j+2,n);
}
void main()
{
	int i=0,num;
	printf("enter any number: ");
	scanf("%d",&num);
	fun(i,num);
}
