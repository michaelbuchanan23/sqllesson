/*
insert into customer
	(Name, City, State, IsCorpAcct, CreditLimit, Active)
values
	('Earth LLC', 'New York', 'NY', 1, 10000000, 1);

insert into [order]
	(Date, Amount, CustomerId)
values
	('2018-05-23', 5000, 8),
	('2018-05-23', 100000, 8);

update [order]
set amount = amount * 2
where CustomerId = 8

delete from [order]
where customerid = 8 and amount = 10000;
--OR See below to delete where you are actually selecting the minimum amount
select * from [orders] o1 where o1.amount = 
	(select min(o.amount) from [orders] o where o.CustomerId = 8)

*/
select * from customer;
select * from [order];
select * from [order] where customerid = 8;