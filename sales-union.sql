-- Example of a Union statement to combine result set

SELECT 'A' as 'ABC',* 
	From Student
	where sat > 1200
	union
SELECT 'B' as 'ABC',* 
	From Student
	where sat <= 1200 and sat >1000
	union
SELECT 'C' as 'ABC',* 
	From Student
	where sat <=1000
