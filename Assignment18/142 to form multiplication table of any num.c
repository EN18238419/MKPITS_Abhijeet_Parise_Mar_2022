#include<stdio.h>
#include<conio.h>
int main()
{
	int i,n,res;
	printf("enter any number to form multiplication table: ");
	scanf("%d",&n);
	for(i=1;i<=10;i++)
	{
		res=n*i;
		printf("%d x %d = %d\n",n,i,res);
	}
}
