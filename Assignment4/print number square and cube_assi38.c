#include<stdio.h>
int main()
{
	int n,i;
	i=1;
	printf("enter number of lines: \n");
	scanf("%d",&n);
	while(i<=n)
	{
		printf("number:%d  square:%d  cube:%d\n",i,i*i,i*i*i);
	i++;
	}

}
