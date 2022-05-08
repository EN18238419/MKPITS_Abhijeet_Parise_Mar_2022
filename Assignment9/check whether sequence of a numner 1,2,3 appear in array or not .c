#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[9],f=0;
	printf("enter the element of an array\n");
	for(i=0;i<9;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<9;i++)
	{
	 if(a[i]==1&&a[i+1]==2&&a[i+2]==3)
	 {
	 	printf("sequence appear");
	 	f=1;
	 }
	}
	if(f==0)
	printf("sequence not appear");
}
