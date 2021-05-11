select city, sum(sales) 'Total'
	from customers
	group by city
	having sum(sales) > 600000;