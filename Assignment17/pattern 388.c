//      A
//    A B A
//  A B C B A  
//A B C D C B A
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=64,add1=64 ;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				add=add+1;
				printf("%c ",add);
			}
			else
			{
    			printf("  ");
		    }
		}
		add=64;
		for(b=3;b>=1;b--)
		{
			if(r+b>4)
			{
			
				printf("%c ",add1);
					add1=add1-1;
			}
			else
			{
				printf("  ");
				add1=add1-1;
			}
		}
		add1=64;
		add1=add1+r;
	printf("\n");
	}
}
