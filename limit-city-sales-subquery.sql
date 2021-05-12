--Limit by what cities you want to view with a subquey
-- Distinct will come after SELECT and will get rid of repeating info in the column selected"

select *
	from customers
	where city in (Select distinct city	
					from customers 
					where city like 'Cin%' or city like 'Col%')
