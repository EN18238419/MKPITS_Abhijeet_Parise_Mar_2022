          -- Cursor database --

create table customers(cust_id int,cust_name varchar(20),city varchar(20))
insert into customers values(1,'Nick Rimando','New york')
insert into customers values(2,'Brad Davis','New york')
insert into customers values(3,'Graham Zusi','California')
insert into customers values(4,'Julian Green','London')
insert into customers values(5,'Fabian Johnson','Paris')
insert into customers values(6,'Geoff Cameron','Berlin')
insert into customers values(7,'Jozy Altidor','Moscow')

select * from customers

-- Assignment-1
--create a cursor to display records from customer table
--create  a cursor to display records from customer table whose custdid  > 3

declare 
	@cust_id int,
	@cust_name varchar(max),
	@cust_city varchar(max);

declare cust_cursor_11 cursor
for select cust_id,cust_name,city from customers where cust_id>3;

open cust_cursor_11 
fetch next from cust_cursor_11 into
	@cust_id,
	@cust_name,
	@cust_city;
print cast(@cust_id as varchar)+' ' + @cust_name + ' '+@cust_city;

while @@fetch_status=0
begin
fetch next from cust_cursor_11 into
	@cust_id,
	@cust_name,
	@cust_city;
print cast(@cust_id as varchar) +' '+ @cust_name+ ' '+@cust_city;
end;
close cust_cursor_11;
deallocate cust_cursor_11;


--------------------------------------------------------------------------------------------

create table products(pro_id int,pro_name varchar(20),pro_price int,pro_quantity int)
insert into products values (1,'mouse',120,7)
insert into products values (5,'keyboard',2000,5)
insert into products values (3,'monitor',12000,5)
insert into products values (8,'monitor',13000,7)
insert into products values (7,'cpu',20000,5)
select * from products

-- Assignment-2
--create a cursor to display those records from product table whose price >300

declare 
	@pro_id int, 
	@pro_name varchar(max),
	@pro_price int,
	@pro_quantity int;

declare cursor_22 cursor
for select * from products where pro_price>300;

open cursor_22
fetch next from cursor_22 into 
	@pro_id, 
	@pro_name,
	@pro_price,
	@pro_quantity;
print cast(@pro_id as varchar)+' '+@pro_name+' '+cast(@pro_price as varchar)+' '+cast(@pro_quantity as varchar);

while @@fetch_status=0
begin
fetch next from cursor_22 into 
	@pro_id, 
	@pro_name,
	@pro_price,
	@pro_quantity;
print cast(@pro_id as varchar)+' '+@pro_name+' '+cast(@pro_price as varchar)+' '+cast(@pro_quantity as varchar);
end;

close cursor_22;
deallocate cursor_22;

--create a cursor to display those records from product table whose productname = 'mouse'

declare 
	@pro_id1 int, 
	@pro_name1 varchar(max),
	@pro_price1 int,
	@pro_quantity1 int;

declare cursor_222 cursor
for select * from products where pro_name='mouse';

open cursor_222
fetch next from cursor_222 into 
	@pro_id1, 
	@pro_name1,
	@pro_price1,
	@pro_quantity1;
print cast(@pro_id1 as varchar)+' '+@pro_name1+' '+cast(@pro_price1 as varchar)+' '+cast(@pro_quantity1 as varchar);

while @@fetch_status=0
begin
fetch next from cursor_222 into 
	@pro_id1, 
	@pro_name1,
	@pro_price1,
	@pro_quantity1;
print cast(@pro_id1 as varchar)+' '+@pro_name1+' '+cast(@pro_price1 as varchar)+' '+cast(@pro_quantity1 as varchar);
end;

close cursor_222;
deallocate cursor_222;