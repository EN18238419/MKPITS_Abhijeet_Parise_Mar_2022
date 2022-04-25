#include<stdio.h>
int main()
{
	int m1[2][2], m2[2][2], res[2][2],i,j;
	printf("enter 2 X 2 matrix m1:\n");
	for(i=0;i<=1;i++)
	{
		for(j=0;j<=1;j++)
		{
			scanf("%d",&m1[i][j]);
		}
	}
		printf("enter 2 X 2 matrix m2:\n");
	for(i=0;i<=1;i++)
	{
		for(j=0;j<=1;j++)
		{
			scanf("%d",&m2[i][j]);
		}
	}
	for(i=0;i<=1;i++)
	{
		for(j=0;j<=1;j++)
		{
			res[i][j]=m1[i][j]-m2[i][j];
		}
	}
	for(i=0;i<=1;i++)
	{
		for(j=0;j<=1;j++)
		{
		printf("m1[%d][%d]=%d\n",i,j,res[i][j]);
		}
	}
	
	
}
