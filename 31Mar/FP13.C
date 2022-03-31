#include<stdio.h>
void main()
{
float p,a,stress;
clrscr();
printf("enter external force and cross sectional area\n");
scanf("%f%f",&p,&a);
stress=p/a;
printf("stress= %f",stress);
getch();
}