-- Subquery in Sales DB (statement within a statement)
--List customer with sales les than the average of all the customer slaes

Select *
	From customers
	where (sales) > (Select avg(sales) from customers);