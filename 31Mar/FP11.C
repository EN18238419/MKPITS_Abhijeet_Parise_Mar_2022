#include<stdio.h>
void main()
{
float m,v,p;
clrscr();
printf("enter mass and velocity\n");
scanf("%f%f",&m,&v);
p=m*v;
printf("momentum= %f",p);
getch();
}