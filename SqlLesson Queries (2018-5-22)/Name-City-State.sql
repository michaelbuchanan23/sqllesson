select Name as 'Customer', concat(City, ', ', State) as 'City/State' from customer where state = 'OH' or state = 'IN';
select Name as 'Customer', concat(City, ', ', State) as 'City/State', creditlimit as 'Credit Limit' from customer where not(creditlimit >= 250000 and creditlimit <=500000 and state = 'KY');
/*Note that line 4 and 5 are the same just written differently(i.e., "where not(state='OH' or state = 'IN') is equal to where not(state = 'OH') and not(state = 'IN')*/
select Name as 'Customer', concat(City, ', ', State) as 'City/State', creditlimit as 'Credit Limit' from customer where not(state = 'OH' or state = 'IN');
select Name as 'Customer', concat(City, ', ', State) as 'City/State', creditlimit as 'Credit Limit' from customer where not(state = 'OH') and not(state = 'IN');
select Name as 'Customer', concat(City, ', ', State) as 'City/State', creditlimit as 'Credit Limit' from customer where creditlimit > 250000 order by state desc, name;