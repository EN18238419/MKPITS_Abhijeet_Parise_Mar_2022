                            --sample3 database
--------------------------------------------------------------------------
                        --student table creation
create table student(roll_no int,f_name varchar(20),l_name varchar(20),city varchar(20))
insert into student values(1,'Abhijeet','Parise','Yavatmal')
insert into student values(2,'Achal','Parise','Yavatmal')
insert into student values(3,'Abhi','Parise','Wardha')
insert into student values(4,'Krishna','Parise','Nagpur')
insert into student values(5,'Abhijeet','Par','Yavatmal')
select * from student

----------------------------------------------------------------------
                       -- where clause examples
					   --1)Simple Equallity
select * from student where roll_no=1
select * from student where roll_no>1                         -- using comparative operator
select * from student where f_name='Achal'
select * from student where city='yavatmal'
                           
						   
						   -- 2)Two condition (and operator)
select * from student where f_name='Abhijeet' and city='Yavatmal'
select * from student where l_name='Parise' and city='Yavatmal'
select * from student where roll_no>1 and city='Yavatmal'          -- using comparative operator

----------------------------------------------------------------------------
                          -- 3)Two condition (or operator)
select * from student where roll_no>1 or city='Yavatmal'            -- using comparative operator
select * from student where l_name='Parise' or city='Nagpur'

----------------------------------------------------------------------------
                           -- 4)Two condition (between operator)
select * from student where roll_no between 2 and 4	 
	
----------------------------------------------------------------------------
                           -- 5) condition where (or operator) used
select * from student where roll_no in(1,4,5)	
----------------------------------------------------------------------------
                           -- 5) condition where (LIKE operator) used
select * from student where f_name like '%bh%'
select * from student where f_name like 'ac%'
select * from student where f_name like '%t'
select * from student where f_name like '%l'
---------------------------------------------------------------------------------------
                    --one more example with between operator
create table order1(order_id int,product_name varchar(20),cust_name varchar(20),quantity int ,order_date date)
insert into order1 values(1,'mouse','Abhi',5,'2022-9-7')
select * from order1
insert into order1 values(3,'Monitor','Abhijeet',3,'2022-2-7')
insert into order1 values(2,'keyboard','Krishna',3,'2022-3-7')
insert into order1 values(5,'keyboard','Abhijit',3,'2022-5-1')
select * from order1
select * from order1 where order_date between'2022-5-1' and '2022-9-7'
