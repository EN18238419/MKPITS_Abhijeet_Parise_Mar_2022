#include<stdio.h>
#include<conio.h>
int main()
{
	float n1,n2,n3,p;
	printf("enter first number:\n");
	scanf("%f",&n1);
	printf("enter second number:\n");
	scanf("%f",&n2);
	printf("enter third number:\n");
	scanf("%f",&n3);
	if((n2+n3)>n1&&(n1+n3)>n2&&(n1+n2)>n3)
	{
	p=n1+n2+n3;
	printf("perimeter: %f",p);
	}
	else
	{
		printf("impossible to make triangle");
	}
}
