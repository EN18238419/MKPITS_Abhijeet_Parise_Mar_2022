#include<stdio.h>
int main()
{
	int p,r,d,si;
	printf("enter principal amount ,rate of interest and time in days\n");
	scanf("%d%d%d",&p,&r,&d);
	si=(p*r*d)/(365*100);
	printf("simple interest is %d",si);
}
