#include<stdio.h>
int main()
{
	int r,c,add=0;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=r;c++)
		{
			add=add+1;
			printf("%d ",add);
		}
		printf("\n");
	}
}
