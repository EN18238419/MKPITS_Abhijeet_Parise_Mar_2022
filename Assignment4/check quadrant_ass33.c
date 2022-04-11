#include<stdio.h>
int main()
{
	int x,y;
	printf("enter x co ordinates: \n");
	scanf("%d",&x);
	printf("enter y co ordinates: \n");
	scanf("%d",&y);
	if(x>0&&y>0)
	{
		printf("quadrant 1");
		
	}
	else if(x>0&&y<0)
	{
		printf("quadrant 2");
	}
	else if(x<0&&y<0)
	{
		printf("quadrant 3");
	}
	else if(x<0&&y>0)
	{
		printf("fourth quadrant");
	}
}
