#include<stdio.h>
#include<conio.h>
int res=1;
int fun(int a,int b)
{
	if(b!=0)
	{
		res=res*a;
		fun(a,b-1);
	}
	return res;
}
void main()
{
	int x,y,pow;
	printf("enter x and y\n");
	scanf("%d\n%d",&x,&y);
	pow=fun(x,y);
	printf("power= %d",pow);
}
