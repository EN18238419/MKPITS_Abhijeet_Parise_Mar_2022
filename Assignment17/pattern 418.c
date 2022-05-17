//G G G G G G G 
//  E E E E E
//    C C C
//      A
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=71,add1=71;
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
	   add=add-2;
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
		add1=add1-2;
	    printf("\n");
	}
}
