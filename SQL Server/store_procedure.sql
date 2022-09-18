-------------------------------- store_procedure ------------------------------
--> create store procedure

create table product(pro_id int,pro_name varchar(20),pro_price int,pro_quantity int)
insert into product values (1,'mouse',120,7)
insert into product values (5,'keyboard',2000,5)
insert into product values (3,'monitor',12000,5)
insert into product values (3,'monitor',13000,7)
insert into product values (7,'cpu',20000,5)
select * from product

create proc select_all_product
as 
begin
select * from product
end;

exec select_all_product
------------------------------------------------------------------------------------
--> delete store procedure
drop proc select_all_product

------------------------------------------------------------------------------------
--> modify store procedure
alter procedure select_all_product
as
begin
select pro_name,pro_price from product
end;

exec select_all_product
-----------------------------------------------------------------------------------
--> Creating a stored procedure with one parameter ex-1
create proc select_all_product_1(@min_price as decimal)
as
begin
select * from product
where pro_price>@min_price 
order by pro_price
end;

exec  select_all_product_1 200
exec  select_all_product_1 12500

------------------------------------------------------------------------------------
--> Creating a stored procedure with one parameter ex-2
create proc select_all_product_2(@pro_name as varchar(25))
as
begin
select * from product
where pro_name=@pro_name
order by pro_name
end;

exec  select_all_product_2 'keyboard'
exec  select_all_product_2 'monitor'

-----------------------------------------------------------------------------------
--> Creating a stored procedure with two parameter
create proc select_all_product_3(@pro_name as varchar(25),@price as decimal)
as
begin
select * from product
where pro_name=@pro_name and pro_price>@price
order by pro_name
end;

exec  select_all_product_3 'monitor',11000
exec  select_all_product_3 'monitor',12000

-----------------------------------------------------------------------------------
--> modifying stored procedure with two parameter

alter proc select_all_product_3(@pro_name as varchar(25),@price as decimal)
as
begin
select * from product
where pro_price>@price
order by pro_price desc
end;

exec  select_all_product_3 'monitor',11000
exec  select_all_product_3 'monitor',12000

-----------------------------------------------------------------------------------
--> another example of stored procedure with two parameter
create proc select_all_product_33(@min_price as decimal,@max_price as decimal)
as
begin
select * from product
where pro_price>@min_price and pro_price<@max_price
order by pro_name 
end;

exec  select_all_product_33 5000,13000           -- way_1 writting
exec  select_all_product_33 120,21000

exec select_all_product_33 @min_price=5000,@max_price=13000     ---- way_2 writting
-----------------------------------------------------------------------------------
--> example of stored procedure with three parameter
create proc select_all_product_34(@min_price as decimal,@max_price as decimal,@pro_name as varchar(25))
as
begin
select * from product
where pro_price>@min_price and pro_price<@max_price and pro_name=@pro_name
order by pro_name 
end;

exec  select_all_product_34 5000,14000,'monitor'          
exec  select_all_product_34 120,21000,'keyboard'
----------------------------------------------------------------------------------------------------

--> another example of stored procedure with three parameter
create proc select_all_product_35(@min_price as decimal,@max_price as decimal,@pro_name as varchar(25))
as
begin
select * from product
where pro_price>@min_price and pro_price<@max_price and pro_name like '%'+@pro_name+'%'
order by pro_name 
end;

exec  select_all_product_35 5000,14000,'nit'          
exec  select_all_product_35 120,21000,'board'
exec  select_all_product_35 120,21000,'ey'

exec select_all_product_35 @min_price=200,@pro_name='keyboard'
------------------------------------------------------------------------------------------------------
--> Creating optional parameters
    ============================
create proc select_all_product_36(@min_price as decimal=200,@max_price as decimal=15000,@pro_name as varchar(25))
as
begin
select * from product
where pro_price>@min_price and pro_price<@max_price and pro_name like '%'+@pro_name+'%'
order by pro_name 
end;


exec select_all_product_36 @pro_name='keyboard'

----------------------------------------------------------------------------------------------------------

--> Creating optional parameters(one of them is null)
    ============================
create proc select_all_product_37(@min_price as decimal=200,@max_price as decimal=null,@pro_name as varchar(max))
as
begin
select * from product
where pro_price>@min_price and (pro_price<@max_price or @max_price is null) and pro_name like '%'+@pro_name+'%'
order by pro_name 
end;


exec select_all_product_37 @pro_name='keyboard'
--------------------------------------------------------------------------------------------------------
--=======================================================================================================





