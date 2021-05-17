Create or Alter procedure FindUserByUsernameAndPassword
@username varchar(30) = null,
@password varchar(30) = null

--Above is creating a procedure that you will use to look up by username and password

as
Begin 
	if @username = '' OR @password = ''
	begin
		Print '@Username and @Password are required!' 
		Return
	end;
	If @password <> '' --Boolean statement that can run if pw is entered or not. If the statement is true will run the first query. If false, will run the second. 
Begin
	Select * from Users
		where username = @username and Password = @password; --This query is joining the username and password to the procedure 
End
	else 
	begin
	Select * 
	From Users
		where Username = @username;
	end
go
Exec FindUserByUsernameAndPassword '', '' --Will allow you to look for a username and password by knowing both without searching for them