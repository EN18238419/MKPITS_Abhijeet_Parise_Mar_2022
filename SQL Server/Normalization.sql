                        -- Normalization database --

---> EMPLOYEE table is not in 1NF because of multi-valued attribute EMP_PHONE.

--EMPLOYEE table:
--EMP_ID 	EMP_NAME 	EMP_PHONE 			         EMP_STATE
--14 		John 		7272826385, 9064738238 	       UP
--20 		Harry 		8574783832 			           Bihar
--12 		Sam 		7390372389, 8589830302 	       Punjab

--======================================================================================

---========================================= 1NF =======================================
create table employee(emp_id int,
					  emp_name varchar(25),
					  emp_phone bigint,
					  emp_state varchar(25),
					  primary key(emp_id,emp_phone));                 -- Composite key

insert into employee values(14,'john',7272826385,'UP')
insert into employee values(14,'john',9064738238,'UP')
insert into employee values(20,'harry',8574783832,'Bihar')
insert into employee values(12,'Sam',7390372389,'Punjab')
insert into employee values(12,'Sam',8589830302,'Punjab')

select * from employee

--=======================================================================================
--TEACHER table
--TEACHER_ID 	SUBJECT 	TEACHER_AGE
--25 		  Chemistry 	  30
--25 		  Biology 	      30
--47 		  English 		  35
--83 		  Math 		      38
--83 		  Computer 	      38

--======================================= 2NF ===========================================
create table teacher_details(teacher_id int primary key,teacher_age int)
insert into teacher_details values(25,30) 
insert into teacher_details values(47,35)
insert into teacher_details values(83,38) 
select * from teacher_details

create table teacher_subject(teacher_id int constraint t1 foreign key(teacher_id) references teacher_details (teacher_id),
							subject varchar(20))

insert into teacher_subject values(25,'Chemistry')
insert into teacher_subject values(25,'Biology')
insert into teacher_subject values(47,'English')
insert into teacher_subject values(83,'Math')
insert into teacher_subject values(83,'Computer')
select * from teacher_subject
select * from teacher_details
--==============================================================================================================
--orderid   orderdate   productname   customername   quantity
-- 1		1/1/2009	samaso		        amit		  2
-- 1		1/1/2009	pakoda				amit		  3
-- 1		1/1/2009	kachori				amit		  1
-- 2		2/2/2009	samosa				ravi		  2
-- 2		2/2/2009	kachori				ravi		  2
--==============================================================================================================

--==================================== Another Example of 2NF ==================================================
create table order_table(order_id int primary key,order_date date,cust_name varchar(20))
insert into order_table values(1,'2009-01-01','amit')
insert into order_table values(2,'2009-02-02','ravi')
select * from order_table

create table order_details(order_id int constraint o1 foreign key(order_id) references order_table (order_id),
						   product_name varchar(20),
						   quantity int)
insert into order_details values(1,'samosa',2)
insert into order_details values(1,'pakoda',3)
insert into order_details values(1,'kachori',1)
insert into order_details values(2,'samosa',2)
insert into order_details values(2,'kachori',2)

select * from order_details
select * from order_table

--==========================================================================================================
--EMPLOYEE_DETAIL table:
--    EMP_ID  EMP_NAME 	   EMP_ZIP 	 EMP_STATE 	 EMP_CITY
--    222 		Harry 		201010 		UP 		  Noida
--    333 		Stephan 	201010		UP		  Noida
--    444 		Lan 		60007 		US 		  Chicago
--    555 		Katharine 	06389 		UK 		  Norwich
--    666 		John 		462007 		MP 		  Bhopal
--    777 		Harry	    9999		MP		  Bhopal

--========================================== 3NF ==========================================================

create table employee_table (emp_id int ,
							 emp_name varchar(20),
							 emp_zip int,
							 primary key(emp_id,emp_zip));
							

insert into employee_table values(222,'Harry',201010)
insert into employee_table values(333,'Stephan',201010)
insert into employee_table values(444,'Lan',60007)
insert into employee_table values(555,'Katharine',06389)
insert into employee_table values(666,'John',462007)
insert into employee_table values(777,'Harry',9999)

select * from employee_table

create table employee_zip(emp_zip int primary key, 
						  emp_state varchar(20),
						  emp_city varchar(20),
						  constraint e1 foreign key (emp_zip) references employee_zip(emp_zip));

insert into employee_zip values(201010,'UP','Noida')
insert into employee_zip values(02228,'US','Boston')
insert into employee_zip values(60007,'US','Chicago')
insert into employee_zip values(06389,'UK','Norwich')
insert into employee_zip values(462007,'MP','Bhopal')

select * from employee_zip 
select * from employee_table


--======================================================================================================