#include<stdio.h>
void main()
{
float f,a,p;
clrscr();
printf("enter force and area\n");
scanf("%f%f",&f,&a);
p=f/a;
printf("pressure= %f",p);
getch();
}