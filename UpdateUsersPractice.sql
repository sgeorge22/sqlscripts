create or alter procedure UpdateUsers
	@id int = 0,
	@username varchar(30),
	@password varchar(30),
	@firstname varchar(30),
	@lastname varchar(30),
	@phone varchar(12),
	@email varchar(255),
	@isreviewer bit,
	@isadmin bit
	as
	Begin
		If not exists (Select 1 from users where Id = @id)
		begin 
			print 'Not Found';
			return -2;
		end;
		Update Users set
			Username = @username,
			Password = @password,
			Firstname = @firstname,
			Lastname = @lastname,
			Phone = @phone,
			Email = @email,
			IsReviewer = @isreviewer,
			IsAdmin = @isadmin
			Where Id = @id;
			return 0;
		end;
	go
	Exec UpdateUsers 1, 'sa', 'sa', 'System', 'Admin', '911', null, 1, 1;

	Select * from Users

create or alter procedure DeleteUsers
	@id int = 0
	
As
Begin
Delete from users 
	where Id = @id 
	end;
	go
	exec deleteUsers '1';