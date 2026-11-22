--Operators and clauses

use Tesla


select * from employee

select department, gender, sum(salary) as Total_sal from employee group by department, gender

--Having

select department, gender, sum(salary) as Total_sal from employee group by department, gender having gender ='Male'

select department, gender, sum(salary) as Total_sal from employee group by department, gender having sum(salary) > 120000

select department, gender, sum(salary) as Total_sal from employee group by department, gender having department in ('IT', 'Hr')

select department, gender, sum(salary) as Total_sal from employee group by department, gender having department in ('IT', 'Hr') and gender = 'male'

--Order of using all the clauses

select department, gender, sum(salary) as Total_Salary from employee where gender = 'Male' group by department, gender having department in ('IT', 'HR') order by department desc

--*************************************************

--Constraints

select * from employee

insert into employee (name, age, gender, salary, department) values
('Ravi', 52, 'Male', 125000, 'Marketing')

sp_help 'employee'

--NOT NULL

alter table employee alter column id int not null

select * from employee 

update employee set id = 16 where name = 'Ravi'

alter table employee alter column id int not null

sp_help 'employee'

insert into employee (name, age, gender, salary) values ('Shreya', 27, 'Female', 100000)

update employee set id = null where name = 'shankar'

alter table employee alter column id int null

sp_help 'employee'
