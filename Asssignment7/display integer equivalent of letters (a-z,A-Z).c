#include<stdio.h>
#include<conio.h>
int main()
{
	char str[70]={"abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ"};
	int i;
	for(i=0;i<=52;i++)
	{
		printf("%d ",str[i]);
		if((i+2)%7==0)
		{
		printf("\n");	
		}
		
	}
}
