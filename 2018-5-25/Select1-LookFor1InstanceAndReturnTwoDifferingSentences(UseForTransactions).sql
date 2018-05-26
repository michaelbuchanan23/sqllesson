--use something like this for transactions
if EXISTS (select 1 from customer where state = 'KY')
	print 'KY customers have bought something'
else
	print 'No sales in KY'
	
/*
--the below is the wrong code as it generates two sentences saying "No sales in KY" and professionals use the above query because it is more efficient
if (select count(*) from customer where state = 'XX') > 0
	print 'KY customers have bought something'
else
	print 'No sales in KY'
*/

/*
select top 5 * from [order]
	order by amount desc;

select top 5 1 from [order]
	order by amount desc;
*/