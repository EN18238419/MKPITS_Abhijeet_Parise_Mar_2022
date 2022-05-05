#include<stdio.h>
#include<conio.h>
int x;
int fun()
{
	printf("enter the integer number\n");
	scanf("%d",&x);
    printf("square of even values from 1 to %d\n",x);
	int i;
	for(i=1;i<=x;i++)
	{
	if(i%2==0)
	{
	return i;
	}
	}
}
int main()
{
	
	int j,g;
	g=fun();
	for(j=1;j<=x;j++)
	{
	if(j%2==0)
	{
	printf("%d^2 = %d\n",g,g*g);
	g=g+2;
	}
	}

}


