-- Identity example

create table employee (emp_id int primary key identity(1,1) ,emp_name varchar(15))
insert into employee(emp_name) values('Abhijeet')
select * from employee
insert into employee(emp_name) values('Abhi')
select * from employee
insert into employee(emp_name) values('Krishna')
select * from employee
delete from employee where emp_id=2
insert into employee(emp_name) values('Gopal')
select * from employee

-- not null

create table stud (roll_no int ,name varchar(20) not null)
insert into stud(roll_no,name) values(4,'Krishna')
insert into stud(roll_no,name) values(4,'')
insert into stud(roll_no,name) values(4,'Shiv')
select * from stud