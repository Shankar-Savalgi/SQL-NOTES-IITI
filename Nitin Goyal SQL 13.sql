--System functions
--Sum
use tesla
select sum(salary) from employee

select sum(salary) as Total_salary from employee

--Max

select max(salary) from employee

--Min
select min(salary) from employee

--Avg
select avg(salary) from employee 

select department, avg(salary) as Avg_sal from employee group by department

--Count

select count(*) from employee

select count(name) from employee

select count(department) from employee

select count(distinct department) from employee

select * from employee

select department, count(*) as Total_employees from employee group by department

--shankar is working in google sunder pichai asked..

select me  from employee

--Lower

select lower(name) from employee

--Upper
select upper(name) from employee

--Reverse
select reverse(name) from employee

select lower(reverse(name)) from employee

select upper(reverse(name)) from employee

select name, lower(name) as L_name, upper(name) as U_name, reverse(name) as R_name,
lower(reverse(name)) as L_R_name, Upper(reverse(name)) as U_R_name from employee 

--Concat

select * from employee

select concat(id, name,age, gender,salary,department, city) from employee


select concat(id,'  ',name,'  ',age,'  ',gender,'  ',salary,'  ',department,'  ',city) from employee

select concat(id,'  ',name,'  ',age,'  ',gender,' @ ',salary,'  ',department,' / ',city) from employee

select concat(Name, ' id is ', id, ', age is ', age, ', gender is ', gender, ', is earning Rs.', salary, ' monthly works for ', department , ' department belongs to ', city, '.') as Information from employee

select concat(Upper(Name), ' id is ', id, ', age is ', age, ', gender is ', lower(gender), ', is earning Rs.', salary, ' monthly works for ',upper (department) , ' department belongs to ', upper(city), '.') as Information from employee

select concat(Upper(Name), ' id is ', id, ', age is ', age, ', gender is ', lower(gender), ', is earning Rs.', salary, ' monthly works for ',upper (department) , ' department belongs to ', upper(city), '.') as Information into emp_info from employee

select * from emp_info