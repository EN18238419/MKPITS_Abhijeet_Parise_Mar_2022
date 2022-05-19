#include<stdio.h>
#include<conio.h>
int main()
{
	float avg,n1,n2,n3,n4;
	printf("enter the first number: ");
	scanf("%f",&n1);
	printf("enter the second number: ");
	scanf("%f",&n2);
	printf("enter the third number: ");
	scanf("%f",&n3);
	printf("enter the forth number: ");
	scanf("%f",&n4);
	avg=(n1+n2+n3+n4)/4;
	printf("average = %f",avg);
}
