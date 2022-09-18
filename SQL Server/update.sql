                         -- sample3 database
--------------------------------------------------------------
                  -- on upadte no action 
 create table order_1(order_id int primary key,cust_id int )   
  create table order_detail_1(product_name varchar(20),product_price int ,order_id int not null,
 constraint fk_1 foreign key (order_id)
 references order_1(order_id)
 on update no action)

 insert into order_1 values(11,55)
 insert into order_1 values(14,56)
 insert into order_1 values(16,57)
 select * from order_1

  insert into order_detail_1 values('Complan',110,11)
  insert into order_detail_1 values('Complan2',120,14)
  insert into order_detail_1 values('Complan3',116,16)
  select * from order_detail_1
  select * from order_1
  update order_1 set order_id=18
  where order_id=14                        -- it will show an error
  ------------------------------------------------------------------------------
                       -- on update cascade
   create table order_2(order_id int primary key,cust_id int )   
  create table order_detail_2(product_name varchar(20),product_price int ,order_id int not null,
 constraint fk_2 foreign key (order_id)
 references order_2(order_id)
 on update cascade)

 insert into order_2 values(11,55)
 insert into order_2 values(14,56)
 insert into order_2 values(16,57)
 select * from order_2

  insert into order_detail_2 values('Complan',110,11)
  insert into order_detail_2 values('Complan2',120,14)
  insert into order_detail_2 values('Complan3',116,16)
  select * from order_detail_2
  select * from order_2
  update order_2 set order_id=18
  where order_id=14  
   select * from order_2                   -- it will update 
   --------------------------------------------------------------------------------------
                        -- on update set null
 create table order_3(order_id int primary key,cust_id int )   
 create table order_detail_3(product_name varchar(20),product_price int ,order_id int,
 constraint fk_3 foreign key (order_id)
 references order_3(order_id)
 on update set null)

 insert into order_3 values(11,55)
 insert into order_3 values(14,56)
 insert into order_3 values(16,57)
 select * from order_3

  insert into order_detail_3 values('Complan',110,11)
  insert into order_detail_3 values('Complan2',120,14)
  insert into order_detail_3 values('Complan3',116,16)
  select * from order_detail_3
  select * from order_3
  update order_3 set cust_id=null
  where cust_id=55  
   select * from order_3                -- it will set null
    select * from order_detail_3
	  update order_3 set cust_id=58
  where cust_id=57  
   select * from order_3                -- it will set null
    select * from order_detail_3
	  update order_3 set order_id=61
  where order_id=16  
   select * from order_3                -- it will set null
    select * from order_detail_3
   --------------------------------------------------------------------------------------
                          -- on update set default
 create table order_4(order_id int primary key,cust_id int )   
 create table order_detail_4(product_name varchar(20),product_price int ,order_id int,
 constraint fk_4 foreign key (order_id)
 references order_4(order_id)
 on update set default)

 insert into order_4 values(11,55)
 insert into order_4 values(14,56)
 insert into order_4 values(16,57)
 select * from order_4

  insert into order_detail_4 values('Complan',110,11)
  insert into order_detail_4 values('Complan2',120,14)
  insert into order_detail_4 values('Complan3',116,16)
  select * from order_detail_4
  select * from order_4
  update order_4 set cust_id=77
  where cust_id=57  
   select * from order_4                -- it will update
update order_4 set cust_id=66
  where cust_id=55  
  select * from order_4 
   --------------------------------------------------------------------------------------
 create table order_444(order_id int primary key,cust_name varchar(20))   
 create table order_detail_444(product_name varchar(20),product_price int ,order_id int default 100,
 constraint fk_444 foreign key (order_id)
 references order_444(order_id)
 on update set default)

 insert into order_444 values(11,'Abhi1')
 insert into order_444 values(14,'Abhi2')
 insert into order_444 values(16,'Abhi3')
 select * from order_444

  insert into order_detail_444 values('Complan',110,11)
  insert into order_detail_444 values('Complan2',120,14)
  insert into order_detail_444 values('Complan3',116,16)
  select * from order_detail_444
  select * from order_444
  update order_444 set order_id=100
  where  cust_name='abhi2'
   select * from order_444                -- it will update
update order_444 set order_id=66
  where cust_name='abhi1' 
  select * from order_444
  update order_444 set order_id=null
  where cust_name='abhi3' 
  select * from order_444
  select * from order_detail_444