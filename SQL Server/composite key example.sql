--===================== composite_key_db database ============================
-------------------------- Ex1. composite key --------------------------------
create table student(roll_no int,
					 stu_name varchar(20),
					 class varchar(10),
					 section varchar(1),
					 mob_no bigint,
					 primary key (roll_no,mob_no)   -- Composite key
					 )

insert into student values(21,'Abhijeet','Java','A',7821981676)
insert into student values(21,'Abhijeet','Java','A',7821981677)
insert into student values(22,'Abhijeet','Java','A',7821981676)
select *from student
--==============================================================================
-------------------------- Ex2. composite key --------------------------------
create table order_items (order_id int ,
						  item_id int, 
						  quantity int,
						  list_price int, 
						  discount int, 
						  primary key(order_id,item_id))    -- Composite key


insert into order_items values(1,11,8,2000,5)
insert into order_items values(1,12,18,280,5)
insert into order_items values(2,11,9,2090,5)
select * from order_items

--===============================================================================

