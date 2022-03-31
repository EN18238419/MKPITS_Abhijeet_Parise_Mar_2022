#include<stdio.h>
void main()
{
float m,v,density;
clrscr();
printf("enter mass and volume\n");
scanf("%f%f",&m,&v);
density=m/v;
printf("density= %f",density);
getch();
}