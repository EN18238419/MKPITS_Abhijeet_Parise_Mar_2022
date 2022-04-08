#include<stdio.h>
#include<conio.h>
int main()
{
	int f,s,temp;
	printf("enter first number:\n");
	scanf("%d",&f);
	printf("enter second number:\n");
	scanf("%d",&s);
	if(f>s)
	{
	temp=f;
	f=s;
	s=temp;	
	}
	if(s%f==0)
	{
		printf("multiplied");
	}
	else
	{
		printf("not multiplied");
	}
}
