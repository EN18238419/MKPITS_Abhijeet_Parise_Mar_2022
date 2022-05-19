#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[10],size,f=0,s=0;
	printf("enter the size of array: ");
	scanf("%d",&size);
	printf("enter array element\n");
	for(i=0;i<size;i++)
	{
		printf("a[%d]= ",i);
		scanf("%d",&a[i]);
	}
	for(i=0;i<size;i++)
	{
	if(a[i]==5)
	{
		if((a[i]==5&&a[i+1]==5)||(a[i]==5&&a[i-1]==5))
		{
			f=1;
		}
		else
		{
			s=1;
		}	
	}
		
	}
	if(f==1&&s!=1)
	{
		printf("true");
	}
	else if(s==1)
	{
		printf("false");
		
	}
	
}
