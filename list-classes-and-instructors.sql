select c.Id, code, subject, section, CONCAT(firstname, ' ', lastname) 'Name'
	from Class c
	join instructor i
		on c.instructorid = i.id
	where section >=300 and section <400
	order by section; 
