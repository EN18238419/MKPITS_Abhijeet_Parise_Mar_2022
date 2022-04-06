#include<stdio.h>
#include<conio.h>
int main()
{
	int y,w,d,days;
	printf("enter days\n");
	scanf("%d",&days);
	y=(days/365);
	w=(days%365)/7;
	d=days-((y*365)+(w*7));
	printf("years= %d\n",y);
	printf("weeks= %d\n",w);
	printf("days= %d",d);
	getch();
	
}
