--drop procedure QueryOrders;

/*
create procedure QueryOrders
as
BEGIN
	select * from [order];
END
*/

/*
alter procedure QueryOrders
--you can pass values into the @minamt when done as below but not if it is after "BEGIN"
	@minamt int = 500,
	@maxamt int = 1000
as
BEGIN
--	declare @minamt int;
--	set @minamt = 500;
	select * from [order] where Amount > @minamt and Amount < @maxamt;
END
go
*/

--the "750, 845" below alters the @minamt and @maxamt variables, respectively,  in the procedure QueryOrders above
exec QueryOrders 750, 845;
go
select * from [order] order by amount desc;