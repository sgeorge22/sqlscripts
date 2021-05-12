/*Display states and number of students with SAT <1000 in each */

SELECT statecode, Count(*) 'Student Count'
	from Student 
	where SAT <1000
	group by statecode
	having not count(*) =1
	order by count(*) desc;