#include<stdio.h>
#include<conio.h>
int fun(int y)
{
	int i;
	for(i=1;i<=y;i++)
	{
	if(i%2==0)
	{
	return i;
	}
	}
}
int main()
{
	int x,g;
	printf("enter the integer number\n");
	scanf("%d",&x);
    printf("square of even values from 1 to %d\n",x);
	int j;
	g=fun(x);
	for(j=1;j<=x;j++)
	{
	if(j%2==0)
	{
	printf("%d^2 = %d\n",g,g*g);
	g=g+2;
	}
	}

}

