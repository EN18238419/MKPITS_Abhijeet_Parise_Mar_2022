 CREATE TABLE vendor_groups2 (
    group_id INT  PRIMARY KEY,
    group_name VARCHAR (100) NOT NULL
); 

CREATE TABLE vendors4 (
        vendor_id INT  PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT default 100,
        constraint fk555  foreign key(group_id)
        references vendor_groups2(group_id)
        on update set default
        
        )

insert into vendor_groups2 values(1,'tcs1')
          insert into vendors4 values(111,'mkpits',1)

insert into vendor_groups2 values(2,'tcs2')
          insert into vendors4 values(112,'mkpits1',2)
select * from vendor_groups2
select * from vendors4

 update vendor_groups2 set group_id=100 where group_name='tcs1'
  update vendor_groups2 set group_id=200 where group_name='tcs2'
 select * from vendor_groups2
select * from vendors4

