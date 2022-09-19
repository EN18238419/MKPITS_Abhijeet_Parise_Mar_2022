                --- cursor database ---

create table product(p_id int,p_name varchar(10),p_price int, p_quantity int)
insert into product values(02,'Horlics',1000,5)
insert into product values(04,'Complain',220,2)
insert into product values(05,'Bourn vita',220,3)
insert into product values(07,'Charger',1200,2)
insert into product values(08,'Keyboard',2220,1)
select * from product

--> cursor creation

declare 
	@product_name varchar(max),
	@product_price decimal;

declare cursor_1 cursor
for select p_name,p_price from product;

open cursor_1
fetch next from cursor_1 into 
@product_name ,
@product_price;


print @product_name + cast(@product_price as varchar);

while @@fetch_status=0

begin
fetch next from cursor_1 into 
@product_name ,
@product_price;
print @product_name + cast(@product_price as varchar);
end;

close cursor_1;

deallocate cursor_1;