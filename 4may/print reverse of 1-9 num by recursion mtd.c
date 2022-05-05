#include<stdio.h>
#include<conio.h>
void fun(int a)
{
	if(a==10)
	return ;
	fun(a+1);
	printf("%d\n",a);
}
void main()
{
	fun(1);
	
}

