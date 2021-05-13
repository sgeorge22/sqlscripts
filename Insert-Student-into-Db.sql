--Inserting a new student into the database

select * from Student s
	join major m on s.MajorId = m.Id
	order by Firstname

Insert into Student
	(Firstname, Lastname, StateCode, SAT, GPA, MajorId)
		values ('Noah', 'Phense', 'GA', '1235', '3.51', (Select id from Major where Code = 'Acct'))


Update Student set 
	gpa = 3.51,
	MajorId = (Select id from Major where Code = 'acct')
	where Firstname = 'Noah' and lastname = 'Phense'


Delete from Student
	where Firstname = 'Noah' and lastname = 'Phense'