create table Employeee
(
id int,
name1 varchar(20),
email varchar(20) unique,
age int check(Age>=18)not null,
country varchar(10) default 'India'
)

insert into Employeee values(1,'jayesh','jayesh@gmail.com',23,'USA')

select * from Employeee

insert into Employeee(id,name1,email,age)values(2,'omkar','omkar@gmail.com',19)
insert into Employeee(id,name1,email,age)values(3,'rahul','rahul@gmail.com',24)
insert into Employeee(id,name1,email,age)values(4,'gaurav','gaurav@gmail.com',23)
insert into Employeee(id,name1,email,age)values(5,'jay','jay@gmail.com',21)
insert into Employeee(id,name1,email,age)values(6,'bhavesh','bhavesh@gmail.com',20)
insert into Employeee(id,name1,email,age)values(7,'soham','soham@gmail.com',22)
insert into Employeee(id,name1,email,age)values(8,'pranay','pranay@gmail.com',26)


update Employeee set email ='jayyu@gmail.com' where id=8
update Employeee set country='USA' where id in(7,6)
update Employeee set name1 ='Ganesh' where id in(4,5,6)
