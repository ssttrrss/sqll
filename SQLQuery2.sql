create table Employee
(
id int,
empname varchar(25),
salary numeric(12,2)
)

--schema

sp_help Employee

--alter is used to modify the scema of table
--add-->for to add new column

alter table Employee add qualification varchar(10)
alter table Employee add contactno varchar(14)

--> modify the data type or size

alter table Employee alter column qualification varchar(15)
alter table Employee alter column contactno varchar(20)

--> to drop the column
alter table Employee drop column qualification

--> adding not null constraint
alter table Employee alter column empname varchar(25) not null
alter table Employee alter column salary numeric(12,2) not null
alter table Employee alter column id int not null
alter table Employee alter column contactno varchar(20) not null

--> unique constraint add

alter table Employee add email varchar(20) not null unique
--OR
alter table Employee add constraint un_emp unique(email)
alter table Employee add constraint un_emp3 unique(contactno)

--> when we ahve to add constraint to multiple columns
alter table Employee add constraint un_emp2 unique(email,id)

--> Remove constraint
alter table Employee drop constraint un_emp

--> add primary key on column
alter table Employee add constraint pk_emp primary key(email)
--> drop primary key
alter table Employee drop constraint pk_emp
 