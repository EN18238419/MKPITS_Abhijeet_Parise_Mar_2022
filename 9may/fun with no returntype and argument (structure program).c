#include<stdio.h>
#include<conio.h>
struct student
{
	int id;
	char name[20];
	
}s1;
void fun(struct student s2)
{
printf("student id: %d\n",s2.id);
printf("student name: %s",s2.name);	
}
void main()
{
	printf("enter student id: ");
	scanf("%d",&s1.id);
	printf("enter student name: ");
	scanf("%s",s1.name);
	fun(s1);
}
