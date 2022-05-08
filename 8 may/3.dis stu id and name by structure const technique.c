#include<stdio.h>
#include<conio.h>
struct student
{
	int id;
	char name[20];
};
void main()
{
	struct student s={5,"krishna"};
	printf("student id: %d\n",s.id);
	printf("student name: %s",s.name);	
}
