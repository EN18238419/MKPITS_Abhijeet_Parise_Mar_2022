//      0
//    1 0 1
//  2 1 0 1 2  
//3 2 1 0 1 2 3
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=4,add1=0;
	for(r=1;r<=4;r++)
	{
	for(c=1;c<=4;c++)
	{
			if(r+c>4)
			{
				add=add-1;
				printf("%d ",add);
				
			}
			else
			{
				add=add-1;
				printf("  ");
			}
	}
		add=4;
	for(b=3;b>=1;b--)
	{
		if(r+b>4)
		{	
		add1=add1+1;
		printf("%d ",add1);
		}
		else
		{
		printf(" ");	
		}
	}
	add1=0;
	printf("\n");
	}
}
