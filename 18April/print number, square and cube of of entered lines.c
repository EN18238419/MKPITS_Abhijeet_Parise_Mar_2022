#include<stdio.h>
int main()
{
	int n,i;
	printf("enter number of lines: \n");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		printf("number:%d  square:%d  cube:%d\n",i,i*i,i*i*i);
	}

}

