create table salesman(salesman_id int ,name varchar(20),city varchar(20),commission dec(10,2))
insert into salesman values(5001,'James Hoog','New york',0.15)
insert into salesman values(5002,'Nail Knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'Paul Adam','Rome',0.13)
insert into salesman values(5003,'Lauson Hen','San Jose',0.12)
select * from salesman

set implicit_transactions on

begin transaction
update salesman set name='Amit' where salesman_id=5002
rollback transaction

select * from salesman

begin transaction
update salesman set name='Amit' where salesman_id=5002
insert into salesman values(1000,'Krishna','Yavatmal',0.35)
rollback transaction



