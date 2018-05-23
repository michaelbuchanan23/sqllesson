drop table Players;

create table Players
(
	Id int not null identity(1,1) primary key,
	TeamsId int foreign key references Teams(Id),
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Position nvarchar(30),
	Number nvarchar(3),
	YearsInSport int not null default 0,
	Salary decimal(10,2)
);