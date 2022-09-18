                       --sample_4 database
------------------------------------------------------------------------------
		-- Default Constraints  --> used to provide a default value for the field

create table geek(id int not null,s_name varchar(20),age int,location varchar(30) default 'Noida')
insert into geek values(21,'Abhijeet',22,'Yavatmal')   ---As usual
insert into geek(id,s_name,age) values(07,'Achal',20)   --- default constraints
select *from geek
--------------------------------------------------------------------------------
		-- Not null constraints  --> used to specify a field in a table to be NOT NULL

create table geek1(id int not null,s_name varchar(20),age int,location varchar(30))
insert into geek1 values(21,'Abhijeet',22,'Yavatmal')      -- it will be acceptable
insert into geek1 (s_name,age,location)values('Achal',20,'Yavatmal')   --column does not allow null.
select *from geek1
-------------------------------------------------------------------------------------
		-- Unique constraints  --> helps to uniquely identify each row in the table(showing null)

create table geek2(id int unique,s_name varchar(20),age int,location varchar(30))
insert into geek2 values(21,'Abhijeet',22,'Yavatmal')     -- it shows as usual given by user
insert into geek2 (s_name,age,location)values('Achal',20,'Yavatmal')   --it shows null as id is unique   
insert into geek2 (s_name,age,location)values('Abhi',22,'Nagpur')   --it will show error as id is unique 
select *from geek2
--------------------------------------------------------------------------------------
        -- Primary key constraint --> primary key in uniquely identifies each row (not showing null)

create table geek3(id int primary key,s_name varchar(20),age int,location varchar(30))
insert into geek3 values(1,'Abhijeet',22,'Yavatmal')     -- it will acceptable
insert into geek3 values(2,'Achal',20,'Yavatmal')   --it will acceptable    
insert into geek3 values(1,'Abhi',22,'Nagpur')   --it will show error ( Cannot insert duplicate key)  
select *from geek3                               -- because here we apply primary key concept 

----------------------------------------------------------------------------------
         -- Foreign key constraint --> Foreign Key is a field in a table which 
					                 --uniquely identifies each row of a another table

create table order_21(order_id int primary key,order_no int, cust_id int not null)
create table customers(cust_name varchar(30),
cust_address varchar(30),
order_id int not null,
constraint s1 foreign key (order_id)
references order_21(order_id))

insert into order_21 values(11,1111,21)
insert into order_21 values(12,2222,22)
insert into order_21 values(13,3333,23)
select * from order_21

insert into customers values('Abhijeet1','Yavatmal1',11)
insert into customers values('Abhijeet2','Yavatmal2',12)
insert into customers values('Abhijeet3','Yavatmal3',13)
select * from customers                                         -- here we can see link betn these two
select * from order_21
-----------------------------------------------------------------------------------------------
                 -- Check Constraint  -->used to specify a condition for a field  
create table person(id int not null,
					p_name varchar(20)not null,
					age int not null check (age>=18))
insert into person values(1,'Abhijeet',21)      --it accepts 
insert into person values(2,'Abhi',17)       -- it shows error like (The conflict occurred in database)
select * from person
----------------------------------------------------------------------------------------------------------