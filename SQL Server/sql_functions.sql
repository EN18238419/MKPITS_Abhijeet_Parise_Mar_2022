                      -- sql_function databse --
--============================================================================================
create table product(pro_id int,pro_name varchar(20),pro_price int,pro_quantity int)
 insert into product values (1,'mouse',120,7)
 insert into product values (5,'keyboard',2000,5)
 insert into product values (3,'monitor',12000,5)
  insert into product values (3,'monitor',13000,7)
 insert into product values (7,'cpu',20000,5)
 select * from product

 -----------------------------------------------------------------------------------------------
 --> min() function
 select  min(pro_price) as "minimum price" from product;

 select * from product where pro_price=(select min(pro_price) as "minimum price" from product)

 select pro_name, min(pro_quantity) as "minimum quantity" from product group by pro_name;

  select pro_name, min(pro_price) as "minimum price" from product group by pro_name having min(pro_price)>200;
  -----------------------------------------------------------------------------------------------
 --> max() function
 select max(pro_price) as "minimum price" from product;

 select * from product where pro_price=(select max(pro_price) as "minimum price" from product)

 select pro_name, max(pro_quantity) as "maximum quantity" from product group by pro_name;

  select pro_name, max(pro_price) as "minimum price" from product group by pro_name having max(pro_price)>2000;

-----------------------------------------------------------------------------------------------
create table employee_deatails(id int, name varchar(20),occupation varchar(20),
							   working_date date,working_hours int,salary dec(10,2))

insert into employee_deatails values(1,'Abhijeet1','HR','2021-09-09',9,30000)
insert into employee_deatails values(2,'Abhijeet2','Teacher','2021-09-09',8,35000)
insert into employee_deatails values(3,'Abhijeet3','Engineer','2021-09-09',9,70000)
insert into employee_deatails values(4,'Abhijeet4','HR','2021-09-09',10,30000)
insert into employee_deatails values(5,'Abhijeet5','Teacher','2021-09-09',8,35000)
insert into employee_deatails values(6,'Abhijeet6','Engineer','2021-09-09',10,70000)
insert into employee_deatails values(7,'Abhijeet7','HR','2021-09-09',8,35000)
insert into employee_deatails values(8,'Abhijeet8','Engineer','2021-09-09',12,100000)
select * from employee_deatails

--> avg() function
select  avg(working_hours) as "Average working hours" from employee_deatails

select  avg(working_hours) as "Average working hours" from employee_deatails where occupation='Engineer'

select occupation,  avg(working_hours) as "Average working hours" from employee_deatails group by occupation

select occupation,  avg(working_hours) as "Average working hours" from employee_deatails group by occupation
having avg(working_hours)>8
------------------------------------------------------------------------------------------------------------
--> sum() function

select sum(salary) as "Total salary" from employee_deatails 

select sum(salary) as "Total salary" from employee_deatails where working_hours>9

select occupation, sum(salary) as "Total Salary"  
from employee_deatails group by occupation                       

select occupation, sum(salary) as "Total Salary"  
from employee_deatails group by occupation  having sum(salary)>90000   

-----------------------------------------------------------------------------------------------------------
