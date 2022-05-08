#include<stdio.h>
#include<conio.h>
int add=0;
int fun(int x)
{
	if(x==0)
	{
	return add;
	}
	add=add+(x%10);
	fun(x/10);
}
void main()
{  
    int n,res;
	printf("enter the number: ");
	scanf("%d",&n);
    res=fun(n);
    printf("addition of all digit= %d",res);
}


		
	
	
	
	

