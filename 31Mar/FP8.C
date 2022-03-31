#include<stdio.h>
void main()
{
float d,t,v;
clrscr();
printf("enter distance and time\n");
scanf("%f%f",&d,&t);
v=d/t;
printf("velocity= %f",v);
getch();
}