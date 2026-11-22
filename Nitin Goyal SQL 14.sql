use tesla
--System function
--Len

select len('Shankar')

select len('this is sql class')

select len('this is month of december 2 and my sweetheart birthday')

select name, len(name) from employee

select name, len(name), salary, len(salary), department, len(department) from employee

select * from emp_info

select information, len(information) from emp_info

select * from employee where len(name) = 6

--replace
select replace('IPLWINNERISCHENNAI', 'ChENNAI', 'KKR')

SELECT replace('This is python class', 'Python', 'SQL')

select replace('Capital of India is Delhi', 'Delhi', 'New Delhi')

select *, replace(city, 'Delhi', 'New Delhi') as Updated_city from employee

select * from employee

--Substring

select substring('This is SQL class', 1, 4)

select substring('This is SQL class', 9, 3)

select substring('This is year 2025', 9, 4)

select substring('This is Year 2025', 14, 4)

select substring('the capital of tamil nadu is Chennai',30,7)

select len('the capital of tamil nadu is ')

select * from employee
select name from employee
select name, substring(name, 1, 2) from employee
select name, upper(substring(name,1 , 2)) from employee

--********************************
--Generate the default username and passwored using below format

/* Username(First three letters of name in capital + first two letter of gender in lower +
first letter of department in capital + first three lettter of country in lower)
Psaaword (First two letters of name in lower + age + first two letters of department in capital +
first four letters of city in lower) */

select id, name, concat(upper(substring(name, 1, 3)), lower(substring(gender, 1, 2)),
upper(substring(department, 1,1)), lower(substring(country, 1, 3))) as Username,
Concat(lower(substring(name, 1, 2)), age, upper(substring(department, 1, 2)),
lower(substring(city, 1, 4))) as Password from employee

