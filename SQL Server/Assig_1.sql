-- 1.mkpits database is created
-- 2.creating student table
create table student(roll_no int ,name varchar(20),address varchar(50),mob_no bigint )

-- 3.inserting 10 records
insert into student values(11,'Abhi','Nagpur',7821981676)
insert into student values(12,'Abhijeet','Pune',7821771676)
insert into student values(13,'Abhijit','Yavatmal',7721981676)
insert into student values(14,'Krishna','Amravati',78219816455)
insert into student values(15,'Pardeep','Buldhana',7832981676)
insert into student values(16,'Monu','Akola',7821881676)
insert into student values(17,'Ajay','Delhi',9821981676)
insert into student values(18,'Akshay','Wardha',9821381676)
insert into student values(19,'Sidhharth','Akola',8881981676)
insert into student values(20,'Varun','Beed',7888881676)

-- 4.showing all records
select * from student

-- 5.creating customer table
create table customer (cust_id int,cust_name varchar(15),cust_address varchar(25))

-- 6.inserting 10 records
insert into customer values(01,'Abhi','Pune')
insert into customer values(02,'Abhijeet','Nagpur')
insert into customer values(03,'Abhijit','Yavatmal')
insert into customer values(04,'Krishna','Wardha')
insert into customer values(05,'Pardeep','Amravati')
insert into customer values(06,'Shiv','Beed')
insert into customer values(07,'Gopal','Buldhana')
insert into customer values(08,'Monu','Akola')
insert into customer values(09,'Dilip','Mumbai')
insert into customer values(10,'Raj','Delhi')

-- 7.showing this 10 records
select * from customer

-- 8.Creating a table users
create table users(u_id int,u_name varchar(10),u_pass varchar(15),email varchar(25),gender varchar(10),city varchar(15),country varchar(15))

-- 9.inserting 10 records

insert into users values(11,'abc','abc@12345','abc@gmail.com','Male','Yavatmal','India')
insert into users values(12,'def','def@12345','def@gmail.com','Male','Pune','India')
insert into users values(13,'ghi','ghi@12345','ghi@gmail.com','Female','Beed','India')
insert into users values(14,'jkl','jkl@12345','jkl@gmail.com','Male','Akola','India')
insert into users values(15,'mno','mno@12345','mno@gmail.com','Female','Nagpur','India')
insert into users values(21,'pqr','pqr@12345','pqr@gmail.com','Male','Buldhana','India')
insert into users values(22,'stu','stu@12345','stu@gmail.com','Female','Mumbai','India')
insert into users values(23,'vwx','vwx@12345','vwx@gmail.com','Male','Delhi','India')
insert into users values(24,'xyz','xyz@12345','xyz@gmail.com','Female','Wardha','India')
insert into users values(25,'cba','cba@12345','cba@gmail.com','Male','Thane','India')

-- 10.showing records
select * from users