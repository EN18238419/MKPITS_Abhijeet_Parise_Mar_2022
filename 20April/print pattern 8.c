#include<stdio.h>
int main()
{
	int r,c,add=0;
	for(r=1;r<=4;r++)
	{
		for(c=1;c<=5;c++)
		{
			if(r%2!=0)
			{
				add=add+1;
			printf("%d ",add);
		    }
		else
		{
			printf("a ");
		}
		}
		add=0;
		printf("\n");
	}
}

