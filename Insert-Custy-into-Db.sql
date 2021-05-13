--Inserting your own customer and product into the database 

select * from customers c
	join orders o on o.CustomerId = c.Id

Insert into Customers (name, City, state, sales, active)
	values 
		('GeorgeCO, INC', 'Tampa', 'FL', 0, 1)

Insert Orders (Date, Description, CustomerId)
	values
		('2021-05-13', 'Sarah''s Order', 
			(Select Id from customers where city ='Tampa' and name like 'George%'));


Insert into OrderLines (OrdersId, Product, Description, Quantity, Price)
	values
		((Select id from orders where Description like 'sarah%'), 'Ice Cream', 'Chocolate Flavor', '30', '10')
			

		