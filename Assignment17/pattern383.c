//      1
//    1 2 1 
//  1 2 3 2 1  
//1 2 3 4 3 2 1
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=0,add1=1;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				add=add+1;
				printf("%d ",add);
			}
			else
			{
			printf("  ");
		    }
		}
		add=0;
		for(b=3;b>=1;b--)
		{
			if(r+b>4)
			{
				add1=add1-1;
				printf("%d ",add1);
				
			}
			else
			{
				printf("  ");
				add1=add1-1;
			}
		}
		add1=1;
		add1=add1+r;
	printf("\n");
	}
}
