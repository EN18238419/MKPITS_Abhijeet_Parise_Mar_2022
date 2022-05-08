#include<stdio.h>
#include<conio.h>
int main()
{
	int i,n,j=0,x=0;
	printf("enter number of lines: ");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		for(;x<3;x++)
		{
			j++;
			printf("%d",j);
		}
		x=0;
		printf("\n");
	}
}
