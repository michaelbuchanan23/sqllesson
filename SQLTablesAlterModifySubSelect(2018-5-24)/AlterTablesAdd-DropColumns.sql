--drop table test
/*
create table test
(
	id int not null primary key identity(1,1),
	name nvarchar(30) not null
);
*/

/*
insert into test
	(name, zip)
values
	('Greg', '45040');
*/

/*
--adding new column to table
alter table test
	add zip nvarchar(5) not null;
*/

/*
--add not null city to the table which we will later modify to allowing null
alter table test
	add city nvarchar(30);
*/

--update test set city = 'Mason' where zip = '45040';

/*
--altering city column in test table back to null
alter table test
	alter column city nvarchar(30) not null;
*/

/*
--drops the column for zip
alter table test
	drop column zip;
*/

select * from test;