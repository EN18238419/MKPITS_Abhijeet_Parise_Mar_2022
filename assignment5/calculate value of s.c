#include<stdio.h>
int main()
{
	float i=1;
	float s=0;
	while(i<=50)
	{
		s=s+(1/i);
		i++;	
	}
	printf("value of s=%f",s);
return 0;
}
