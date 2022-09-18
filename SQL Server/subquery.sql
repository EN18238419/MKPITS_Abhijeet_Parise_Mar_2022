---------------------------- subquery example -----------------------------
create table customer_1 (cust_id int,cust_name varchar(20),state varchar(20),city varchar(20))

insert into customer_1 values(1,'Abhijeet1','MH','Yavatmal')
insert into customer_1 values(2,'Abhijeet2','MH','Yavatmal')
insert into customer_1 values(3,'Abhijeet3','MP','Nagpur')
insert into customer_1 values(4,'Abhijeet4','MP','Nagpur')
insert into customer_1 values(5,'Abhijeet5','MP','Gondia')
select * from customer_1

create table orders (order_id int , cust_id int, order_date date,
product_name varchar(20),qty int)

insert into orders values(1,1,'2022-2-2','mouse',5)
insert into orders values(1,1,'2022-2-2','keyboard',7)
insert into orders values(2,2,'2022-2-2','desktop',5)
insert into orders values(2,2,'2022-2-2','ram',5)
insert into orders values(3,3,'2022-2-2','laptop',5)
insert into orders values(4,3,'2022-1-2','mouse',8)
insert into orders values(5,4,'2022-2-2','mouse',5)
insert into orders values(6,4,'2022-2-2','ram',5)
insert into orders values(7,5,'2022-2-2','desktop',6)
insert into orders values(7,5,'2022-2-2','ram',5)
select * from orders

select * from orders where cust_id in (select cust_id from customer_1 where state='MP') order by product_name desc
------> outer query <---------------   -------------> inner query <------------------                         
--===============================================================================================





