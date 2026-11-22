--insert multiple records

use Tesla

insert into employee values (2, 'Anjali', 24, 'Female', 50000, 'HR', 'Mumbai'),
(3, 'Raj', 32, 'Male', 45000, 'Accounts', 'Pune'),
(4, 'Rajni', 44, 'Female', 58000,' Marketing', 'Chennai'),
(5, 'Nandini', 33, 'Female', 78000, 'IT', 'Bangalore'),
(6, 'Komal', 24, 'Female', 60000, 'Accounts', 'Dehradun'),
(7, 'Ashish', 22, 'Male', 100000, 'IT', 'Jaipur'),
(8, 'rohit', 25, 'Male', 150000, 'Accounts', 'Surat'),
(9, 'Harsha', 18, 'male', 185000, 'IT', 'Bangalore')

select * from employee

insert into employee (id, name, gender, salary) values (10, 'Nilesh', 'Male', 69000),
(11, 'Hitesh', 'Male', 77000), (12, 'Sakshi', 'Female', 88000)

select * from employee

insert into employee (id, name) values (13, 'Vanshika')
select * from employee


--Select
select id, name, age, gender, salary, from employee

select id, city, name, department, age from employee

select name from employee

--where
select * from employee

select * from employee where gender = 'Male'

select * from employee where gender = 'Female'

select * from employee where department = 'IT'

select * from employee where name = 'shankar'

select * from employee where age = 32

select * from employee 

select * from employee where age is null

select * from employee where gender is null