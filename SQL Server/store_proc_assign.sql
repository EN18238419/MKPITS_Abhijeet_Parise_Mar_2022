-------------------------- store_procedure database -------------

--========================================================================================

create table student(roll_no int ,name varchar(20),city varchar(50),mob_no bigint )
insert into student values(1,'Abhi','Nagpur',7821981676)
insert into student values(2,'Abhijeet','Pune',7821771676)
insert into student values(3,'Abhijit','Yavatmal',7721981676)
insert into student values(4,'Krishna','Amravati',78219816455)
insert into student values(5,'Pardeep','Buldhana',7832981676)
insert into student values(6,'Monu','Akola',7821881676)
insert into student values(7,'Ajay','Delhi',9821981676)
insert into student values(8,'Akshay','Wardha',9821381676)
insert into student values(9,'Sidhharth','Akola',8881981676)
insert into student values(10,'Varun','Nagpur',7888881676)
select * from student

----------------------------------------------------------------------------------------
--> 1.create a sp named s1 to get records from student table
create proc s1
as 
begin
select * from student
end;

exec s1
----------------------------------------------------------------------------------------
--> 2.create a sp named s2 to get records from student table whose city='nagpur'
create proc s2
as 
begin
select * from student where city='Nagpur'
end;

exec s2

----------------------------------------------------------------------------------------
--> 3.create a sp named s3 to get records from student table whose rno >3 and rno<20
create proc s3
as 
begin
select * from student where roll_no>3 and roll_no<20
end;

exec s3
--======================================================================================
create table customer (cust_id int,cust_name varchar(25),tel_no bigint)
insert into customer values(123,'Abhijeet',7676767667)
insert into customer values(124,'Achal',7676767777)
insert into customer values(125,'Abhi',7688867667)
insert into customer values(126,'Pardeep',7555767667)
insert into customer values(127,'Krishna',7676333667)
insert into customer values(128,'Gopal',7679999667)
select * from customer

create table orders(order_id int,order_date date,cust_id int,product_name varchar(25),quant int,rate int)
insert into orders values(61,'2022-08-07',123,'Horlics',2,100)
insert into orders values(62,'2022-08-08',124,'Complan',3,110)
insert into orders values(63,'2022-08-09',125,'Bourn vita',4,90)
insert into orders values(64,'2022-08-11',126,'Horlics',3,100)
insert into orders values(65,'2022-08-12',129,'Horlics',2,100)
select * from orders

select * from customer inner join orders  
on customer.cust_id=orders.cust_id;


----------------------------------------------------------------------------------------
--> 4.create a sp to get records from customer and orders table using inner join

create proc get_records
as 
begin
select customer.cust_id,customer.cust_name,orders.order_id,orders.order_date,orders.product_name,orders.quant,orders.rate from customer inner join orders 
on customer.cust_id=orders.cust_id;
end;

exec get_records

--===========================================================================================
create table salesman(salesman_id int ,name varchar(20),city varchar(20),sale_amount int)
insert into salesman values(5001,'James Hoog','New york',1100)
insert into salesman values(5002,'Nail Knite','Paris',900)
insert into salesman values(5005,'Pit Alex','London',7000)
insert into salesman values(5006,'Mc Lyon','Paris',500)
insert into salesman values(5007,'Paul Adam','Rome',800)
insert into salesman values(5003,'Lauson Hen','San Jose',2050)
select * from salesman

--> 5.create a sp to get records from sales table whose saleamount >1000 and saleamount<10000

create proc dis_sale_amount
as
begin
select * from salesman where sale_amount>1000 and sale_amount<10000
end;

exec dis_sale_amount

--===========================================================================================
create table emp(id int, name varchar(20),designation varchar(20),
							   working_date date,working_hours int,salary dec(10,2))

insert into emp values(1,'Abhijeet1','manager','2021-09-09',9,30000)
insert into emp values(2,'Abhijeet2','Teacher','2021-09-09',8,35000)
insert into emp values(3,'Abhijeet3','Engineer','2021-09-09',9,70000)
insert into emp values(4,'Abhijeet4','manager','2021-09-09',10,20000)
insert into emp values(5,'Abhijeet5','Teacher','2021-09-09',8,35000)
insert into emp values(6,'Abhijeet6','Engineer','2021-09-09',10,70000)
insert into emp values(7,'Abhijeet7','manager','2021-09-09',8,35000)
insert into emp values(8,'Abhijeet8','Engineer','2021-09-09',12,100000)
select * from emp

--> 6.create a sp to get records from emp table whose designation is 'manager' and salary >20000
create proc emp_details
as
begin
select * from emp where designation='manager' and salary>20000
end;

exec emp_details
--================================================================================================
create table marks(roll_no int ,stud_marks int)
insert into marks values(1,80)
insert into marks values(2,70)
insert into marks values(3,60)
insert into marks values(4,77)
insert into marks values(5,90)
insert into marks values(6,80)
insert into marks values(7,85)
insert into marks values(8,82)
insert into marks values(9,67)
insert into marks values(10,89)
select * from marks

--> 7.create a sp to get records from student and marks table using inner join

create proc show_records
as
begin
select student.roll_no,student.name,student.city,student.mob_no,marks.stud_marks from student inner join marks 
on student.roll_no=marks.roll_no
end;

exec show_records

-----------------------------------------------------------------------------------------------
--> 8.create a sp to get records from emp table whose salary is greater 
    --than 20000 and salary is less than 50000

create proc emp_records
as
begin
select * from emp where salary>20000 and salary<50000
end;

exec emp_records

------------------------------------------------------------------------------------------------
--> 9.create a sp with one parameter @rno to get student records

create proc sp_1(@roll_no as int)
as
begin
select * from student where roll_no=@roll_no
end;

exec sp_1 8
exec sp_1 4
exec sp_1 2

-------------------------------------------------------------------------------------------------
--> 10.create a sp with 2 parameters @rno and @city to get student records

create proc sp_2 (@roll_no as int,@name as varchar(20))
as
begin
select * from student where roll_no=@roll_no and name=@name
end;

exec sp_2 6,'Monu'
exec sp_2 4,'Krishna'

--============================================================================================






























