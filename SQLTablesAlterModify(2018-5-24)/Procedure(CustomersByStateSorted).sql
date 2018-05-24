--Customers by state sorted
--create then alter a procedure that paramater: State, List customers in state, sorted by city
/*
alter procedure CustomersByStateSorted
	@state nvarchar(2) = 'OH'
as
BEGIN
	select * from customer where state = @state order by city;
END
go
*/
exec CustomersByStateSorted @state = 'KY';
go
select * from customer;