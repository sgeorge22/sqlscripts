CREATE or ALTER PROCEDURE Fullname
	@firstname varchar(30),
	@lastname varchar(30)

as 
BEGIN
declare @fn varchar(60);
	select concat(@firstname, ' ', @lastname) 'Fullname';

END;
go
declare @fullname varchar(60);
exec @fullname = Fullname @firstname = 'Noah', @lastname = 'Phence';

Print @fullname; 
