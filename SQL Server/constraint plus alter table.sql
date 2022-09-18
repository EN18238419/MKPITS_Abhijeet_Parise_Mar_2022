							-- sample_4 database
-----------------------------------------------------------------------------------------------
							-- check constraint(All way to apply)
-----------------------------------------------------------------------------------------------
                            -- Way-1
create table product(id int ,name varchar(25),price dec(10,2) check(price>0))
insert into product values(1,'Abhi',200)   --it will accept
insert into product values(1,'Abhi',-200)  --it will show error(The conflict occurred in database)
select * from product
-----------------------------------------------------------------------------------------------
							-- Way-2
create table product_1(id int ,name varchar(25),price dec(10,2) constraint positive_num check(price>0))
insert into product_1 values(1,'Abhi',200)   --it will accept
insert into product_1 values(1,'Abhi',-200)  --it will show error(conflicted with the CHECK constraint "positive_num")
select * from product_1

-----------------------------------------------------------------------------------------------
							-- Way-3 (it is written correct in way 4)
create table product_2(id int ,name varchar(25),price dec(10,2) check(price>0))
insert into product_2 values(1,'Abhi',200)   --it will accept
insert into product_2 values(1,'Abhi',null)  -- it will also accept
insert into product_2 (id,name)values(2,'Abhi2')  -- it will also accept. So write not null in front
                                                  -- of check(price>0) to resolve this problem. 
                                            
select * from product_2

-----------------------------------------------------------------------------------------------
							-- Way-4 (correct way)
create table product_3(id int ,name varchar(25),price dec(10,2) check(price>0)not null)
insert into product_3 values(1,'Abhi',200)   --it will accept
insert into product_3 values(1,'Abhi',null)  -- it will show error
insert into product_3 (id,name)values(2,'Abhi2')  -- it will also show error
                                                                                             
select * from product_3
------------------------------------------------------------------------------------
							-- Way-5
create table product_4(id int ,name varchar(25),unit_price dec(10,2) check(unit_price>0)not null,discount dec(10,2),
check(unit_price>0),
check(discount>0),
check(unit_price>discount))
insert into product_4 values(1,'Abhi',200,100)   --it will accept
insert into product_4 (id,name)values(2,'Abhi2',100,150)  -- it will also show error
insert into product_4 (id,name)values(2,'Abhi2',110,0)    -- it will also show error                                                                                             
select * from product_4
------------------------------------------------------------------------------------------
							-- Way-6
create table product_5(id int ,name varchar(25),unit_price dec(10,2) check(unit_price>0)not null,discount dec(10,2),
check(unit_price>0),
check(unit_price>discount and discount>0))               <--focus here
insert into product_5 values(1,'Abhi',200,100)   --it will accept
insert into product_5 (id,name)values(2,'Abhi2',100,150)  -- it will also show error
insert into product_5 (id,name)values(2,'Abhi2',110,0)    -- it will also show error                                                                                             
select * from product_5

------------------------------------------------------------------------------------------
							-- ALTER TABLE ADD CONSTRAINT statement(used to add)
create table product_6(id int ,name varchar(25),price dec(10,2)not null check(price>0))
insert into product_6 values(1,'Abhi',200)  
insert into product_6 values(1,'Abhi',300)  
select * from product_6 
alter table product_6
add discount dec(10,2)
sp_help product_6            -- used to display the structure
alter table product_6
add check(price>discount)
sp_help product_6
------------------------------------------------------------------------------------------
							-- ALTER TABLE DROP CONSTRAINT statement(used to remove single constraints )
create table product_8(id int ,name varchar(25),price dec(10,2)not null constraint pos_num check(price>0))
insert into product_8 values(1,'Abhi',200)  
select * from product_8 
sp_help product_8

alter table product_8
drop constraint pos_num
sp_help product_8

insert into product_8 values(2,'Abhijeet',0)   -- this will not show error
                                               -- because check(price>0) constraint is removed
select * from product_8 

------------------------------------------------------------------------------------------
							-- ALTER TABLE DROP CONSTRAINT statement(used to multiple remove) 
create table product_9(id int ,name varchar(25),price dec(10,2)not null,
discount dec(10,2),
constraint pos_num1 check(price>0),
constraint pos_num2 check(discount>0))
insert into product_9 values(1,'Abhi',200,100)  -- it will accept
insert into product_9 values(2,'Abhijeet',0,0)   -- it shows an error
select * from product_9
sp_help product_9

alter table product_9
drop constraint pos_num1,pos_num2               <-- focus here
sp_help product_9

insert into product_9 values(2,'Abhijeet',0,0)   -- this will not show error
                                               -- because check(price>0)and check(discount>0) constraint are removed
select * from product_9          
----------------------------------------------------------------------------------------------------------

							-- ALTER TABLE NO CONSTRAINT statement(used to remove multiple) 
create table product_10(id int ,name varchar(25),price dec(10,2)not null,
discount dec(10,2),
constraint pos_num1 check(price>0),
constraint pos_num2 check(discount>0))
insert into product_10 values(1,'Abhi',200,100)  -- it will accept
insert into product_10 values(2,'Abhijeet',0,0)   -- it shows an error
select * from product_10
sp_help product_10

alter table product_10
nocheck constraint pos_num1,pos_num2               <-- focus here
sp_help product_10

insert into product_10 values(2,'Abhijeet',0,0)   -- this will not show error
                                               -- because check(price>0)and check(discount>0) constraint are disabled
select * from product_10   
----------------------------------------------------------------------------------------------------------