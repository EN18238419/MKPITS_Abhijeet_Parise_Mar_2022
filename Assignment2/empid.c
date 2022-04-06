#include<stdio.h>
#include<conio.h>
int main()
{
	int amt,id,twh;
	float sal;
	printf("enter employees id: \n");
	scanf("%d",&id);
	printf("enter total hours: \n");
	scanf("%d",&twh);
	printf("enter amount recieved per hour: \n");
	scanf("%d",&amt);
	sal=twh*amt;
	printf("employees id: %d\n",id);
	printf("salary: %f",sal);
	
}
