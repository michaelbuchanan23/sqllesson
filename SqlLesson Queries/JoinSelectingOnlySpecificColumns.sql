select customer.Name, 
	concat(customer.city, ', ', customer.state) as 'City/State', 
	[order].Amount, 
	customer.IsCorpAcct, 
	customer.CreditLimit 
from [order] 
join customer 
	on [order].customerid = customer.id
order by [order].amount desc;