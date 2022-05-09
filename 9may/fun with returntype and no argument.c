#include<stdio.h>
#include<conio.h>
struct student 
{
	int id;
	char name[20];
};
struct student fun()
 {
  struct student s1;
  printf("enter student id: ");
  scanf("%d",&s1.id);
  printf("enter student name: ");
  scanf("%s",s1.name);
  return s1;
 }
 void main()
 {
    struct student s;
	s=fun();
 	printf("student id: %d\n",s.id);
 	printf("student name: %s",s.name);
 }
