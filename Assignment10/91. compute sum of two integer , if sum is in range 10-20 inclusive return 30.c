#include<stdio.h>
#include<conio.h>
int main()
{
	int x1,x2,sum;
	printf("enter two number\n");
	scanf("%d%d",&x1,&x2);
	sum=x1+x2;
	if(sum>=10&&sum<=20)
	{
		printf("30");
		
	}
	else
    {
	    printf("%d",sum);
    }
}
