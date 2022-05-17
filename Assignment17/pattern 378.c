//      A
//    B A B 
//  C B A B C  
//D C B A B C D
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,b,add=69,add1=65 ;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				add=add-1;
				printf("%c ",add);
			}
			else
			{
				add=add-1;
			printf("  ");
		    }
		}
		add=69;
		for(b=3;b>=1;b--)
		{
			if(r+b>4)
			{
				add1=add1+1;
				printf("%c ",add1);
			}
			else
			{
				printf("  ");
			}
		}
		add1=65;
	printf("\n");
	}
}
