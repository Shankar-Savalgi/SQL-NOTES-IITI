--joins
use Tesla

select * from Employee
select * from Project

alter table project drop constraint for_key
alter table employee drop constraint pri_key

insert into project values (25, 'Ripple', 'Ttesting', 78782), (23, 'Parle', 'SQL', 45652),
(24, 'Poytm', 'AWS', 45652), (22, 'Remit', 'Java', 14256)

select * from project 

--Inner join

select * from Employee
select * from Project

select * from employee inner join project on employee.id = project.pid
select * from employee e inner join project p on e.id = p.pid  -- same both are same

select e.id, e.name, e.age, e.department, e.city, p.project_name, p.technology, p.postal from
employee e inner join project p on e.id = p.pid


select e.id, e.name, e.age, e.department, e.city, p.project_name, p.technology, p.postal from
employee e inner join project p on e.id = p.pid order by p.project_name


select e.id, e.name, e.age, e.department, e.city, p.project_name, p.technology, p.postal from
employee e inner join project p on e.id = p.pid where e.department = 'HR' order by p.project_name

--Full join 

select * from employee

select * from project

select * from employee e full join project p on e.id = p.pid

--Left join

select * from employee e left join project p on e.id = p.pid

--Right join

select * from employee e right join project p on e.id = p.pid

select * from employee e inner join project p on e.id = p.pid 

select p.technology, sum(e.salary) as Total_salary from employee e inner join project p
on e.id = p.pid group by p.technology
