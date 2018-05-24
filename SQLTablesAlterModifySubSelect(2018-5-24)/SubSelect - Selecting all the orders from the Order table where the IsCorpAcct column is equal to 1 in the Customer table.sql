
--Selecting all the orders from the Order table where the IsCorpAcct column is equal to 1 in the Customer table
select * from [order] where CustomerId in (select id from customer where IsCorpAcct = 1);

select * from customer;