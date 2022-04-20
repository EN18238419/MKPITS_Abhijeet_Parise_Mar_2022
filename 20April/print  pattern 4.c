#include<stdio.h>
int main()
{
	int r,c;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=4;c++)
		{
			if(r>=c)
			printf("%c ",(c+64));
		}
		printf("\n");
	}
}

