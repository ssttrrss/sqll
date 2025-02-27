create table FBUsers
(
userid int primary key,
username varchar(20) not null,
email varchar(25) not null,
phoneno numeric(20,2),
totalposts numeric(10,2)
)

sp_help FBUsers

create table Post
(
postid int not null,
userid int,
constraint fk_Post1 foreign key(userid) references FBUsers(userid),
postContent varchar(25) not null,
postimage varchar(25) not null,
postvideo varchar(30)not null,
)

sp_help Post

create table Friendship
(
userid int,
constraint fk_Fd1 foreign key(userid) references FBUSers(userid),
friendid int not null,
friendshipstatuscode numeric(20,10)
)

sp_help Friendship