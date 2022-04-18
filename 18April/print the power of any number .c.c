#include<stdio.h>
int main()
{
	int i=1,pow=1,x,y;
	printf("enter x and y\n");
	scanf("%d\n%d",&x,&y);
    do	
	{
	pow=pow*x;
	i++;
	}while(i<=y);
	printf("power= %d",pow);
}

