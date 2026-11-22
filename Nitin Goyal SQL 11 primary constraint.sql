use tesla

insert into employee (name, age, gender, salary) values ('kushal', 40, 'Male', 95000)

select * from employee

insert into employee (name, age, gender, salary) values ('sandy', 41, 'Female', 97000)
delete from employee where name = 'sandy'

sp_help 'employee'
--*8888888

--Primary key

select * from employee

update employee set id = 22 where name = 'Kushal'

alter table employee alter column id int not null

alter table employee add constraint Pri_key Primary key(id)

sp_help 'employee'

alter table employee drop constraint Pri_key 

alter table employee alter column name varchar(255) not null

alter table employee add constraint Pri_name Primary key(name)

select * from employee

alter table employee drop constraint Pri_name

alter table employee add constraint Pri_key Primary key(id)