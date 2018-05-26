--declares @NumStudents variable as integer
declare @NumStudents int;

--set value of @NumStudents to 10
set @NumStudents = 10;

if (@NumStudents = 10)
	BEGIN
		print 'There are ten students'
		print 'That is a good number'
	END
else
	BEGIN
		print 'Too bad there are not 10 students'
	END

	print 'The end...';