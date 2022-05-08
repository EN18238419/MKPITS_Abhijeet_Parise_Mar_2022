#include<stdio.h>
#include<conio.h>
struct student
{
	int id;
	char name[20];
}s;
void main()
{
	printf("enter student id: ");
	scanf("%d",&s.id);
	printf("enter student name: ");
	scanf("%s",&s.name);
	printf("student id: %d\n",s.id);
	printf("student name: %s",s.name);	
}
