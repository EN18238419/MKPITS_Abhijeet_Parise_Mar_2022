#include<stdio.h>
void main()
{
float i,r,v;
clrscr();
printf("enter current and resistance\n");
scanf("%f%f",&i,&r);
v=i*r;
printf("voltage= %f",v);
getch();
}