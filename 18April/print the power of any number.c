#include<stdio.h>
int main()
{
	int i,pow=1,x,y;
	printf("enter x and y\n");
	scanf("%d\n%d",&x,&y);
	for(i=1;i<=y;i++)
	{
	pow=pow*x;
	}
	printf("power= %d",pow);
}

