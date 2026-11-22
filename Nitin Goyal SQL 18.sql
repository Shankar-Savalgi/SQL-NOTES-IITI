--SUBQUERIES
use tesla

select * from employee
select max(salary) as Highest_salary from employee 

--Find 2nd highest salary

select max(salary) from employee where salary < (select max(Salary) from employee)

select max(salary) from employee where salary < (540000)

--Find 3rd highest salary

select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from employee ))

--Find the 4th highest salary

select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from employee )))

--Find the nth highest salary

select * from employee

select top(15) salary from employee

select top(15) salary from employee order by salary desc

select distinct top(15) salary from employee order by salary desc

select min(salary) from employee where salary in
(select distinct top(15) salary from employee order by salary desc)

select min(salary) from employee where salary in
(select distinct top(2) salary from employee order by salary desc)

select min(salary) from employee where salary in
(select distinct top(1) salary from employee order by salary desc)

select min(salary) from employee where salary in
(select distinct top('N') salary from employee order by salary desc)  --Interview question

--Rank() and dense_rank()

select * from employee

select *, rank() over (order by salary desc) as Salary_rank from employee

select *, dense_rank() over (order by salary desc) as dense_sal from employee

select *, rank() over (order by salary desc) as Salary_rank, dense_rank() over (order by salary desc) as dense_sal from employee

select *, rank() over (order by department) as Dept_rank_no from employee

select *, dense_rank() over (order by department) as Dept_denserank_no from employee

select *, rank() over (order by department) as Dept_rank_no, dense_rank() over (order by department) as Dept_denserank_no from employee





