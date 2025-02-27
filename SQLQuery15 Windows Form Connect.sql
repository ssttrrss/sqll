create table Category1
(
cid int primary key identity(1,1),
cname varchar(20)
)

create table Product1
(
id int primary key identity(1,1),
name varchar(20),
price int,
cid int,
constraint fk_Cate_Prod foreign key(cid) references Category1(cid)
)

insert into Category1 values('Furniture')
insert into Category1 values('Electronics')
insert into Category1 values('Mobile')
insert into Category1 values('Home Needs')
