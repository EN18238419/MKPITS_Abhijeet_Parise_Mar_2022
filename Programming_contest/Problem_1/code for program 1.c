#include<stdio.h>
#include<conio.h>
#include<math.h>
int main()
{
	int n,i,j,start,stop,size;
	scanf("%d",&n);
	size=2*n-1;
	start=0;
	stop=size-1;
	int a[size][size];
	while(n!=0)
	{
		for(i=start;i<=stop;i++)
		{
			for(j=start;j<=stop;j++)
			{
				if(i==start||i==stop||j==start||j==stop)
				{
					a[i][j]=n;
				}
			}
		}
		stop--;
		start++;
		n--;
		
	}
	for(i=0;i<size;i++)
	{
		for(j=0;j<size;j++)
		{
			printf("%d ",a[i][j]);
			
		}printf("\n");
	}

	
}
