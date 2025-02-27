create table Author
(
authorid int primary key,
Name varchar(20) not null,
city varchar(10) not null,
country varchar(10) not null,
)

sp_help Author

create table CATEGORY 
(
categoryid int primary key,
description varchar(20) 
)

sp_help CATEGORY

create table Boook
(
bookid int primary key,
authoreid int,
categoryid int,
years numeric(10,2),
price numeric (10,2),
publisher varchar(20) not null,
rating numeric(10,2)
)

sp_help Boook 

alter table Boook add constraint fk_book1 foreign key(authoreid) references Author(authorid)
alter table Boook add constraint fk_book2 foreign key (categoryid) references CATEGORY(categoryid)


create table ORDER_DETAILS
(
orderno int primary key,
bookid int
)

sp_help ORDER_DETAILS

alter table ORDER_DETAILS add constraint fk_orddetails1 foreign key(bookid) references Boook(bookid)

