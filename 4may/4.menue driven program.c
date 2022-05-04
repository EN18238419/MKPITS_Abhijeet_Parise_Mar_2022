#include<stdio.h>
#include<conio.h>
int fun(int option)
{
float res,n1,n2;
switch(option)
{
case 1:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1+n2;
return res;
break;
case 2:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1-n2;
return res;
break;
case 3:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1*n2;
return res;
break;
case 4:
printf("enter two number\n");
scanf("%f%f",&n1,&n2);
res=n1/n2;
return res;
break;
default:
return 0;
}
getch();
}
int main()
{
int opt;
float g;
printf("press 1 for addition\n");
printf("press 2 for substraction\n");
printf("press 3 for multiplication\n");
printf("press 4 for division\n");
printf("enter your choice\n");
scanf("%d",&opt);
g=fun(opt);
if(g!=0)
{
	printf("result: %f",g);
}
else
{
	printf("invalid choice");
}
}

