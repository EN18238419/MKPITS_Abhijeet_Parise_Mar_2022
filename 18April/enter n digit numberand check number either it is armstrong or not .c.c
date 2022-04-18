#include<stdio.h>
#include<math.h>
int main()
{
	int d,r,n,t,add=0,bak,count=0;
	printf("enter the number");
	scanf("%d",&n);
	bak=n;
	t=n;
	do
	{
		d=n%10;
		count=count+1;
		n=n/10;
	}
	while(n>0);
	do
	{
		r=t%10;
		add=add+pow(r,count);
		t=t/10;
	}while(t>0);
	if(bak==add)
	{
		printf("armstrong number");
	}
	else
	{
		printf("not a armstrong number");	
	}
}

