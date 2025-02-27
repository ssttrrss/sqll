create table Movies
(
Movieid int not null,
moviename varchar(30) not null,
releaseyear numeric(10,2) not null,
boxofficecollection numeric(20,2) not null
)

sp_help Movies

alter table Movies add constraint pk_movie1 primary key(Movieid)
alter table Movies drop pk_movie1
alter table Movies add Moviesid int 
alter table Movies alter column Moviesid int not null
alter table Movies add constraint pk_movies1 primary key(Moviesid)


--->creating roles table

create table Roles
(
rollid int primary key,
rollname varchar(20) not null
)

sp_help Roles



---> creating celebrity table

create table Celebrity
(
celebrityid int primary key,
celebrityname varchar(25) not null,
birthdate numeric(10,2) not null,
phoneno numeric(20,2) not null,
email varchar(25)not null
)

sp_help 


---->creating Bollywood data type

create table Bollywooddata
(
Bollywooddataid int not null,
celebrityid int,
movieid int,
rollid int not null
)

sp_help Bollywooddata


alter table Bollywooddata add constraint  fk_bolly1 foreign key(celebrityid) references Celebrity(celebrityid)
alter table Bollywooddata add constraint fk_bolly2 foreign key(moviesid) references Movies(moviesid)
