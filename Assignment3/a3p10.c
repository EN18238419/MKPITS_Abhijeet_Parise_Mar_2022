#include<stdio.h>
#include<conio.h>
int main()
{
	int i=1,x;
	printf("enter the integer number\n");
	scanf("%d",&x);
    printf("square of even values from 1 to %d\n",x);
	while(i<=x)
	{
	if(i%2==0)
	{
	printf("%d^2 = %d\n",i,i*i);
	}
	i++;
	}
}
