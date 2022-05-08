#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
	char str1[15],str2[15];
	int i,len=0;
	printf("enter any word: ");
	scanf("%s",str1);
	for(i=0;str1[i]!='\0';i++)
	{
		str2[i]=str1[i];
		len=len+1;
	}
	printf("copied string: %s\n",str2);
	printf("length of string:%d",len);
}
