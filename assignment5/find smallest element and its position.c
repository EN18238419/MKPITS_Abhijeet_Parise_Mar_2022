#include<stdio.h>
#include<conio.h>
int main()
{
	int i,a[6],small,pos;
	printf("enter array element\n");
	for(i=0;i<6;i++)
	{
		scanf("%d",&a[i]);
		small=a[0];
		pos=1;
	}
	for(i=1;i<6;i++)
	{
		if(small>a[i])
		{
			small=a[i];
			pos=i+1;
		}
		
	}
	printf("smallest element= %d\n",small);
	printf("smallest element position= %d",pos);
}
