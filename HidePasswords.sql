create or alter procedure SelectAllUserSafe

as
begin
	Select Id, Username, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin	
		From Users;

		End
		go
		Exec SelectAllUserSafe
	--Use to hid info like passwords