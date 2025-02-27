create table Userss
(
userid int primary key ,
username varchar(20)not null
)
sp_help Users

create table Products
(
pid int primary key not null,
pname varchar(20) not null
)

sp_help product

--create table Ordersss
--(
--oid int primary key not null,
--userid int not null,
--constraint fk_order1 foreign key(userid) references Userss(userid),

--pid int not null
--constraint fk_order2 foreign key(pid) references Product(pid)

--)

--sp_help Ordersss


create table Orderssss
(
oid int primary key,
userid int,
constraint fk_ord1 foreign key(userid) references Userss(userid),
pid int,
constraint fk_ord2 foreign key(pid) references Products(pid)
)

sp_help Orderssss



---> create a function which accept the price and discount

create function GetbookPrice (@price int)

returns int
as begin
declare @discountprice int
set @discountprice=@price-@price*0.10
return @discountpriceend
