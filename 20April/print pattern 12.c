#include<stdio.h>
int main()
{
	int r,c,add=0;
	for(r=1;r<=3;r++)
	{
		for(c=1;c<=3;c++)
		{
			if(r+c>=4)
			{
				add=add+1;
			printf("%d",add);
		}
		else
		{
			printf(" ");
		}
		}
		add=0;
		printf("\n");
	}
}

