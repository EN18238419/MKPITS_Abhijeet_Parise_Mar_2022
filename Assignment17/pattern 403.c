//7 7 7 7 7 7 7 
//  5 5 5 5 5
//    3 3 3
//      1
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=7,add1=7;
	for(r=4;r>=1;r--)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				printf("%d ",add);
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
				printf("%d ",add1);
				
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
