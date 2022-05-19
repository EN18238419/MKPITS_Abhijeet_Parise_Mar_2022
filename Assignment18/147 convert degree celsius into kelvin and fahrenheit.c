#include<stdio.h>
#include<conio.h>
int main()
{
	double temp,k=273.15,fah=32;
	printf("enter temperature in degree celsius: ");
	scanf("%lf",&temp);
	k=k+temp;
	printf("\ntemperature (kelvin)= %lf\n",k);
	fah=fah+(temp*1.8);
	printf("temperature (fahrenheit)= %f",fah);
}
