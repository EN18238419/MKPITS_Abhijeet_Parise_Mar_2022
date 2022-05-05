#include<stdio.h>
#include<conio.h>
int main()
{
	int x1;
	printf("enter non negative number\n");
	scanf("%d",&x1);
	if(x1%3==0)
	{
		if(x1%7!=0)
		printf("multiple of 3");
		
	}
	if(x1%7==0)
    {
    	if(x1%3!=0)
	    printf("multiple of 7");
    }
}
