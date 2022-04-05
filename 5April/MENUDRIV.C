#include<stdio.h>
#include<conio.h>
void main()
{
float choice,num1,num2,res;
clrscr();
printf("press 1 for addition\n");
printf("press 2 for substraction\n");
printf("press 3 for multiplication\n");
printf("press 4 for division\n");
printf("enter your choice");
scanf("%f",&choice);
if(choice==1)
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1+num2;
printf("addition= %f",res);
}
else if(choice==2)
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1-num2;
printf("substraction= %f",res);
}
else if(choice==3)
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1*num2;
printf("multiplication= %f",res);
}
else if(choice==4)
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1/num2;
printf("division= %f",res);
}
else
{
printf("invalid choice");
}
getch();
}
