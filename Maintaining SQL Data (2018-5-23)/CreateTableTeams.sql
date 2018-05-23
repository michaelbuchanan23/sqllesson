create table Teams
(
	Id int not null identity(1,1) primary key,
	Name nvarchar(50) not null,
	City nvarchar(25) not null,
	State nvarchar(2) not null,
	WonSuperBowl bit not null default 0,
	YearsInExistence int not null default 0
);