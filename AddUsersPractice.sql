create or alter procedure AddUser
	@id int = 0,
	@username varchar(30) = '',
	@password varchar(30) = '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@phone varchar(12) = null,
	@email varchar(255) = null,
	@isreviewer bit = false,
	@isadmin bit = false 
as
begin 
	if @username = '' or @password = '' or @firstname = '' or @lastname = '' 
	begin
		Print 'Required data nor provided!'
		return -1
	end;
	if exists (select 1 from users where Username = @username)
	begin
		print 'Username already exists!';
		return -2;
	end;
	insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values 
	(@username, @password, @firstname, @lastname, @phone, @email, @isreviewer, @isadmin)
	Return 0;
end;
go
exec Adduser 'ss', 'ss', 'ss', 'ss';



		


	