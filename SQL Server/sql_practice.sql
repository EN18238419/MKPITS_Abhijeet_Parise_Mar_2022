----------------------------- sql_practice database --------------------------------------------

--> 1.Write a SQL statement to display all the information of all salesmen.   
create table salesman(salesman_id int ,name varchar(20),city varchar(20),commission dec(10,2))
insert into salesman values(5001,'James Hoog','New york',0.15)
insert into salesman values(5002,'Nail Knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'Paul Adam','Rome',0.13)
insert into salesman values(5003,'Lauson Hen','San Jose',0.12)
select * from salesman
----------------------------------------------------------------------------------------------
--> 2.Write a SQL statement to display specific columns like name and commission for all the salesmen.    
--(Sample table: salesman)

select name,commission  from salesman
---------------------------------------------------------------------------------------------------
--> 3- Write a query to display the columns in a specific order 
     --like order date, salesman id, order number and purchase amount from for all the orders. 
create table orders(ord_no int,purchase_amt dec(10,2),ord_date date,cust_id int ,salesman_id int)
insert into orders values(70001,150.5,'2012-10-05',3005,5002)
insert into orders values(70009,270.65,'2012-09-10',3001,5005)
insert into orders values(70002,65.26,'2012-10-05',3002,5001)
insert into orders values(70004,110.5,'2012-08-17',3009,5003)
insert into orders values(70007,948.5,'2012-09-10',3005,5002)
insert into orders values(70005,2400.6,'2012-07-27',3007,5001)
insert into orders values(70008,5760,'2012-09-10',3002,5001)

select ord_date,salesman_id,ord_no,purchase_amt from orders
-----------------------------------------------------------------------------------------------------

--> 4.From the above orders table, write a SQL query to find the unique salespeople ID. Return salesman_id.  
 select distinct salesman_id from orders

-----------------------------------------------------------------------------------------------------

--> 5-From the following table, write a SQL query to find the salespeople who lives in the City of 'Paris'. 
     --Return salesperson's name, city

create table sales_man(salesman_id int ,name varchar(20),city varchar(20),commission dec(10,2))
insert into sales_man values(5001,'James Hoog','New york',0.15)
insert into sales_man values(5002,'Nail Knite','Paris',0.13)
insert into sales_man values(5005,'Pit Alex','London',0.11)
insert into sales_man values(5006,'Mc Lyon','Paris',0.14)
insert into sales_man values(5007,'Paul Adam','Rome',0.13)
insert into sales_man values(5003,'Lauson Hen','San Jose',0.12)

select name,city from sales_man where city='paris'

-----------------------------------------------------------------------------------------------------
--> 6.From the following table, write a SQL query to find those customers whose grade is 200.
     --Return customer_id, cust_name, city, grade, salesman_id.

create table customers(cust_id int,cust_name varchar(20),city varchar(20),grade int,salesman_id int)
insert into customers values(3002,'Nick Rimando','New york',100,5001)
insert into customers values(3007,'Brad Davis','New york',200,5001)
insert into customers values(3005,'Graham Zusi','California',200,5002)
insert into customers values(3008,'Julian Green','London',300,5002)
insert into customers values(3004,'Fabian Johnson','Paris',300,5006)
insert into customers values(3009,'Geoff Cameron','Berlin',100,5003)
insert into customers values(3003,'Jozy Altidor','Moscow',200,5007)

select * from customers
-------------------------------------------------------------------------------------------------
--> 7.From the following table, write a SQL query to find the orders, which are delivered 
     --by a salesperson of ID. 5001.Return ord_no, ord_date, purch_amt. 

create table orders_1(ord_no int,purchase_amt dec(10,2),ord_date date,cust_id int ,salesman_id int)
insert into orders_1 values(70001,150.5,'2012-10-05',3005,5002)
insert into orders_1 values(70009,270.65,'2012-09-10',3001,5005)
insert into orders_1 values(70002,65.26,'2012-10-05',3002,5001)
insert into orders_1 values(70004,110.5,'2012-08-17',3009,5003)
insert into orders_1 values(70007,948.5,'2012-09-10',3005,5002)
insert into orders_1 values(70005,2400.6,'2012-07-27',3007,5001)
insert into orders_1 values(70008,5760,'2012-09-10',3002,5001)
select ord_no,ord_date,purchase_amt from orders_1 where salesman_id=5001

-------------------------------------------------------------------------------------------------
--> 8.From the following table, write a SQL query to find the Nobel Prize winner(s) 
    --in the year 1970. Return year, subject and winner

create table winners_data_0(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_0 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_0 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_0 values(1972,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_0 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_0 values(1973,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_0 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_0 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select years,subjects,winner from winners_data_0 where years=1970
-------------------------------------------------------------------------------------------------
--> 9.From the following table, write a SQL query to find the Nobel Prize winner 
     --in 'Literature' in the year 1971. Return winner

create table winners_data_1(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_1 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_1 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_1 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_1 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_1 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_1 values(1971,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_1 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select winner from winners_data_1 where subjects='literature' and years=1971

-------------------------------------------------------------------------------------------------
--> 10.From the following table, write a SQL query to find the Nobel Prize 
     --winner 'Bernard Katz'. Return year, subject.

create table winners_data_2(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_2 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_2 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_2 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_2 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_2 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_2 values(1971,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_2 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select years,subjects from winners_data_2 where winner='Bernard Katz'

-------------------------------------------------------------------------------------------------
--> 11.From the following table, write a SQL query to find the Nobel Prize winners 
      --in 'Physics' since the year 1950. Return winner

create table winners_data_3(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_3 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_3 values(1950,'Physics','Louis Neel','France','Scientist')
insert into winners_data_3 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_3 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_3 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_3 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_3 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select winner from winners_data_3 where subjects='physics' and years>=1950

-------------------------------------------------------------------------------------------------
--> 12.From the following table, write a SQL query to find the Nobel Prize winners in 'Chemistry' 
      --between the years 1965 to 1975. Begin and end values are included. Return year, subject, 
	  --winner, and country

create table winners_data_4(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_4 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_4 values(1950,'Physics','Louis Neel','France','Scientist')
insert into winners_data_4 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_4 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_4 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_4 values(1978,'chemistry','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_4 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select Years,subjects,winner,country from winners_data_4 where subjects='chemistry' and
years between 1965 and 1975

-------------------------------------------------------------------------------------------------
--> 13.Write a SQL query to show all details of the Physics winners after 1972 of Louis Neel and
     --Ulf von Euler                                 

create table winners_data_5(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_5 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_5 values(1974,'Physics','Louis Neel','France','Scientist')
insert into winners_data_5 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_5 values(1975,'Physics','Ulf von Euler','Sweden','Scientist')
insert into winners_data_5 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_5 values(1970,'chemistry','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_5 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_5 where subjects='Physics' and years>1972

-------------------------------------------------------------------------------------------------
--> 14 From the following table, write a SQL query to find the details of the winners whose
  --first name matches with the string 'Louis'. Return year, subject, winner, country, and category.
  
create table winners_data_6(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_6 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_6 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_6 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_6 values(1970,'Physics','Ulf von Euler','Sweden','Scientist')
insert into winners_data_6 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_6 values(1970,'chemistry','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_6 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_6 where winner like 'Louis%'

-------------------------------------------------------------------------------------------------
--> 15.From the following table, write a SQL query to combine the winners in Physics, 1970 and in 
     --Economics, 1971. Return year, subject, winner, country, and category

create table winners_data_7(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_7 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_7 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_7 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_7 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_7 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_7 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_7 values(1971,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_7 where subjects='physics' and years=1970 or subjects='economics' and years=1971

-------------------------------------------------------------------------------------------------
--> 16 From the following table, write a SQL query to find the Nobel Prize winners in 1970 
   --excluding the subjects Physiology and Economics. Return year, subject, winner, country, and category. 

create table winners_data_8(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_8 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_8 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_8 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_8 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_8 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_8 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_8 values(1971,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_8 where subjects not in('Physiology','Economics')

-------------------------------------------------------------------------------------------------
--> 17 From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and
   --winners in 'Peace' on or after 1974. Return year, subject, winner, country, and category. 

create table winners_data_9(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_9 values(1975,'Peace','Hannes Alfven','Sweden','Scientist')
insert into winners_data_9 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_9 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_9 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_9 values(1960,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_9 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_9 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_9 where subjects='Physiology' and years<1971 or subjects='peace' and years>=1974                          --- INCOMPLETE


-------------------------------------------------------------------------------------------------
--> 18.From the following table, write a SQL query to find the details of the Nobel Prize 
     --winner 'Louis Neel'. Return year, subject, winner, country, and category.

create table winners_data_10(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_10 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_10 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_10 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_10 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_10 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_10 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_10 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_10 where winner='Louis Neel'

-------------------------------------------------------------------------------------------------
--> 19.From the following table, write a SQL query to find the Nobel Prize winners for the subject
  --started with the letter 'P'. Return year, subject, winner, country, and category. Order the result by year, descending

create table winners_data_11(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_11 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_11 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_11 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_11 values(1965,'Physiology','Paul von Euler','Sweden','Scientist')
insert into winners_data_11 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_11 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_11 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_11 where winner like 'P%' order by years desc

-------------------------------------------------------------------------------------------------
--> 20.From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. 
   --Order the result by subject,  Return year, subject, winner, country, and category.

create table winners_data_12(years int,
						subjects varchar(20),
						winner varchar(30),
						country varchar(30),
						category varchar(30))

insert into winners_data_12 values(1970,'Physics','Hannes Alfven','Sweden','Scientist')
insert into winners_data_12 values(1970,'Physics','Louis Neel','France','Scientist')
insert into winners_data_12 values(1970,'Chemistry','Luis Federico Leloir','France','Scientist')
insert into winners_data_12 values(1970,'Physiology','Ulf von Euler','Sweden','Scientist')
insert into winners_data_12 values(1970,'Physiology','Bernard Katz','Germany','Scientist')
insert into winners_data_12 values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
insert into winners_data_12 values(1970,'Economics','Paul Samuelson','USA','Linguist')

select * from winners_data_12 order by subjects
-------------------------------------------------------------------------------------------------------

