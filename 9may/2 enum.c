#include<stdio.h>
#include<conio.h>
enum year{jan,febru,mar,april,may,june,july,aug,sep,oct,nov,dec};
int main()
{
	enum year month;
	month=june;
	printf("%d",month+1);
}
