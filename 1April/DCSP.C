#include<stdio.h>
void main()
{
int num,r;
clrscr();
printf("enetr number\n");
scanf("%d",&num);
r=num%4;
if(r==0)
{
printf("number divisible by 4");
}
if(r!=0)
{
printf("number is not divisible by 4");
}
getch();
}