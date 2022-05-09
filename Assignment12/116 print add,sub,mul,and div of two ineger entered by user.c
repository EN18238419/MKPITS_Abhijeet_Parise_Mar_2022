#include<stdio.h>
#include<conio.h>
int main()
{
	float n1,n2,add,sub,mul,div;
	printf("enter the two number\n");
	scanf("%f%f",&n1,&n2);
	add=n1+n2;
	printf("addition: %f\n",add);
	sub=n1-n2;
	printf("substraction: %f\n",sub);
	mul=n1*n2;
	printf("multiplication: %f\n",mul);
	div=n1/n2;
	printf("division: %f",div);
}
