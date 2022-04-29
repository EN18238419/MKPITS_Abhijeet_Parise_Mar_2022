#include<stdio.h>
int main()
{
	int f=1,l1,l2,l,i;
	
	char n1[15]={"ramesh1"};
	char n2[15]={"ramesh"};
	for(i=0;n1[i]!='\0';i++)
	{
		l1=l1+1;
	}
	for(i=0;n1[i]!='\0';i++)
	{
		l2=l2+1;
	}
	if(l1>l2)
	{
		l=l1;
	}
	else
	{
		l=l2;
	}
	for(i=0;i<=l;i++)
	{
		if(n1[i]!=n2[i])
		{
			f=0;
		}
	}
	if(f==1)
	{
		printf("strings are same");
		
	}
	else
	{
		printf("strings are not same");
	}
}
