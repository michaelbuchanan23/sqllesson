select c.Name,
	concat(c.City, ', ',c.State) as 'Address',
	c.IsCorpAcct as 'Corp?',
	format(c.CreditLimit, 'C') as 'Credit Limit', 
	format (o.Amount, 'C') as 'Amount',
	format(o.Date, 'D') as 'Date',
	c.Active
from customer c join [order] o
on o.customerid = c.id
order by o.Amount desc;