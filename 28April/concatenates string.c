#include<stdio.h>
#include<conio.h>
int main()
{
	int i,len=0,len1=0;
	char ch1[50]={"abhijeet"};
	char ch2[20]={"krishna"};
	for(i=0;ch1[i]!='\0';i++)
	{
		len=len+1;
	}
	for(i=0;ch2[i]!='\0';i++)
	{
		len1=len1+1;
	}
	for(i=0;i<=len;i++)
	{
		ch1[len]=ch2[i];
		len++;
		
	}
	ch1[len]='\0';
	printf("concatenates string : %s",ch1);
	
	
	
	
}
