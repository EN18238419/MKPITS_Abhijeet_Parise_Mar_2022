#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[6],f=0;
	printf("enter the element of an array\n");
	for(i=0;i<6;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<6;i++)
	{
	 if(a[i]==a[i+1]&&a[i]==a[i+2])
	 {
	 	printf("triple appear");
	 	f=1;
	 }
	}
	if(f==0)
	printf("triple not appear");
}
