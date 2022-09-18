--===========================================================================--
create table employee(id int, name varchar(20),designation varchar(20),
							   working_date date,working_hours int,
							   salary dec(10,2))

insert into employee values(1,'Abhijeet1','manager','2021-09-09',9,30000)
insert into employee values(2,'Abhijeet2','Teacher','2021-09-09',8,35000)
insert into employee values(3,'Abhijeet3','Engineer','2021-09-09',9,70000)
insert into employee values(4,'Abhijeet4','manager','2021-09-09',10,20000)
insert into employee values(5,'Abhijeet5','Teacher','2021-09-09',8,35000)
insert into employee values(6,'Abhijeet6','Engineer','2021-09-09',10,70000)
insert into employee values(7,'Abhijeet7','manager','2021-09-09',8,35000)
insert into employee values(8,'Abhijeet8','Engineer','2021-09-09',12,100000)
select * from employee

-------------- 1) Table valued function (user defined) ---------------------
create function f1()
returns table
as
return(select * from employee)

select * from f1()

------------------------------------------------------------------------------
-------------- 2) Scalar valued function (user defined) ---------------------
create function emp_fun2(@name varchar(20),
						@designation varchar(20))
returns varchar(100)
as
begin
return(select @name+' '+@designation)
end;



select dbo.emp_fun2(name,designation) as 'detail' from employee

--------------------------------------------------------------------------------
--> Another example of Scalar valued function

create function emp_fun3(@name varchar(20),
						@designation varchar(20),
						@salary dec(10,2))           ---- focus on datatype
returns varchar(100)
as
begin
return(select @name+'	'+@designation+'	'+@salary)
end;

select dbo.emp_fun3(name,designation,salary)
as'Details'from employee  --will throw an error like(Error converting data type varchar to numeric)

----------------------------------------------------------------------------------
--> Another example of Scalar valued function
create function emp_fun4(@name varchar(20),
						@designation varchar(20),
						@salary varchar(10))          ---- focus on datatype
returns varchar(100)
as
begin
return(select @name+'	'+@designation+'	'+@salary)
end;

select dbo.emp_fun4(name,designation,salary)
as 'Details' from employee                       -- it will run without any error 

------------------------------------------------------------------------------------------------
