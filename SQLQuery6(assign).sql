
create table Book1
(
Bookid int not null,
bookname varchar(25) not null,
authorid int primary key,
price numeric(10,2) not null
)

sp_help Book1

insert into Book1 values(1,'History',101,500)
insert into Book1 values(2,'Math',102,400)
insert into Book1 values(3,'Marathi',103,500)
insert into Book1 values(4,'Science',104,600)
insert into Book1 values(5,'Hindi',105,300)




--->creating author table
create table Author
(
authorid int,
authorname varchar(10) not null,
phoneno numeric(10,2) not null,
email varchar(20) not null,
address1 varchar(30) not null,
city varchar(10)not null
)

sp_help Author

alter table Author add constraint fk_Author1 foreign key(authorid) references Book1(authorid)

insert into Author values(101,'Jayesh',92246890,'jayesh@gmail.com','Rahul nagar','Panvel')
insert into Author values(102,'Gaurav',93276891,'gaurav@gmail.com','Ganesh nagar','Mumbai')
insert into Author values(103,'Pratik',90046887,'pratik@gmail.com','Karve nagar','Pune')
insert into Author values(104,'Pravin',92546890,'pravin@gmail.com','Station road','Dhule')
insert into Author values(105,'Yash',90243899,'yash@gmail.com','Vishnu nagar','Mumbai')


----



----> Creating Award table
create table Award
(
awardid int not null,
awardtypeid int primary key,
authorid int not null,
bookid int not null,
year1 numeric(10,2) not null
)

sp_help Award 

insert into Award values(111,201,101,1,2015)
insert into Award values(112,202,102,2,2017)
insert into Award values(113,203,103,3,2019)
insert into Award values(114,204,104,1,2016)
insert into Award values(115,205,105,2,2015)


----> creating Awardmaster table
create table Awardmaster
(
awardtypeid int,
awardname varchar(20) not null,
awardprice numeric(20,2) not null
)

sp_help Awardmaster

alter table Awardmaster add constraint fk_awdmaster1 foreign key(awardtypeid) references Award(awardtypeid)

insert into Awardmaster values(201,'Best book',20000)
insert into Awardmaster values(202,'National book award',50000)
insert into Awardmaster values(203,'Best critics book',50000)
insert into Awardmaster values(204,'Book Browse',40000)
insert into Awardmaster values(205,'Major book award',60000)




select * from Book1
select * from author
select * from award
select * from Awardmaster

----> find the book name which is return by author jayesh
select bookname from Book1 where authorid=
(
select authorid from Author where authorname = 'Jayesh'
)

----> find the number of award for each author
select COUNT(awardid) from Award where awardtypeid=
(
select awardtypeid from Award where 

----> find the award name for the book science
select authorid from Author where authorid=
(
select 

----> find the all author name who got an award 
----> find the year wise author count 
----> find the author name who wrote only one book
----> find the book name which has maximum price

select 
