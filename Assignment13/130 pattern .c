//ABCDE
//ABCD
//ABC
//AB
//A
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,add=0;
	for(r=5;r>=1;r--)
	{
		for(c=1;c<=r;c++)
		{
		add=add+1;	
		printf("%c",(add+64));
		}
		add=0;
		printf("\n");
	}
	
}
