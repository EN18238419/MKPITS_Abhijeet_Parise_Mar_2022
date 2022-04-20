#include<stdio.h>
int main()
{
	int r,c;
	for(r=4;r>=1;r--)
	{
		for(c=1;c<=r;c++)
		{
			if(r%2==0)
			{
			printf("%c",(c+64));
		    }
		else
		{
			printf("%c",(c+96));
		}
		}
		printf("\n");
	}
}

