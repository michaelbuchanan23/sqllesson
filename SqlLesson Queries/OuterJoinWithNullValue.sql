select *
from [order] o
left join customer c
	on o.CustomerID = c.Id;

select count(o.CustomerId)
from [order] o
left join customer c
	on o.CustomerID = c.Id;

select count(o.Amount)
from [order] o
left join customer c
	on o.CustomerID = c.Id;