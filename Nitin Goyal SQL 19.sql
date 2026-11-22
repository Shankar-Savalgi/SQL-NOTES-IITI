use tesla
--IIF()

select * from employee

select *, iif( salary >=60000, '30% tax', '10% tax') as tax_slab from employee

select *, iif( salary >=60000, '30% tax', '10% tax') as tax_slab from employee ORDER BY SALARY 

select *, iif( salary >=60000, '30% tax', '10% tax') as tax_slab from employee ORDER BY SALARY DESC

select *, iif(age > 23, 'Management', 'Engineering') as design from employee order by age

select *, iif(age < 24, 'Intern', iif(age < 27, 'Software Engineer', iif(age < 31, 'Senior Software Engineer',
iif(age < 38, 'Tech Lead', iif(age < 44, 'Team Lead', iif(age < 48, 'Senior Manager', 
'Vice President')))))) as Designation from employee

select *, iif(age < 24, 'Intern', iif(age < 27, 'Software Engineer', iif(age < 31, 'Senior Software Engineer',
iif(age < 38, 'Tech Lead', iif(age < 44, 'Team Lead', iif(age < 48, 'Senior Manager', 
'Vice President')))))) as Designation from employee order by age


select *, iif(age < 24, 'Intern', iif(age < 27, 'Software Engineer', iif(age < 31, 'Senior Software Engineer',
iif(age < 38, 'Tech Lead', iif(age < 44, 'Team Lead', iif(age < 48, 'Senior Manager', 
'Vice President')))))) as Designation into empde from employee 

select * from empde
--**********

--Floor and ceiling

select floor(10.2)
select floor(10.9)
select floor(29.4)
select floor(-5.4) --floor is down so lower integer

select ceiling(10.2)
select ceiling(10.9)
select ceiling(29.4)
select ceiling(-5.4) --Cieling is up so it will give upper integer

--Lead and lag()

select name, lead(name) over (order by name) as Lead_quo from employee

select name, lag(name) over (order by name) as Lag_quo from employee

select top(5) name, lag(name) over (order by name) as Lag_quo from employee

select name, lead(name) over (order by name) as Lead_quo, lag(name) over (order by name) as Lag_quo from employee