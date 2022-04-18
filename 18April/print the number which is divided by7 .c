#include<stdio.h>
int main()
{
	int n1,n2,i,temp;
	printf("enter first number\n");
	scanf("%d",&n1);
	printf("enter second number\n");
	scanf("%d",&n2);
	printf("number which is divided by 7 \n");
	if(n1>n2)
	{
		temp=n1;
		n1=n2;
		n2=temp;
	}
	i=n1;
	do
	{
		if(i%7==2||i%7==3)
		{
		printf("%d ",i);
		}
		i++;
	}while(i<=n2);
}

