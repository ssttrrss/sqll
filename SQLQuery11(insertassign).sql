
------>Display Employee name,salary,Designation,address
  ----> update the salary by 10% of employee whon is from pune
  -----> delete all the empl sal<20000 And city is pune
  ------>update the address of employee whose designation is manager
  ------>display all th feamle employee
  ------>display all the employee from Bangolre
  ------>display all the employee from HR dept where location is mumbai
  ------>delete emp from sales dept whose sal>25000


create table Employe4
(
empid int,
did int,
empname varchar(25),
salary numeric(10,2),
deptname varchar(20),
address1 varchar(35),
designation varchar(10) default 'Developer',
gender varchar(5)
)

sp_help Employe4

alter table Employe4 add constraint fk_emp1 foreign key(did) references Deptname(did)

insert Into Employe4 (empid,empname,salary,deptname,address1,gender) values (101,'Jayesh',18000,'Developer','Bangolre','M')
insert Into Employe4 (empid,empname,salary,deptname,address1,gender) values (102,'Pragati',48000,'Manager','Pune','F')
insert Into Employe4 (empid,empname,salary,deptname,address1,gender) values (103,'Omkar',24000,'Sales','Nashik','M')
insert Into Employe4 (empid,empname,salary,deptname,address1,gender) values (104,'Divya',20000,'Admin','Pune','F')
insert Into Employe4 (empid,empname,salary,deptname,address1,gender) values (105,'Divyank',55000,'HR','Mumbai','M')

select*from Employe4


----> update the salary by 10% of employee whon is from pune

update Employe4 set salary=salary+(salary*10/100) where address1='Pune'

  -----> delete all the empl sal<20000 And city is pune
delete from Employe4 where salary<20000

    ------>update the address of employee whose designation is manager
update Employe4 set address1='Panvel' where deptname='Manager'

  ------>display all th feamle employee
select * from Employe4 where gender='F'

    ------>display all the employee from Bangolre
select * from Employe4 where address1='Bangolre'

    ------>display all the employee from HR dept where location is mumbai
select * from Employe4 where address1='Mumbai' and deptname = 'HR'

  ------>delete emp from sales dept whose sal>25000
delete from Employe4 where deptname = 'sales' and salary>25000


drop table Employe4



-------> top it is used to limiting rows

--select top 4 * from Employe4
--order by salary desc

------> offset --> to skip the record
------> fetch --> select the record

--select * from Employe4
--order by salary desc
--offset 2 rows
--fetch next 2 rows only

create table Deptname
(
did int,
deptname varchar(20)
)
insert Into Deptname(did,deptname) values (1,'HR')
insert Into Deptname(did,deptname) values (2,'Admin')
insert Into Deptname(did,deptname) values (5,'Sales')
insert Into Deptname(did,deptname) values (8,'Manager')
insert Into Deptname(did,deptname) values (9,'Developer')

alter table Deptname alter column did int not null
alter table Deptname add constraint pk_dpt1 primary key (did)



select* from Deptname
select * from Employe4

select e1.*,d1.*
from Employe4 e1
inner join Deptname d1 on d1.did=e1.did