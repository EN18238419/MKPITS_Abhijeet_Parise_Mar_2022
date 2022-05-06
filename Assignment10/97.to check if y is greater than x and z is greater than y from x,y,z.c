#include<stdio.h>
#include<conio.h>
int main()
{
	int x,y,z;
	printf("enter three number\n");
	scanf("%d%d%d",&x,&y,&z);
	if(x<y&&y<z)
	{
		printf("condition satisfy");
		
	}
	else
    {
	    printf("condition not satisfy");
    }
}
