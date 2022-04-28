#include<stdio.h>
#include<conio.h>
int main()
{
	int n,bk,res,n1,n2,n3,n4,n5;
	printf("enter any five digit number: ");
	scanf("%d",&n);
	bk=n;
	n1=n%10;
	n=n/10;
	n2=n%10;
	n=n/10;
	n3=n%10;
	n=n/10;
	n4=n%10;
	n=n/10;
	n5=n%10;
	res=n1*10000+n2*1000+n3*100+n4*10+n5*1;
	if(bk==res)
	{
		printf("palindrome number");
	}
	else
	{
			printf("not a palindrome number");
	}
}
