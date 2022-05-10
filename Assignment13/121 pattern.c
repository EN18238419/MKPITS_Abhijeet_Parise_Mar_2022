//12345
//1234
//123
//12
//1
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,add=0;
	for(r=5;r>=1;r--)
	{
		for(c=1;c<=r;c++)
		{
			add=add+1;
			printf("%d",add);
		}
		add=0;
		printf("\n");
	}
}
