select 	avg([order].Amount) as 'Average', min([order].Amount) as 'Min', max ([order].Amount) as 'Max'
from [order];