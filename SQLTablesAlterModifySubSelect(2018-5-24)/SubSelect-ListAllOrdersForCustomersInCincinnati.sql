--subselect for all orders from customers that have a city of Covington or Cincinnati
select * from [order] where CustomerId in (select id from customer where City = 'Covington' or City = 'Cincinnati');

select * from customer;
select * from [order];