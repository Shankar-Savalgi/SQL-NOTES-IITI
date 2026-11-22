use tesla
--Stored Procedures

select * from employee

create procedure Hike
as
select *, (salary * 1.2) as New_salary from Employee

exec hike

/* Create a procedure for salary_slip of all the employees from employee, project and company table */
create procedure salary_slip
as
select e.id, e.name, (e.salary * 0.3) as HRA, (e.salary * 0.4) as Special_allowance,
(e.age * 34) as Professional_tax, (p.postal * 0.3) as Income_tax, (c.count * 12) as Bonus,
(p.postal * 0.2) as LTA, (c.count * 5) as Shift_allowence from Employee e inner join Project p on e.id = p.pid inner join
company c on p.pid = c.CID

exec salary_slip

sp_helptext 'salary_slip'

alter procedure salary_slip
as
select e.id, e.name, (e.salary * 0.3) as HRA, (e.salary * 0.4) as Special_allowance,
(e.age * 40) as Professional_tax, (p.postal * 0.3) as Income_tax, (c.count * 12) as Bonus,
(p.postal * 0.2) as LTA, (c.count * 5) as Shift_allowence from Employee e inner join Project p on e.id = p.pid inner join
company c on p.pid = c.CID

exec salary_slip

drop procedure salary_slip

drop procedure Hike

--Views
select * from Employee

create view V_male
as
select * from employee where gender = 'male'

select * from V_male

select * from Employee

insert into V_male values (22, 'James', 39, 'Male', 55000, 'Accounts', 'Brazilia', 'Brazil')

select * from V_male

select * from Employee

insert into V_male values (23, 'Spoorthi', 18, 'Female', 60000, 'HR', 'Kalaburagi', 'India')

select * from V_male

select * from Employee

create view Pemp
as
select id, name, department, country from Employee

select * from Pemp

insert into Pemp values(24, 'Radha', 'IT', 'India')

select * from Employee

select * from Pemp