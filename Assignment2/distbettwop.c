#include<stdio.h>
#include<math.h>
int main()
{
	float x1,x2,y1,y2,d;
	printf("enter the point A(x1,y1):\n");
	scanf("%f%f",&x1,&y1);
	printf("enter the point B(x2,y2):\n");
	scanf("%f%f",&x2,&y2);
	d=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
	printf("distance between two point= %f",d);
	
	
}
