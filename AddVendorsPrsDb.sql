create or alter procedure AddVendors
	
	@code varchar(10),
	@name varchar(40),
	@address varchar(255),
	@city varchar(50),
	@state varchar(2),
	@zip varchar(5),
	@phone varchar(12),
	@email varchar(255) = null
as
begin
	if @code = '' or @Name = '' or @address = '' or @city = '' or @state = '' or @zip = '' or @phone = ''
		begin
		print 'Required data not provided!'
		return -1
		end;
	if exists (select 1 from Vendors where code = @code)
		begin
		print 'Vendor code already in use!'
		return -2;
		end;
	insert into Vendors (Code, Name, Address, City, State, Zip, Phone, Email)
	values (@code, @name, @address, @city, @state, @zip, @phone, @email)
	return 0;
end;

go 
exec AddVendors '0812', 'Target', '1818 Brandon Blvd', 'Brandon', 'FL', '33511', '813-999-5555', 'target@target.com';
exec AddVendors '1340', 'Ulta', '1356 Causeway Blvd', 'Riverview', 'FL', '33578', '813-222-3333', 'ulta@ulta.com'
exec AddVendors '1250', 'Aldi', '145 301 Blvd', 'Tampa', 'FL', '33602', '813-222-7777', 'aldi@aldi.com'
exec AddVendors '3456', 'UltaCo', '1356 Causeway Blvd', 'Riverview', 'FL', '33578', '813-555-9999', ''

Select * from Vendors

