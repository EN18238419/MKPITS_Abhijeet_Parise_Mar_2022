#include<stdio.h>
int main()
{
	int i,i1,i2,n1,n2,n3;
	printf("armstrong numbers\n");
	for(i=1;i<=999;i++)
	{
	n1=i%10;
	i1=i/10;
	n2=i1%10;
	i2=i1/10;
	n3=i2%10;
	if(i==n3*n3*n3+n2*n2*n2+n1*n1*n1)
		{
			printf("%d\n",i);
		}
	}
}

