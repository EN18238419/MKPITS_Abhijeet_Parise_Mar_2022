#include<stdio.h>
#include<conio.h>
int main()
{
	int y;
	printf("enter year: ");
	scanf("%d",&y);
	if(y%4==0)
	{
		printf("\n%d year is leap year",y);
	}
	else
	{
		printf("\n%d year is not leap year",y);
	}
}
