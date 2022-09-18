                                   -- joins database --
--========================================= Joins =================================================
                                     -- 1)Inner Join --
create table student(id int primary key,
					 admission_no int,
					 f_name varchar(20),
					 l_name varchar(20),
					 age int,
					 city varchar(20))
insert into student values(21,212121,'Abhijeet','Parise',22,'Yavatmal')
insert into student values(22,222222,'Abhi','Parise',22,'Yavatmal')
insert into student values(23,232323,'Krishna','Parise',21,'Yavatmal')
insert into student values(24,242424,'Gopal','Kate',22,'Nagpur')
insert into student values(25,252525,'Abhi','Parise',22,'Nagpur')
insert into student values(26,262626,'Abhijeet','par',22,'Wardha')
insert into student values(27,272727,'Abhi','Par',21,'Nagpur')
select * from student

create table fee(admission_no int,
				 course varchar(20), 
				 amount_paid int)

insert into fee values(212121,'Java',10000)
insert into fee values(222222,'Python',9000)
insert into fee values(232323,'c++',7000)
insert into fee values(242424,'c#',8000)

select * from fee

select student.admission_no,student.f_name,student.l_name,fee.course,fee.amount_paid from student
inner join fee
on student.admission_no=fee.admission_no;    -- showing common things
--=================================================================================================
                                 --2)Cross Join--
-->1
select student.admission_no,student.f_name,student.l_name,fee.course,fee.amount_paid from student
cross join fee
-->2
select student.admission_no,student.f_name,student.l_name,fee.course,fee.amount_paid from student
cross join fee
where student.admission_no=fee.admission_no;
------------------------------------------------------------------------------------------------------
                -- another example of cross join --
select * from customer cross join orders                           -- reference from join_assignment

--================================================================================================
							 -- 3.1)Left Outer Join --

create table student1(id int primary key,
					 admission_no int,
					 f_name varchar(20),
					 l_name varchar(20),
					 age int,
					 city varchar(20))
insert into student1 values(21,212121,'Abhijeet','Parise',22,'Yavatmal')
insert into student1 values(22,222222,'Abhi','Parise',22,'Yavatmal')
insert into student1 values(23,232323,'Krishna','Parise',21,'Yavatmal')
insert into student1 values(24,242424,'Gopal','Kate',22,'Nagpur')
insert into student1 values(25,252525,'Abhi','Parise',22,'Nagpur')
insert into student1 values(26,262626,'Abhijeet','par',22,'Wardha')
insert into student1 values(27,272727,'Abhi','Par',21,'Nagpur')
select * from student1

create table fees(admission_no int,
				 course varchar(20), 
				 amount_paid int)

insert into fees values(212121,'Java',10000)
insert into fees values(222222,'Python',9000)
insert into fees values(232323,'c++',7000)
insert into fees values(242424,'c#',8000)
insert into fees values(266666,'c',7000)

select * from fees

select student1.admission_no,student1.f_name,student1.l_name,fees.course,fees.amount_paid from student1
left outer join fees
on student1.admission_no=fees.admission_no;

--================================================================================================
							 -- 3.2)Right Outer Join --

select student1.admission_no,student1.f_name,student1.l_name,fees.course,fees.amount_paid from student1
right outer join fees
on student1.admission_no=fees.admission_no;

--================================================================================================
							 -- 3.3)Full Outer Join --

select student1.admission_no,student1.f_name,student1.l_name,fees.course,fees.amount_paid from student1
full outer join fees
on student1.admission_no=fees.admission_no;


--============================================================================================
                             -- 4)Self Join --

create table staff(staff_id int,f_name varchar(25),l_name varchar(25),manager_id int)
insert into staff values(1,'Fabiola','Jackson',null)
insert into staff values(2,'Mireya','Copeland',1)
insert into staff values(3,'Genna','Serrano',2)
insert into staff values(4,'Virgie','Wiggins',2)
insert into staff values(5,'Jannette','David',1)
insert into staff values(6,'Marcelene','Boyer',5)
insert into staff values(7,'Venita','Daniel',5)
insert into staff values(8,'Kali','Vargas',1)
insert into staff values(9,'Layla','terrell',7)
insert into staff values(10,'Bernadine','Houston',7)

select * from staff

select e.f_name+'  '+e.l_name employee,
       m.f_name+'  '+m.l_name manager
	   from staff e inner join staff m on m.staff_id=e.manager_id
	   order by manager;
--=======================================================================================================--

