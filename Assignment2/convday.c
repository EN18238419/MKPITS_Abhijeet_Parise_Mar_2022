#include<stdio.h>
#include<conio.h>
int main()
{
	int d,m,y;
	printf("enter days\n");
	scanf("%d",&d);
	y=d/365;
	m=(d-(y*365))/30;
	d=d-((y*365)+(m*30));
	printf("years: %d\n",y);
	printf("months: %d\n",m);
	printf("days: %d\n",d);
	
		
}
