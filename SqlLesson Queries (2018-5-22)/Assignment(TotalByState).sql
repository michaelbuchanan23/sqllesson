select customer.State,
	sum([order].Amount) as 'Total Sales'
from [order] 
join customer 
	on [order].customerid = customer.id
group by customer.State
having sum([order].Amount) >= 1000
order by sum([order].Amount) desc;