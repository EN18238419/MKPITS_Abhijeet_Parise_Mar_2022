----------------------------------- Bike_store database -------------------------------
---> creation of stores table
create table stores(
store_id int primary key identity (1,1),
store_name varchar(20) not null,
phone bigint not null,
email varchar(35) not null,
street varchar(20) not null,
city varchar(15)not null,
state varchar(20)not null,
zip_code varchar(20) not null                     
)
insert into stores (store_name,phone,email,street,city,state,zip_code) values(
'store_1',1234567899,'abcdef@gmail.com','LED square','Nagpur','Maharashtra','445402')
insert into stores (store_name,phone,email,street,city,state,zip_code) values(
'store_2',1234567999,'abcdefgh@gmail.com','lokmat square','Nagpur','Maharashtra','445402')
insert into stores (store_name,phone,email,street,city,state,zip_code) values(
'store_3',1234522877,'abcdefghij@gmail.com','Darda square','Yavatmal','Maharashtra','445001')
insert into stores (store_name,phone,email,street,city,state,zip_code) values(
'store_4',1234522854,'efghij@gmail.com','subhashnagar','Yavatmal','Maharashtra','445001')
insert into stores (store_name,phone,email,street,city,state,zip_code) values(
'store_5',2234567899,'xyzef@gmail.com','Dharampeth','Nagpur','Maharashtra','445402')
select * from stores
-------------------------------------------------------------------------------------------

---> creation of staff table
create table staff(
staff_id int primary key,
first_name varchar(20),
last_name varchar(20),
staff_email varchar(30),
staff_phone bigint,
store_id int constraint st1 foreign key(store_id)
references stores (store_id),
manager_id int)
insert into staff values(1234,'Abhi','Parise','abhiparise@gamil.com',7821981676,1,1111)
insert into staff values(1235,'Abhi2','Parise2','abhi2parise@gamil.com',7821981677,2,2222)
insert into staff values(1236,'Abhi3','Parise3','abhi3parise@gamil.com',7821981678,3,3333)
insert into staff values(1237,'Abhi4','Parise4','abhi4parise@gamil.com',7821981679,4,4444)
insert into staff values(1238,'Abhi5','Parise5','abhi5parise@gamil.com',7821981680,5,5555)
select * from staff
select * from stores
----------------------------------------------------------------------------------------------
---> creation of customer table
create table customer (
cust_id int primary key,
first_name varchar(20),
last_name varchar(20),
cust_phone bigint,
cust_email varchar(30),
street varchar(20),
city varchar(20),
state varchar(30),
zip_code int)
insert into customer values(9999,'aaaa','zzzz',3434723463,'aaaaa@gamil.com','sadar','Nagpur','MH',352656)
insert into customer values(8888,'bbbb','yyyy',3435663463,'bbbbb@gamil.com','LED chowk','Nagpur','MH',352657)
insert into customer values(7777,'cccc','xxxx',3434723466,'ccccc@gamil.com','subhashnagar','Yavatmal','MH',352658)
insert into customer values(6666,'dddd','wwww',3434723467,'ddddd@gamil.com','sadar','Nagpur','MH',352659)
insert into customer values(5555,'eeee','vvvv',3434723468,'eeeee@gamil.com','darda nagar','Wardha','MH',352650)
select * from customer

--------------------------------------------------------------------------------------------------
---> creation of orders table
create table orders(
order_id int primary key,
cust_id int constraint c_1 foreign key(cust_id) references customer(cust_id),
order_status varchar(20),
order_date date,
require_date date,
shipping_date date,
store_id int constraint st_1 foreign key(store_id)
references stores (store_id),
staff_id int constraint staff_1 foreign key(staff_id)
references staff(staff_id))

insert into orders values(11,9999,'pending','2022-08-21','2022-08-29','2022-09-05',1,1234) 
insert into orders values(12,8888,'processing','2022-08-21','2022-08-29','2022-09-05',2,1235) 
insert into orders values(13,7777,'rejected','2022-08-21','2022-08-29','2022-09-05',3,1236) 
insert into orders values(14,6666,'completed','2022-08-21','2022-08-29','2022-09-05',4,1237) 
insert into orders values(15,5555,'pending','2022-08-21','2022-08-29','2022-09-05',5,1238) 
select * from orders
select * from customer
select * from staff
select * from stores
--------------------------------------------------------------------------------------------------
---> creation of categories table
create table categories(
category_id int primary key,
category_name varchar(20))
insert into categories values(44,'consumer goods')
insert into categories values(45,'convenience')
insert into categories values(46,'unsought goods')
insert into categories values(47,'specially goods')
insert into categories values(48,'makeup goods')
select * from categories

--------------------------------------------------------------------------------------------------
---> creation of brands table
create table brands(
brand_id int primary key,
brand_name varchar(25))
insert into brands values(321,'abc')
insert into brands values(322,'abcd')
insert into brands values(323,'abcef')
insert into brands values(324,'abcefg')
insert into brands values(325,'abcefgh')
select * from brands
--------------------------------------------------------------------------------------------------
---> creation of product table
create table product (
product_id int primary key,
product_name varchar(20),
brand_id int constraint b1 foreign key(brand_id) references brands(brand_id),
category_id int constraint cat_1 foreign key(category_id) references categories(category_id) ,
model_year int ,
list_price int)
insert into  product values(91,'passion pro',321,44,2022,86000)
insert into  product values(92,'splender pro',322,45,2022,83000)
insert into  product values(93,'shine',323,46,2022,96000)
insert into  product values(94,'unicorn',324,47,2022,120000)
insert into  product values(95,'livo',325,48,2022,91000)
select * from product
select * from brands
select * from categories
--------------------------------------------------------------------------------------------------
---> creation of order_item table
create table order_item(
order_id int primary key constraint o_1 foreign key(order_id) references orders(order_id),
item_id int, 
product_id int constraint pro_1 foreign key(product_id) references product(product_id),
quantity int ,
list_price int 
)
insert into order_item values(11,10010,91,2,1400)
insert into order_item values(12,11001,92,3,1600)
insert into order_item values(13,10101,93,5,1900)
insert into order_item values(14,10011,94,6,4400)
insert into order_item values(15,10111,95,1,400)
select * from order_item
select * from product
select * from orders
--------------------------------------------------------------------------------------------------
---> creation of stocks table
create table stocks(
store_id int primary key constraint st_2 foreign key(store_id) references stores (store_id),
product_id int constraint pro_2 foreign key(product_id) references product(product_id),
quantity int )
insert into stocks values(1,91,800)
insert into stocks values(2,92,1800)
insert into stocks values(3,93,8900)
insert into stocks values(4,94,600)
insert into stocks values(5,95,900)
select * from stocks
select * from stores
select * from product
---------------------- Very good,You have done it successfully -------------------------------