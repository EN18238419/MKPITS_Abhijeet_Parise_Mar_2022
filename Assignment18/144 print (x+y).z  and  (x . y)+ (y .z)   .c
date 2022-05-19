#include<stdio.h>
#include<conio.h>
int main()
{
	int x,y,z,r1,r2;
	printf("enter x= ");
	scanf("%d",&x);
	printf("enter y= ");
	scanf("%d",&y);
	printf("enter z= ");
	scanf("%d",&z);
	r1=(x+y)*z;
	r2=(x*y)+(y*z);
	
	printf("\n(x+y).z= %d\n",r1);
	printf("(x.y)+(y.z)= %d",r2);
}
