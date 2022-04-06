#include<stdio.h>
#include<conio.h>
void main()
{
float num1,num2,res;
char choice;
printf("press + for addition\n");
printf("press - for substraction\n");
printf("press * for multiplication\n");
printf("press / for division\n");
printf("enter your choice\n");
scanf("%c",&choice);
if(choice=='+')
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1+num2;
printf("addition= %f",res);
}
else if(choice=='-')
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1-num2;
printf("substraction= %f",res);
}
else if(choice=='*')
{
printf("enter two number\n");
scanf("%f%f",&num1,&num2);
res=num1*num2;
printf("multiplication= %f",res);
}
else if(choice=='/')
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

