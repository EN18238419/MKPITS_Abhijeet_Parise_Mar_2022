#include<stdio.h>
#include<conio.h>
int main()
{
	int n1,n2,n3,n4,n5,ores=0;
	printf("enter first number: \n");
	scanf("%d",&n1);
	printf("enter second number: \n");
	scanf("%d",&n2);
	printf("enter third number: \n");
	scanf("%d",&n3);
	printf("enter forth number: \n");
	scanf("%d",&n4);
	printf("enter fifth number: \n");
	scanf("%d",&n5);
	if(n1%2!=0)
	{
		ores=ores+n1;
	}
	if(n2%2!=0)
	{
		ores=ores+n2;
	}
	if(n3%2!=0)
	{
		ores=ores+n3;
	}
	if(n4%2!=0)
	{
		ores=ores+n4;
    }
    if(n5%2!=0)
	{
		ores=ores+n5;
    }
    printf("addition of odd value: %d\n",ores);
     	
	
}
