--Not Null
delete from employee where name = 'Ravi'
select * from employee

insert into employee (name, age, gender, salary, department) values
('Ravi', 52, 'Male', 125000, 'Marketing')


alter table employee alter column id int not null


update employee set id = 16 where name = 'Ravi'
select * from employee
alter table employee alter column id int not null

sp_help 'employee'

update employee set id = 1 where name = 'shankar'

alter table employee alter column id int null
alter table employee alter column name varchar(255) null