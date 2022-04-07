#include<stdio.h>
#include<math.h>
int main()
{
	float a,b,c,r1,r2,nr,srnr;
	printf("enter first number(a): \n");
	scanf("%f",&a);
	printf("enter second number(b): \n");
	scanf("%f",&b);
	printf("enter third number(c): \n");
	scanf("%f",&c);
	nr=(b*b)-(4*a*c);
	if(nr>1&&a!=0)
	{
	srnr=sqrt(nr);
	r1=(-b-srnr)/(2*a);
	r2=(-b+srnr)/(2*a);
	printf("root1: %f\n",r1);
	printf("root2: %f\n",r2);
	}
	else
	{
		printf("not possible to find");
	}
	
}
