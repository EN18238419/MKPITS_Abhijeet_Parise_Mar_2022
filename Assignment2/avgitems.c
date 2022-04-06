#include<stdio.h>
#include<conio.h>
int main()
{
	float w1,w2,i1,i2,res;
	printf("enter first items weight: ");
	scanf("%f",&w1);
	printf("enter number of first item: ");
	scanf("%f",&i1);
	printf("enter second items weight: ");
	scanf("%f",&w2);
	printf("enter number of second items: ");
	scanf("%f",&i2);
	res=((w1*i1)+(w2*i2))/(i1+i2);
	printf("average value of item= %f",res);
	
	
}
