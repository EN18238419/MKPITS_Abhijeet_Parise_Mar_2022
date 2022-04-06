#include<stdio.h>
#include<conio.h>
int main()
{
	int a,a1,a2,a3,a4,a5,a6,a7,total,total1,total2,total3,total4,total5,total6;
	printf("enter the amount\n");
	scanf("%d",&a);
	total=a/100;
	a1=a-(total*100);
	total1=a1/50;
	a2=a1-(total1*50);
	total2=a2/20;
	a3=a2-(total2*20);
	total3=a3/10;
	a4=a3-(total3*10);
	total4=a4/5;
	a5=a4-(total4*5);
	total5=a5/2;
	a6=a5-(total5*2);
	total6=a6/1;
	a7=a6-(total*1);
	printf("notes of 100: %d\n",total);
	printf("notes of 50: %d\n",total1);
	printf("notes of 20: %d\n",total2);
	printf("notes of 10: %d\n",total3);
	printf("notes of 5: %d\n",total4);
	printf("notes of 2: %d\n",total5);
	printf("notes of 1: %d",total6);
}
