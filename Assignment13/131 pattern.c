//55555
// 4444
//  333
//   22
//    1
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c;
	for(r=5;r>=1;r--)
	{
		for(c=1;c<=5;c++)
		{
			if(r+c>5)
			{
			printf("%d",r);	
			}
			else
			{
			printf(" ");	
			}
		    
		}
		printf("\n");	
	}	
}
