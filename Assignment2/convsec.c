#include<stdio.h>
#include<conio.h>
int main()
{
	int s,m,h;
	printf("enter the seconds: \n");
	scanf("%d",&s);
	h=s/3600;
	m=(s-(h*3600))/60;
	s=s-((h*3600)+(m*60));
	printf("hours: %d\n",h);
	printf("minutes: %d\n",m);
	printf("seconds: %d",s);
	
}
