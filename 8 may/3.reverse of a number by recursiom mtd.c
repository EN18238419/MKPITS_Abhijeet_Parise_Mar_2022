#include<stdio.h>
#include<conio.h>
int r,rev=0;
int fun(int x)
{
	if(x!=0)
	{
	r=x%10;
	rev=(rev*10+r);
	fun(x/10);   
	}
	else
	{
	return rev;
	}
}
void main()
{  
    int n,result;
	printf("enter the number: ");
	scanf("%d",&n);
    result=fun(n);
    printf("reverse= %d",result);
}


		
	
	
	
	

