#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[10],size,c3=0,c5=0;
	printf("enter the size of array: ");
	scanf("%d",&size);
	printf("enter array element\n");
	for(i=0;i<size;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<size;i++)
	{
		if(a[i]==3)
		{
		c3=c3+1;	
		}
		else if(a[i]==5)
		{
			c5=c5+1;
		}
		else
		{
			
		}
	}
	if(c3>c5)
	{
		printf("numbers of 3's are greater than numbers of 5's");
	}
	else
	{
		printf("numbers of 3's are not greater than numbers of 5's");
		
    }
	
}
