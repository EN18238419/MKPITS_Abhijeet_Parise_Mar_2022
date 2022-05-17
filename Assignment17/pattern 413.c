//D D D D D D D 
//  C C C C C
//    B B B
//      A
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=68,add1=68;
	for(r=4;r>=1;r--)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				printf("%c ",add);
			}
			else
			{
			printf("  ");
		    }
	   }
	   add=add-1;
		for(b=3;b>=1;b--)
		{
			if(r+b>4)
			{
				printf("%c ",add1);
				
			}
			else
			{
				printf("  ");
			}
		}
		add1=add1-1;
	    printf("\n");
	}
}
