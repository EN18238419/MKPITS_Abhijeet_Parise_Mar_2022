#include<stdio.h>
#include<conio.h>
int p=8,s=4;
float res;
void add();
void sub();
void mul();
void div();
int main()
{
	add();
	 sub();
     mul();
     div();
}
void add()
{
res=p+s;
printf("addition= %f\n",res);
}
void sub()
{
res=p-s;
printf("substraction= %f\n",res);
}
void mul()
{
res=p*s;
printf("multiplication= %f\n",res);
}
void div()
{
res=p/s;
printf("division= %f\n",res);
}
