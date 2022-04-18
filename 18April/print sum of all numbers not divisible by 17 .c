#include<stdio.h>
int main()
{
	int n1,n2,sum=0,temp,i;
	printf("enter first number\n");
	scanf("%d",&n1);
	printf("enter second number\n");
	scanf("%d",&n2);
	if(n1>n2)
	{
		temp=n1;
		n1=n2;
		n2=temp;
	}
	i=n1;
    do	
	{
		if(i%17!=0)
		{
			sum=sum+i;
		}
		i++;
	}while(i<=n2);
	printf("sum of all number not divisible by 17= %d",sum);
}

