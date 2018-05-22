select c.Name, o.Amount, 'A' as 'ABC'
from [order] o
left join customer c
	on o.CustomerID = c.Id
where o.Amount > 750
union
select c.Name, o.Amount, 'B' as 'ABC'
from [order] o
left join customer c
	on o.CustomerID = c.Id
where o.Amount > 250 and o.Amount <= 750
union
select c.Name, o.Amount, 'C' as 'ABC'
from [order] o
left join customer c
	on o.CustomerID = c.Id
where o.Amount <= 250
order by o.Amount desc;