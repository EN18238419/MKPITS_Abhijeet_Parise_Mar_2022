#include<stdio.h>
void main()
{
float i,v,p;
clrscr();
printf("enter current and voltage\n");
scanf("%f%f",&i,&v);
p=v*i;
printf("power= %f",p);
getch();
}