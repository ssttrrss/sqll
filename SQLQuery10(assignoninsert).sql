create table Employe1
(
empid int primary key,
empname varchar(25),
salary numeric(10,2),
deptname varchar(20),
address1 varchar(35),
designation varchar(10) default 'Developer',
gender varchar(5)
)

insert Into Employe1 (empid,empname,salary,designation,gender) values (100,'Jayesh',50000,'Tester','M')
insert Into Employe1 (empid,empname,salary,designation,gender) values (102,'Rahul',48000,'DB dev','M')
insert Into Employe1 (empid,empname,salary,designation,gender) values (103,'Omkar',19000,'Java dev','M')
insert Into Employe1 (empid,empname,salary,designation,gender) values (104,'Vinit',52000,'.net dev','M')
insert Into Employe1 (empid,empname,salary,designation,gender) values (105,'Divyank',55000,'sap','M')
insert Into Employe1 (empid,empname,salary,designation,gender) values (106,'Gamesh',47000,'Java dev','M')
insert Into Employe1 (empid,empname,salary,designation,gender) values (107,'Ritesh',48000,'Java dev','M')




sp_help Employe1


----> find out the gender wise emp count
select gender, count(*) from Employe1 group by gender

---->find out the designation in which more than 2 are working
select designation, COUNT(empid) from Employe1 where designation = 'Developer' group by designation

---->find out dept wise avg salary
select deptname, AVG(Salary) from Employe1 group by deptname

----> find the dept name where maximum emp are working
select deptname, max(*) from Employe1 group by deptname

