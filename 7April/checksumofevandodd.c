#include<stdio.h>
#include<conio.h>
int main()
{
	int n,d1,d2,d3,d4,d5,eres=0,ores=0;
	printf("enter 5 digit number");
	scanf("%d",&n);
	d1=n%10;
	n=n/10;
	d2=n%10;
	n=n/10;
	d3=n%10;
	n=n/10;
	d4=n%10;
	n=n/10;
	d5=n%10;
if(d1%2==0)
{
	eres=eres+d1;
}
else
{
	ores=ores+d1;
}
if(d2%2==0)
{
	eres=eres+d2;
}
else
{
	ores=ores+d2;
}
if(d3%2==0)
{
	eres=eres+d3;
}
else
{
	ores=ores+d3;
}
if(d4%2==0)
{
	eres=eres+d4;
}
else
{
	ores=ores+d4;
}
if(d5%2==0)
{
	eres=eres+d5;
}
else
{
	ores=ores+d5;
}
printf("addition of even digit: %d\n",eres);
printf("addition of odd digit: %d\n",ores);
}

