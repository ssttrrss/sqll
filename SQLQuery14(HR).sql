create table Region 
(
regionid int primary key,
regionname varchar (25)
)

insert into Region values(101, 'Nashik')
insert into Region values(102, 'Pune')
insert into Region values(103,'Mumbai')
insert into Region values(104,'Nagpur')
insert into Region values(105,'Vardha')
insert into Region values(106,'Kashi')




create table Countries
(
countryid char(2) primary key,
countryname varchar(40),
regionid int
)

insert into Countries values(11,'India',101)
insert into Countries values(12,'USA',102)
insert into Countries values(13,'Germany',103)
insert into Countries values(14,'Srilanka',104)
insert into Countries values(15,'Austrailia',105)
insert into Countries values(16,'Austia',106)




create table Locations
(
locationid int,
streetaddress varchar(25),
posalcode varchar(12),
city varchar(30),
stateprovince varchar(12),
countryid char(2)
)

insert into Locations values(1,'XYZ',101255,'Rasayani','Suiasi',11)
insert into Locations values(2,'Sgf',101277,'Panvel','Rfdcs',12)
insert into Locations values(3,'Xqj',101211,'Kalamboli','Cuefuw',13)
insert into Locations values(4,'Xnede',101222,'Khopoli','Suedd',14)
insert into Locations values(5,'Xhgde',101242,'Karjat','Sghdd',15)
insert into Locations values(6,'Xpode',107742,'Lonavala','Sgttd',16)





create table Department
(
Deptid int primary key,
deptname varchar(30),
managerid int,
locationid int
)

insert into Department values(111,'Development',777,888)
insert into Department values(111,'Development',777,878)
insert into Department values(112,'Sales',777,333)
insert into Department values(113,'Admin',777,444)
insert into Department values(114,'Testing',777,999)
insert into Department values(115,'Program',777,111)


create table Employe
(
empid int ,
firstname varchar(20),
lastname varchar(25),
email varchar(25),
phoneno varchar(20),
hiredate date,
jobid varchar(10) primary key,
salary int,
commission int,
managerid int,
deptid int
)

insert into Employe values(001,'Jayesh','Shinde','jayesh@gmail.com',878787878,'2020-1-1',123,35000,2500,777,111)
insert into Employe values(002,'Omkar','Patil','omkar@gmail.com',878007878,'2020-3-7',127,30000,2000,777,112)
insert into Employe values(003,'Suraj','Sawar','suraj@gmail.com',87878111,'2020-7-2',128,29000,1000,777,113)
insert into Employe values(004,'Rahul','Khane','Rahul@gmail.com',871478878,'2020-9-2',124,30000,2700,777,114)
insert into Employe values(005,'Pralhad','Bhalekar','pb@gmail.com',87147444,'2020-5-7',122,33000,2800,777,115)
insert into Employe values(005,'Ganesh','Patil','gp@gmail.com',87177444,'2020-3-7',121,33700,2810,777,111)



create table Job
(
jobid varchar(10),
jobtitle varchar(35),
minsalary int,
maxsalary int
)

insert into Job values(123,'Developer',30000,70000)
insert into Job values(127,'Sale',25000,45000)
insert into Job values(128,'Accountant',27000,50000)
insert into Job values(124,'Tester',24000,60000)
insert into Job values(122,'programmer',22000,65000)
insert into Job values(121,'developer',22100,65700)



---->Write a query to list the number of jobs available in the Employes table.
select MAX(jobid) as 'Number of Jobs' from Job

---->write a query to get the total salaries payable to employess
select SUM(salary) as 'Total Salary' from Employe

---->write a query to get the minimum salary from the employee table.
select MIN(salary) as 'Min salary' from Employe

---->write a query to get maximum salary of an employee working  as a programmer.
select MIN(maxsalary) as 'Min salary' from Job where jobtitle = 'programmer'

---->write a query to get the avg salary and number of employess working in the dept Development.

select AVG(salary) as 'Avg Salary' from Employe where deptid = 111