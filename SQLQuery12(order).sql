create table Customerss
(
customerid int primary key,
customername varchar(30),
age int,
city varchar(20),
state varchar(20),

dob date)


insert into Customerss values(1,'Omkar',24,'Pune','Maharashtra','1998-2-6')
insert into Customerss values(2,'Rahul',21,'Mumbai','Maharashtra','1999-4-5')
insert into Customerss values(3,'Vinit',23,'Vashi','Maharashtra','1998-6-7')
insert into Customerss values(4,'Divyank',21,'Raigad','Gaujrat','2000-8-7')
insert into Customerss values(5,'Ganesh',22,'Pen','UP','1999-5-1')


create table Ordersss
(
orderid int primary key,
customerid int,
statusid int,
orderdate date,
shippeddate date,
deliverydate date
)


insert into Ordersss values (102,2,5,'2023-5-20','2023-9-15',null)
insert into Ordersss values (105,6,1,'2023-5-18',null,null)
insert into Ordersss values (108,7,1,'2023-2-7','2023-7-3','2023-5-23')
insert into Ordersss values (104,null,null,null,null,'2023-5-9')
insert into Ordersss values (109,9,1,'2023-5-1','2023-9-17',null)
insert into Ordersss values (107,3,4,'2023-5-11','2023-9-7',null)
insert into Ordersss values (103,2,5,null,null,'2023-5-9')
insert into Ordersss values (87,2,5,'2023-5-20','2023-9-01',null)
insert into Ordersss values (100,2,5,'2023-5-8','2023-9-12',null)
insert into Ordersss values (99,2,5,'2023-5-20','2023-9-14','2023-9-8')
insert into Ordersss values (97,2,5,'2023-5-21','2023-9-1',null)
insert into Ordersss values (98,2,5,'2023-5-22','2023-9-3','2023-8-3')
insert into Ordersss values (91,5,3,'2023-5-23','2023-9-4',null)


create table Orderstatuss
(
statusid int primary key,
statusname varchar(20)
)


insert into Orderstatuss values(1,'Order')
insert into Orderstatuss values(2,'Shipped')
insert into Orderstatuss values(3,'Delivered')



select * from Customerss
select * from Orderstatuss
select * from Ordersss

select c1.*,o1.*,o2.statusname
from Customerss c1
inner join Ordersss o1 on o1.customerid=c1.customerid
inner join Orderstatuss o2 on o2.statusid=o1.statusid

select c1.*,o1.*,o2.statusname
from Customerss c1
left join  Ordersss o1 on o1.customerid=c1.customerid
left join Orderstatuss o2 on o2.statusid=o1.statusid


select c1.*,o1.*,o2.statusname
from Customerss c1
right join  Ordersss o1 on o1.customerid=c1.customerid
right join Orderstatuss o2 on o2.statusid=o1.statusid

