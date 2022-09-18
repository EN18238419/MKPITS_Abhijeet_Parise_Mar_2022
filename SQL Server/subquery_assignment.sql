--------------------------- subquery_assignment ------------------------------------------
--========================================================================================
---------------------------------- Assignment 1 ------------------------------------------
--create a table student having columns rno,name,email,city,courseid
--insert some records into student table
--create a table fees having columns feesid,rno,feesdate,amount,courseid
--write a query to display fees details of those student whose city=nagpur
--write a query to display fees details of those student whose city=mumbai
--write a query to display fees details of those student whose city=delhi

create table student (roll_no int,name varchar(15),email varchar(25),city varchar(15),course_id int)

insert into student values(12,'Abhi1','abhi1@gamil.com','delhi',2222)
insert into student values(13,'Krishna1','krishna1@gamil.com','delhi',3333)
insert into student values(14,'Pardeep1','pardeep1@gamil.com','delhi',4444)
insert into student values(15,'Pardip2','pardip2@gamil.com','mumbai',5555)
insert into student values(16,'Abhi2','abhi2@gamil.com','mumbai',6666)
insert into student values(17,'Abhijeet2','abhijeet2@gamil.com','mumbai',7777)
insert into student values(18,'Pardip3','pardip3@gamil.com','nagpur',8888)
insert into student values(19,'Abhi3','abhi3@gamil.com','nagpur',9999)
insert into student values(20,'Abhijeet3','abhijeet3@gamil.com','nagpur',1010)
select * from student

create table fees(fees_id int,roll_no int,fees_date date,amount int,course_id int)
insert into fees values(121212,12,'2021-07-08','10000',2222)
insert into fees values(121213,14,'2021-07-08','15000',4444)
insert into fees values(121214,13,'2021-07-08','10000',3333)
insert into fees values(121215,16,'2021-07-08','10000',6666)
insert into fees values(121216,15,'2021-07-08','18000',5555)
insert into fees values(121217,17,'2021-07-08','10000',7777)
insert into fees values(121218,18,'2021-07-08','18000',8888)
insert into fees values(121219,20,'2021-07-08','10000',1010)
insert into fees values(121220,19,'2021-07-08','15000',9999)


select * from fees
select * from fees where course_id in (select course_id from student where city='Nagpur')
select * from fees where course_id in (select course_id from student where city='Mumbai')
select * from fees where course_id in (select course_id from student where city='Delhi')

--===============================================================================================
---------------------------------- Assignment 2 -------------------------------------------------
--create a table student having columns rno,name,email,city,courseid
--insert some records into student table
--create a table courses having column courseid, coursename,fees , duration
--write a query to get student details whose course is java
--write a query to get student details whose course is dotnet
--write a query to get student details whose course is php


create table courses(course_id int,course_name varchar(20),course_fee int,duration int)
insert into courses values(2222,'java',10000,120)
insert into courses values(4444,'php',10000,120)
insert into courses values(3333,'dotnet',10000,120)
insert into courses values(5555,'dotnet',10000,120)
insert into courses values(6666,'php',10000,120)
insert into courses values(7777,'dotnet',10000,120)
insert into courses values(9999,'java',10000,120)
select * from courses
select * from student where course_id in (select course_id from courses where course_name='java')
select * from student where course_id in (select course_id from courses where course_name='dotnet')
select * from student where course_id in (select course_id from courses where course_name='php')
--==================================================================================================

