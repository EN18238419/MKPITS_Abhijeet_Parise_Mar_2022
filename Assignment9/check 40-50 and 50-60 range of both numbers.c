#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2;
	printf("enter two numbers\n");
	scanf("%d%d",&n1,&n2);
	if(n1>40&&n1<50&&n2>40&&n2<50)
	{
	printf(" both number is in range of 40-50");
		
	}
	else if(n1>50&&n1<60&&n2>50&&n2<60) 
	{
		printf(" both number is not in range of 100-200");
	}
	else
	{
		printf("both number are not in any range ");
	}
}

