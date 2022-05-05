#include<stdio.h>
#include<conio.h>
int main()
{
	int x1;
	printf("enter number\n");
	scanf("%d",&x1);
	if(x1%10<=2)
	{
		printf("it is within 2 of a multiple of 10");
	}
	else
    {
	    printf("it is not within 2 of a multiple of 10");
    }
}
