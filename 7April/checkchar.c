#include<stdio.h>
#include<conio.h>
int main()
{
	char x;
	printf("enter any charecter\n");
	scanf("%c",&x);
	if(x>=65&&x<=90)
	{
		printf("enter charecter is capital alphabet");
	}
	else if(x>=97&&x<=122)
	{
		printf("enter charecter is small alphabet");
	}
	else if(x>=48&&x<=57)
	{
		printf("enter charecter is digit");
	}
	else
	{
		printf("enter charecter is special symbol");
	}
	}
