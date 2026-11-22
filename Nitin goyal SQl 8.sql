use Tesla

--Order by

select * from employee order by name

select * from employee order by name desc

select * from employee order by age

select * from employee order by age desc

select * from employee order by department 

select * from employee order by department, name

select * from employee order by department desc, name

select * from employee order by department desc, name desc

--ALIAS

select * from employee 

select id, name, age, gender, salary, department from employee

select id as Roll_number, name as Firstname, age, gender, salary as wages, department as Domain from employee

select * from employee

--********************************

--column name datatype change

select * from employee

sp_help 'employee'

alter table employee alter column age varchar(255)

sp_help 'employee'

alter table employee alter column age int

sp_help 'employee'

--*****************************

select * from employee

--sum

select salary from employee 

select sum(salary) from employee

select sum(salary) as Total_salary from employee

--Group by

select department, sum(salary) from employee group by department

select department, sum(salary) as Total_salary from employee group by department

