#include<stdio.h>
#include<conio.h>
void fun1(float n1,float n2);
void fun()
{
float x1,x2;	
fun1(x1,x2);	
}
void fun1(float n1,float n2)
{
float res;
int option;
printf("press 1 for addition\n");
printf("press 2 for substraction\n");
printf("press 3 for multiplication\n");
printf("press 4 for division\n");
printf("enter your choice\n");
scanf("%d",&option);
switch(option)
{
case 1:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1+n2;
printf("addition= %f",res);
break;
case 2:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1-n2;
printf("substraction= %f",res);
break;
case 3:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1*n2;
printf("multiplication= %f",res);
break;
case 4:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1/n2;
printf("division= %f",res);
break;
default:
printf("invalid choice");
}
getch();
}
int main()
{
	fun();
}

