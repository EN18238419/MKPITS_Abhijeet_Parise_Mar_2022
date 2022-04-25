#include<stdio.h>
#include<conio.h>
int main()
{
	int n,n1,n2,n3,n4,n5,n6,n7;
	printf("enter seven digit number: ");
	scanf("%d",&n);
	n1=n%10;
	n=n/10;
	n2=n%10;
	n=n/10;
	n3=n%10;
	n=n/10;
	n4=n%10;
	n=n/10;
	n5=n%10;
	n=n/10;
	n6=n%10;
	n=n/10;
	n7=n%10;
	printf("%d %d %d %d %d %d %d",n7,n6,n5,n4,n3,n2,n1);
}
