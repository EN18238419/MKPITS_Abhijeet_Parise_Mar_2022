#include<stdio.h>
int main()
{
	int i,n,b,n1,n2,n3,add;
	printf("enter positive integer number less than 500\n");
	scanf("%d",&n);
	if(n<500)
	{
	n1=n%10;
	b=n/10;
	n2=b%10;
	b=b/10;
	n3=b%10;
	add=n1+n2+n3;
	printf("addition of all digit=%d",add);
    }
}
