#include<stdio.h>
int main()
{
	int p,iteration=1;
	while(iteration!=0)
	{
		printf("enter the password\n");
		scanf("%d",&p);
		if(p==1234)
		{
			printf("correct password\n");
			iteration=0;
		}
		else
		{
			printf("incorrect password\n\n");
		}
	
	}
}
