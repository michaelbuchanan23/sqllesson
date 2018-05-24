use master;
go
drop database if exists prssql;
go
create database prssql;
go
use prssql;
go

create table [User]	
(
	Id int not null identity(1,1) primary key,
	Username nvarchar(30) not null , --we want this to be unique
	Password nvarchar (30) not null, --case sensitive which will require a function down the line
	Firstname nvarchar (30) not null,
	Lastname nvarchar (30) not null,
	Phone nvarchar (12) not null,
	Email nvarchar (255) not null,
	IsReviewer bit not null, --security level affecting what user can do
	IsAdmin bit not null, --security level affecting what user can do
	Active bit not null, --disallows user from logging in even if all other information is in the table
);