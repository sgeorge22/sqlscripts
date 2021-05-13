-- Transactions in SQL example
Begin Transaction;

Insert major (Code, Description, minsat) values ('UWBW', 'Basket Weaving', 400);

rollback;
select * from major