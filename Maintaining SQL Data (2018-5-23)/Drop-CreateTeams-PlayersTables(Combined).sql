--drop players first because it has connection with Teams via foreign -> primary key
drop table Players;
drop table Teams;

create table Teams
(
	Id int not null identity(1,1) primary key,
	Name nvarchar(50) not null,
	City nvarchar(25) not null,
	State nvarchar(2) not null,
	WonSuperBowl bit not null default 0,
	YearsInExistence int not null default 0,
	Sport nvarchar(30) not null default 'Football'
);


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

go

--insert into customer
--	(Name, City, State, IsCorpAcct, CreditLimit, Active)
--values
--	('Earth LLC', 'New York', 'NY', 1, 10000000, 1);

insert into Teams
	(Name, City, State, YearsInExistence)
values
	('Bengals', 'Cincinnati', 'OH', 50),
	('Browns', 'Clevland', 'OH', 44);

insert into Players
	(TeamsId, FirstName, Lastname, Position, Number, YearsInSport, Salary)
values
	(1, 'Andy', 'Dalton', 'QB', '14', 8, 15000000),
	(1, 'AJ', 'Green', 'WR', '18', 8, 25000000),
	(1, 'Gino', 'Atkins', 'DL', '97', 7, 10000000),
	(2, 'Bad', 'Quarterback', 'QB', '1', 1, 1);

	select * from Teams;
	select * from Players;