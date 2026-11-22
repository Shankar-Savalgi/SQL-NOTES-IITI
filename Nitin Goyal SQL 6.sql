--Operators and clauses
use Tesla

select * from employee

--And

select * from employee where gender = 'male' and department = 'IT'

select * from employee where gender = 'female' and department = 'HR'

--Or

select * from employee where gender = 'male' or department = 'IT'

select * from employee where gender = 'female' or department = 'HR'

--NOT

select * from employee where gender != 'Male'

select * from employee where gender <> 'Male'

select * from employee where not gender = 'Male'

select * from employee where department != 'HR'

--Intersect 

select * from employee where gender = 'male'
INTERSECT
select * from employee where department = 'IT'


select * from employee where gender = 'Female'
Intersect 
select * from employee where department = 'HR' 


select * from employee where gender = 'female'
INTERSECT
select * from employee where department = 'HR'
Intersect
select * from employee where age = 24

--Union

select * from employee where gender = 'Female'
union 
select * from employee where department = 'HR'

--Union all

select * from employee where gender = 'Female'
union all
select * from employee where department = 'HR'

--Except (a - b)

select * from employee where gender = 'male'
except
select * from employee where department = 'IT'

select * from employee where gender = 'Female'
except
select * from employee where department = 'HR'
