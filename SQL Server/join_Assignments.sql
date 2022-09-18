                               -- joins database --
--------------------------------------------------------------------------------------------------------
-- Assignment-1
--create a table customer having custid,custname,telno
--create a table orders having orderid,orderdate,custid ,prodname,qty,rate
--then write a query to display records from customer and orders tables using inner join

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

-----------------------------------------------------------------------------------------------------

-- Assignment-2
-- display the records from customer1 and order1 table using left outer join

create table customer1 (cust_id int,cust_name varchar(25),tel_no bigint)
insert into customer1 values(123,'Abhijeet',7676767667)
insert into customer1 values(124,'Achal',7676767777)
insert into customer1 values(125,'Abhi',7688867667)
insert into customer1 values(126,'Pardeep',7555767667)
insert into customer1 values(127,'Krishna',7676333667)
insert into customer1 values(128,'Gopal',7679999667)
select * from customer1

create table order1(order_id int,order_date date,cust_id int,product_name varchar(25),quant int,rate int)
insert into order1 values(61,'2022-08-07',123,'Horlics',2,100)
insert into order1 values(62,'2022-08-08',124,'Complan',3,110)
insert into order1 values(63,'2022-08-09',125,'Bourn vita',4,90)
insert into order1 values(64,'2022-08-11',126,'Horlics',3,100)
insert into order1 values(65,'2022-08-12',129,'Horlics',2,100)
select * from order1

select * from customer1 left outer join order1  
on customer1.cust_id=order1.cust_id; 

-----------------------------------------------------------------------------------------------------

-- Assignment-3
-- display the records from customer2 and order2 table using right outer join

create table customer2 (cust_id int,cust_name varchar(25),tel_no bigint)
insert into customer2 values(123,'Abhijeet',7676767667)
insert into customer2 values(124,'Achal',7676767777)
insert into customer2 values(125,'Abhi',7688867667)
insert into customer2 values(126,'Pardeep',7555767667)
insert into customer2 values(127,'Krishna',7676333667)
insert into customer2 values(128,'Gopal',7679999667)
select * from customer2

create table order2(order_id int,order_date date,cust_id int,product_name varchar(25),quant int,rate int)
insert into order2 values(61,'2022-08-07',123,'Horlics',2,100)
insert into order2 values(62,'2022-08-08',124,'Complan',3,110)
insert into order2 values(63,'2022-08-09',125,'Bourn vita',4,90)
insert into order2 values(64,'2022-08-11',126,'Horlics',3,100)
insert into order2 values(65,'2022-08-12',129,'Horlics',2,100)
select * from order2

select * from customer2 right outer join order2  
on customer2.cust_id=order2.cust_id; 

-----------------------------------------------------------------------------------------------------

-- Assignment-4
-- display the records from customer3 and order3 table using full outer join

create table customer3 (cust_id int,cust_name varchar(25),tel_no bigint)
insert into customer3 values(123,'Abhijeet',7676767667)
insert into customer3 values(124,'Achal',7676767777)
insert into customer3 values(125,'Abhi',7688867667)
insert into customer3 values(126,'Pardeep',7555767667)
insert into customer3 values(127,'Krishna',7676333667)
insert into customer3 values(128,'Gopal',7679999667)
select * from customer3

create table order3(order_id int,order_date date,cust_id int,product_name varchar(25),quant int,rate int)
insert into order3 values(61,'2022-08-07',123,'Horlics',2,100)
insert into order3 values(62,'2022-08-08',124,'Complan',3,110)
insert into order3 values(63,'2022-08-09',125,'Bourn vita',4,90)
insert into order3 values(64,'2022-08-11',126,'Horlics',3,100)
insert into order3 values(65,'2022-08-12',129,'Horlics',2,100)
select * from order3

select * from customer3 full outer join order3  
on customer3.cust_id=order3.cust_id; 

----------------------------------------------------------------------------------------------------





