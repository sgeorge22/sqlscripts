create or alter procedure AddProduct
	@partnbr varchar(30) = null,
	@name varchar(30) = null,
	@price decimal(6,2) = null,
	@unit varchar(10) null,
	@photopath varchar(255) = null,
	@vendorname varchar(30) = null

as 
begin
	if @vendorname = null
		begin
		print 'Vendor name required!'
		return -1;
	end;
Declare @vendorid int = 0; 
select top 1 @vendorid = Id from Vendors where name = @vendorname;


insert into Products (PartNbr, Name, Price, unit, PhotoPath, VendorId)
values (@partnbr, @name, @price, @unit, @photopath, @vendorid)
	if @@rowcount <> 1
	begin
		print 'ERROR: Insert failed';
		return -1;
		end;
		return 0;
end;
go
exec AddProduct '4456', 'Samsung TV', '850.99', 'each', null, 'Target'
Select * from Products