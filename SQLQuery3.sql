create table Book
( 
id int primary key,
bookname varchar(15),
authour varchar(25),
price numeric(6,2)
)

sp_help Book

alter table Book add pageno numeric(10)
alter table Book alter column pageno numeric(10) not null
alter table Book alter column id varchar(15) not null
alter table Book alter column price numeric(10,2) not null
alter table Book alter column bookname varchar(15) not null
alter table Book alter column authour varchar(25) not null

alter table Book add constraint un_book unique(pageno)
alter table Book add constraint pk_book1 primary key(id)


create table Emp
(
empname varchar(20),
emailid varchar(25),
id int
constraint fk_emp1 foreign key(id) references Book(id)
)

