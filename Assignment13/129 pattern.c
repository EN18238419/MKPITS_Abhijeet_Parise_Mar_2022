//     A
//   B B
// C C C
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c;
	for(r=1;r<=3;r++)
	{
		for(c=1;c<=3;c++)
		{
			if(r+c>=4)
			{
				printf("%C ",(r+64));
			}
			else
			{
				printf("  ");
			}
		}
		printf("\n");
	}
}
