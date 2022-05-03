#include<stdio.h>
#include<conio.h>
int main()
{
	int p,q,i,j;
	printf("enter two numbers\n");
	scanf("%d%d",&p,&q);
	for(i=0;i<p;i++)
	{
		for(j=1;j<=q;j++)
		{
			printf("%d ",j);
		}
		printf("\n");
	}
}
