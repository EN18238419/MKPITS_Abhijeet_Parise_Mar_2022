#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
	int i,j,count;
	char s[1000];
	char check[]={'0','1','2','3','4','5','6','7','8','9'};
	scanf("%s",&s);
	for(i=0;i<=9;i++)
	{
		count=0;
		for(j=0;j<strlen(s);j++)
		{
			if(s[j]==check[i])
			{
				count++;
			}
		}
		printf("%d ",count);
	}
	return 0;
	
}
