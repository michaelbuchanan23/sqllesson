declare @StateCode nvarchar(2);

set @StateCode = 'OH';

declare @op1 int;
declare @op2 int;

if @StateCode = 'OH'
	BEGIN
		set @op1 = 1000;
		set @op2 = 500;
	END
ELSE
	if @statecode = 'KY'
		BEGIN
			set @op1 = 900;
			set @op2 = 400;
		END
	ELSE
		if @StateCode = 'IN'
			BEGIN
				set @op1 = 950;
				set @op2 = 400;
			END
		
select * from [order] o
	join customer c on o.CustomerId = c.Id
	where c.State = @StateCode and 
	o.Amount > @op2 and o.Amount < @op1;