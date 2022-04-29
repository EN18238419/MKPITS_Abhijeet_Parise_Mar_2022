#include<stdio.h>
#include<conio.h>
int main()
{
	int i,j=0,len=0;
	char name[50];
	char rev[50];
	printf("enter any name: ");
	scanf("%s",name);
	for(i=0;name[i]!='\0';i++)
	{
		len=len+1;
	}
	
	for(i=len-1;i>=0;i--)
	{
		rev[j]=name[i];
		j++;
	
	}
	rev[j]='\0';
	printf("reverse of string= %s",rev);
	
}
