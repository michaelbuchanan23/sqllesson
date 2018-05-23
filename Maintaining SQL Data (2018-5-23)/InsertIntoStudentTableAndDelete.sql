/*
insert into student
	(Firstname, Lastname, IsVeteran, FavColor, FavNumber)
values
	('Lisa', 'Slutsky', 0, 'Red', 1),
	('Kim', 'Peace', 0, 'Yellow', 2),
	('Denise', 'Bartik', 0, 'Orange', 3);

delete from student where id > 1;
delete from student where (firstname = 'Lisa' and lastname = 'Slutsky') or (firstname = 'Kim' and lastname = 'Peace') or (firstname = 'Denise' and lastname = 'Bartik');
delete from student where lastname in ('Slutsky', 'Peace', 'Bartik');
*/
select * from student;