--Create a database

create database Tesla

--connect to the database

use Tesla

--create a table 

create table Employee
(Id int, Name varchar(255), Age int, Gender Varchar(255), Salary int, Department varchar(255), city varchar(255))

insert into employee values (1,  'shankar', 18, 'male', 200000, 'AIML', 'delhi')

select * from employee