select customer.Name,
	customer.City,
	customer.State,
	concat('$',sum([order].Amount)) as 'Total Sales',
	avg([order].Amount) as 'Average Sale',
	count([order].Amount) as '# of Orders'
from [order] 
join customer 
	on [order].customerid = customer.id
group by customer.name, customer.City, customer.State
having sum([order].Amount) >= 1000
order by sum([order].Amount) desc
/*
can't have any columns in the list that do not have a correspoding "group by" when using a sum
when grouping data you must either group by or be aggregated or errors will be returned
"having" works just like where but is used on aggregated data
*/