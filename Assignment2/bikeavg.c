#include<stdio.h>
#include<conio.h>
int main()
{
	int d,f;
	float avg;
	printf("enter total distance(in km): \n");
	scanf("%d",&d);
	printf("enter fuel(in litres): \n");
	scanf("%d",&f);
	avg=d/f;
	printf("bikes average= %f",avg);
	
	
}
