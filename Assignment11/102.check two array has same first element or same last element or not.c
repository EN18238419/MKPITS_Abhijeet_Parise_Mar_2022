#include<stdio.h>
#include<conio.h>
int main()
{
	int i,j,size1,size2,f=0;
	printf("enter the size of array1: ");
	scanf("%d",&size1);
	int a1[size1];
	printf("enter the element of an array\n");
    for(i=0;i<size1;i++)
    {
    	scanf("%d",&a1[i]);
	}
	printf("enter the same size of array2: ");
	scanf("%d",&size2);
	int a2[size2];
	printf("enter the element of an array\n");
    for(j=0;j<size2;j++)
    {
    	scanf("%d",&a2[j]);
	}
	for(i=0;i<size1;i++)
	{
		if(a1[0]==a2[0]||a1[size1-1]==a2[size2-1])
		{
			f=1;
		}
	}
	printf("\n");
	if(f==1)
	{
		printf("true");
	}
	else
	{
		printf("false");	
	}
}
