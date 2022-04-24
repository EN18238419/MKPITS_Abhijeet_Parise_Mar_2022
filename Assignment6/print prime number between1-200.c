#include<stdio.h>
int main()
{
	int i,j,n,r;
	printf("prime numbers between 1-200\n");
	for(n=1;n<=200;n++)
	{
	for(i=1;i<=n;i++)
	{
		r=0;
		for(j=1;j<=i;j++)
		{
			if(i%j==0)
			{
				r=r+1;
			}

		}
	
	}
		if(r==2)
		{
			printf(" %d\n",n);
			
		}
}
    
}
