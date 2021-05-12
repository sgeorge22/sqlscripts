--Display orders, orderlines, and customer but don't display any PK or FK

Select c.Name 'Customer', o.Description 'Order', ol.Description 'Product', ol.Quantity, 
		ol.Price, ol.Quantity * ol.price 'Line Total'
	from orders o
	join orderlines ol 
		on o.id = ol.OrdersId
	join customers c 
		on o.CustomerId = c.id
	 Order by c.Name