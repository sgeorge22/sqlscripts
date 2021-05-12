-- Join all tables in the DB together, diplayed all cities but Cleveland

select o.Id 'orderId', o.date, o.Description, c.name 'Customer', 
CONCAT(c.city, ',', c.state) 'Location', ol.Product, ol.description, 
ol.Quantity, ol.Price, ol.quantity * ol.price as 'Line Total'
	from Orders o
	join customers c
		on o.customerid = c.id
	join OrderLines ol
		on o.id = ol.ordersid
	where not c.city = 'cleveland'

		