select avg(amount) from [order];

--subselect to obtain order amounts greater than the average amount
select * from [order] where amount > (select avg(amount) from [order]);