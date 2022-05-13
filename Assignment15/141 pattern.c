//   *
//  * *
// * * *
//* * * *
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=4;c++)
		{
			if(r+c>4)
			{
				printf("* ");
				
			}
			else
			{
				printf(" ");
			}
		}
		printf("\n");
	}
}
