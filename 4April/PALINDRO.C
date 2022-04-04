#include<stdio.h>
#include<conio.h>
void main()
{
int num,n1,n2,n3,num1,num2;
clrscr();
printf("enter three digit number");
scanf("%d",&num);
n1=num%10;
num1=num/10;
n2=num1%10;
num2=num1/10;
n3=num2%10;
if(num==n1*100+n2*10+n3*1)
{
printf("number is palindrome number");
}
else
{
printf("number is not palindrome number");
}
getch();
}