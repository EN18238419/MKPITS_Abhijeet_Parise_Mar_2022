#include<stdio.h>
#include<conio.h>
int main()
{
	int i,x;
	printf("enter the integer number\n");
	scanf("%d",&x);
    printf("square of even values from 1 to %d\n",x);
	for(i=1;i<=x;i++)
	{
	if(i%2==0)
	{
	printf("%d^2 = %d\n",i,i*i);
    }
    }
}
