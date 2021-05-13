--Joining tables and using where to display selected info for your product

select c.name, o.Date, o.Description, ol.Product, ol.Description, ol.Quantity, ol.Price,
				ol.Quantity * ol.Price 'Line Total'
	from Customers c
		join orders o on o.CustomerId = c.Id
		join OrderLines ol on ol.OrdersId = o.Id
		
		where c.name like 'George%';