//4 4 4 4 4 4 4 
//  3 3 3 3 3
//    2 2 2
//      1
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b;
	for(r=4;r>=1;r--)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				printf("%d ",r);
			}
			else
			{
			printf("  ");
		    }
	   }
		for(b=3;b>=1;b--)
		{
			if(r+b>4)
			{
				printf("%d ",r);
				
			}
			else
			{
				printf("  ");
			}
		}
	printf("\n");
	}
}
