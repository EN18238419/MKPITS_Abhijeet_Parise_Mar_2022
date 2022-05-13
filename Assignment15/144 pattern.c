//   A
//  B B
// C C C
//D D D D
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
				printf("%c ",(r+64));
				
			}
			else
			{
				printf(" ");
			}
		}
		printf("\n");
	}
}
