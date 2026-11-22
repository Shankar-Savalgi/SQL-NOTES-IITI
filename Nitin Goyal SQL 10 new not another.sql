use tesla
--CHECK


insert into employee values(17, 'John', 7, 'Male', 60000, 'HR', 'Oslo', 'Norway')

alter table employee add constraint C_age Check (age between 22 and 60) 

update employee set age = 27 where name = 'John'

alter table employee add constraint C_age Check (age between 22 and 60) 

sp_help 'employee'

insert into employee values(18, 'mark', 29, 'Male', 65000, 'IT', 'seattle', 'USA')

insert into employee values(18, 'Mark', 9, 'Male', 65000, 'IT', 'Seattle', 'USA') --error will come

update employee set age = 18 where name = 'Aditya' --Error will come okay

alter table employee drop constraint C_age

sp_help 'employee'
--**********************************

--Default

select * from employee

alter table employee add constraint Def_c default 'India' for country

sp_help 'employee'

insert into employee (id, name, age, gender, salary) values (19, 'Shivam', 45, 'male', 540000)

select * from employee

insert into employee values (20, 'jhanvi', 25, 'female', 40000, 'Accounts', 'Pokhra', 'nepal')

alter table employee drop constraint def_c

sp_help 'employee'

--**********************************

--CREATE CONSTRAINTS WHILE CREATING TABLE

create table Student
(SID int not null, Name varchar(255), Marks int, Class int not null, sports varchar(255), constraint ch_spor check (sports in ('Baseball', 'Hockey', 'Cricket', 'Basketball')))

select * from student

sp_help 'student'

insert into student values (1,'John', 96, 7, 'Cricket'),
(2, 'Mark', 87, 9, 'Hockey'), (3, 'Sherry', 77, 11, 'Baseball')

insert into student values (4, 'Andrea', 87, 8, 'batminton')

insert into student values (4, 'Andrea', 87, 8, 'Cricket')

select * from student