#include<stdio.h>
int main()
{
	int i,pow=1,x,y;
	i=1;
	printf("enter x and y\n");
	scanf("%d\n%d",&x,&y);
	while(i<=y)
	{
	pow=pow*x;
	i++;
	}
	printf("power= %d",pow);
}
