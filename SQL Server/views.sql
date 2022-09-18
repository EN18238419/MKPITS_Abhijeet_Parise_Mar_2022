                        -- views database --
--============================================================================================
create table product(pro_id int,pro_name varchar(20),pro_price int,pro_quantity int)
 insert into product values (1,'mouse',120,7)
 insert into product values (5,'keyboard',2000,5)
 insert into product values (3,'monitor',12000,5)
 insert into product values (7,'cpu',20000,5)
 select * from product

 -------------------------------- simple view ----------------------------------------
 --> create view
 create view [product_deatails] as
 select pro_id,pro_name from product
 where pro_price>200

 select * from [product_deatails];
 ---------------------------------------------------------------------------------------------
  --> drop view
  drop view [product_deatails];
----------------------------------------------------------------------------------------------
 -->  add column in view
 create or alter view [product_deatails] as
 select pro_id,pro_name,pro_price from product
 where pro_price>200

 select * from [product_deatails];

 ----------------------------------------------------------------------------------------------
 -->  remove column from view
 create or alter view [product_deatails] as
 select pro_id from product
 where pro_price>200

 select * from [product_deatails];
  ----------------------------------------------------------------------------------------------
