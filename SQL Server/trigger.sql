---------------------------------------- trigger database -------------------------------------
--> example-1
create table product(pro_id int,pro_name varchar(20),pro_price int,pro_quantity int)
insert into product values (1,'mouse',120,7)
insert into product values (5,'keyboard',2000,5)
insert into product values (3,'monitor',12000,5)
insert into product values (3,'monitor',13000,7)
insert into product values (7,'cpu',20000,5)
select * from product

create table product_a(change_id int identity primary key,
						pro_id int,pro_name varchar(20),pro_price int,pro_quantity int,
						updated_at datetime)
select * from product_a

create trigger t1 
on product
after insert,delete
as
begin
set nocount on;
insert into product_a values(21,'Complan',300,4,'2022-09-13')
end

select * from product_a

insert into product values(21,'Complan',300,4)
insert into product values(22,'Horlics',400,5)
select * from product
select * from product_a

drop table product_a

---------------------------------------------------------------------------------------------
--> example-2
create table student(id int primary key,
					 admission_no int,
					 f_name varchar(20),
					 l_name varchar(20),
					 age int,
					 city varchar(20))
insert into student values(21,212121,'Abhijeet','Parise',22,'Yavatmal')
insert into student values(22,222222,'Abhi','Parise',22,'Yavatmal')
insert into student values(23,232323,'Krishna','Parise',21,'Yavatmal')
insert into student values(24,242424,'Gopal','Kate',22,'Nagpur')
insert into student values(25,252525,'Abhi','Parise',22,'Nagpur')
select * from student

create table student_22(id int identity primary key,
						name varchar(20),
						marks int,
						stud_image varchar(20))

create trigger t2
on student
after insert,delete
as
begin
set nocount on;
insert into student_22 values('Shiv',99,'shiv.jpg')
end;

select * from student_22

insert into student values(29,252529,'Shiv','Par',22,'Nagpur')
select * from student
select * from student_22

---------------------------------------------------------------------------------------------



















