create table Custmoers
(
custmoerid int not null,
city varchar(20),
country varchar(20),
postalcode numeric(10,2)
)


sp_help Custmoers

insert into Custmoers values (101,'Berlin','Germany',121110)
insert into Custmoers values (102,'London','UK',540012)
insert into Custmoers values (103,'Saudi','Dubai',880089)
insert into Custmoers values (104,'Mumbai','India',510003)
insert into Custmoers values (105,'Delhi','India',null)
insert into Custmoers values (106,'New york','US',410032)
insert into Custmoers values (107,'Berlin','Germany',121110)
insert into Custmoers values (108,'Paris','Norway',121110)
insert into Custmoers values (109,'Sda','France',880449)




select* from Custmoers


---->Write A satement that will slect the city column from the customers table

select city from Custmoers

----->Select all the different values from the country column in the customers table

select Distinct country from Custmoers

----> select all the records when the city column has the value "London"

select * from Custmoers where city = 'London'

---> use the NOT keyword to slect all the records where city is not berlin

select * from Custmoers where not city = 'Berlin'

----->select all the records where the customerid column has the value 23
select * from Custmoers where custmoerid=23

----->select all the records where the city column has the value 'Berlin' and the postalcode column has the value 121110

select * from Custmoers where city='Berlin' and postalcode=121110

----->select all the records where the city column had the value berlin or london
select * from Custmoers where city='Berlin' or   city= 'London'

-----> select all the records from the custmoer table ,sort the result alphabetically by the column city

select * from Custmoers
order by city

----->select all the records from the custmoer table ,sort the result alphabetically by the column city and then column country

select * from Custmoers
order by country 

select * from Custmoers
order by city


------>select all the records from the table where postalcode column is empty

select*from Custmoers where postalcode is null

------>select all the records from the table where postalcode column is not empty
select*from Custmoers where postalcode is not null

------>set the value of the city column to'Oslo' but only the ones where the country column has the value norway

update Custmoers set city='Oslo' where country='Norway'

------>delete all the records from the custmoers table where the country value is norway

delete Custmoers where country='Norway'

---->select all the records where the value of the city column starts with the letter 'a'

select * from Custmoers where city like 'a%'

---->select all the records where the value of the city column ends with the letter 'a'

select * from Custmoers where city like '%a'

---->select all the records where the value of the city contains the letter 'a'
select * from Custmoers where city like '%a%'

---->select all the records where the value of the city column start with letter a and ends letter with b

select * from Custmoers where city like '%[a-b]%'

---->select all the records where the value of the city column not start with the letter 'a'

select * from Custmoers where city not like 'a%'

---->select all the records where the second letter of the city is an 'a'
select * from Custmoers where city  like '_a%'

---->---->select all the records where the first letter of the city is npt like  a,c,s

select * from Custmoers where city   like '[acs]%'

---->---->select all the records where the first letter of the city starts with anything a to an f
select * from Custmoers where city not  like '[a-f]%'

---->select all the records where the first letter of the city is not an a,c,f

select * from Custmoers where city not like '[acf]%'

----->use in opertaor to select all the records where the country is either norway or france

select * from Custmoers where country in ('Norway','France')

----->use in opertaor to select all the records where the country is either norway or france

select * from Custmoers where  country not in ('Norway','France')

----->when display 




create table Product
(
pid int,
pname varchar(250),
price numeric(10,2)
)

sp_help Product

insert into Product values(201,'XYZ'

-----> use the min function to select the records with the smallest value of price column