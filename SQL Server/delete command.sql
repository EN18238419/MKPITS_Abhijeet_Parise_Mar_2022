                      -- sample3 database
---------------------------------------------------------------------------------------
                        -- simple without foreign key
create table vender_group(group_id int identity primary key,group_name varchar(100)not null)

create table venders(vender_id int identity primary key,vender_name varchar(100)not null,group_id int not null)
select * from vender_group
insert into venders(vender_name,group_id)values('Abhijeet',21)
insert into venders(vender_name,group_id)values('JCOET',1127)
select * from venders

-------------------------------------------------------------------------------------
                          -- with foreign key
create table vender1(vender_id int identity primary key,
vender_name varchar(100)not null,
 group_id INT NOT NULL,
 constraint fk1 foreign key(group_id)
 references vender_group(group_id))    -- group_id int  foreign key references vender_group(group_id))  
                                        -- another way to create the foreign key is above 

 select * from vender_group
 insert into vender_group values('TCS')
 select * from vender_group
 insert into vender1 values('Krishna',1)
 insert into vender1 values('Krishna2',2)
 select * from vender1


 ---------------------------------------------------------------------

 create table orders (order_id int primary key,cust_id int )
 create table order_detail(product_name varchar(20),product_price int ,order_id int not null,
 constraint fk2 foreign key (order_id)
 references orders(order_id))

 insert into orders values (21,11)
 select * from orders
 insert into order_detail values('Horlics',235,21)
 select * from order_detail
 ------------------------------------------------------------------------------------------

                      -- on delete no action(restriction occur while deleting)  //
create table vender2(vender_id int identity primary key,
vender_name varchar(100)not null,
 group_id INT NOT NULL,
 constraint fk3 foreign key(group_id)
 references vender_group(group_id)
 on delete no action)                --on delete no action = kuchh na likhna
insert into vender2(vender_name,group_id)values('JCOET',1)
select * from vender2
insert into vender2(vender_name,group_id)values('JCOET',2)
select * from vender2
insert into vender_group values('Infosys')
select * from vender_group
insert into vender2(vender_name,group_id)values('JE',3)
select * from vender2

delete from vender_group where group_id=1        --// it will show error. if u have to delete group_id 1 (from parent table)data 
                                                 --then u have to first delete the group_id from child 
----------------------------------------------------------------------------------------------------------------
                          -- on delete cascade
create table vender3(vender_id int identity primary key,
vender_name varchar(100)not null,
 group_id INT NOT NULL,
 constraint fk4 foreign key(group_id)
 references vender_group(group_id)
 on delete cascade)

insert into vender3(vender_name,group_id)values('JD',2)
insert into vender3(vender_name,group_id)values('BNEC',3)
select * from vender3
insert into vender_group values('Sgbau')
select * from vender_group
insert into vender3(vender_name,group_id)values('JIT',4)
insert into vender3(vender_name,group_id)values('PCOE',5)

select * from vender3

delete from vender_group where group_id=5
select * from vender3
-------------------------------------------------------------------------------------------
                         -- on delete cascade (one more example)
insert into vender_group values('AAA')
insert into vender_group values('BBB')
insert into vender_group values('CCC')
select  * from vender_group
insert into vender3(vender_name,group_id)values('aaa',9)
insert into vender3(vender_name,group_id)values('bbb',10)
insert into vender3(vender_name,group_id)values('ccc',11)
select  * from vender3
delete from vender_group where group_id=10
select  * from vender_group
--------------------------------------------------------------------------------------------
                         -- on delete set null
 create table order_33(order_id int primary key,cust_id int )   
 create table order_detail_33(product_name varchar(20),product_price int ,order_id int,
 constraint fk_33 foreign key (order_id)
 references order_33(order_id)
 on delete set null)

 insert into order_33 values(11,55)
 insert into order_33 values(14,56)
 insert into order_33 values(16,57)
 select * from order_33

  insert into order_detail_33 values('Complan',110,11)
  insert into order_detail_33 values('Complan2',120,14)
  insert into order_detail_33 values('Complan3',116,16)
  select * from order_detail_33
  select * from order_33
 delete from order_33 where order_id=14 
 select * from order_33        -- it will delete
 select * from order_detail_33 -- it will set null